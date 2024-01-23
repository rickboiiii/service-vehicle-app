<?php

namespace Tests\Feature;

use App\Models\Vehicle;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\Route;
use Tests\TestCase;

class BasicAppTest extends TestCase
{
    /**
     * A basic feature test if specified pages work.
     *
     * @return void
     */
    public function test_specified_pages_work()
    {
        $all_routes = [
            '/',
            '/reports',
            '/services',
            '/service_sheets',
            '/vehicles',
            '/vehicles/fetch-data',
        ];

        foreach ($all_routes as $uri) {
            $response = $this->get($uri);

            $response->assertStatus(200);
        }
    }

    /**
     * A basic feature test if json data is retrieved successfully.
     *
     * @return void
     */
    public function test_json_data_retrieve_successful() {
        $response = $this->get('/vehicles/fetch-data');

        foreach (json_decode($response->getOriginalContent()) as $item => $values)
            if(empty($values))
                $this->fail("[ $item ] is empty.");

        $this->assertTrue(true);
    }

    public function test_crud_vehicles() {
        $data = json_decode($this->get('/vehicles/fetch-data')->getOriginalContent());

        $create = $this->post('/vehicles', [
            'brand_id' => array_rand((array) $data->brands),
            'color_id' => array_rand((array) $data->colors),
            'type_id' => array_rand((array) $data->types),
            'manufacture_date' => date('y-m-d'),
            'vehicle_identification_number' => 'UNIT-TEST-VIN',
            'owner_id' => array_rand((array) $data->owners),
            'registration' => 'UNIT-TEST',
            'registration_date' => date('y-m-d'),
        ]);
        $create->assertStatus(200);

        $test_vehicle = Vehicle::where('registration', 'UNIT-TEST')
            ->where('vehicle_identification_number', 'UNIT-TEST-VIN')
            ->first();

        $read = $this->get("/vehicles/$test_vehicle->id");
        $read->assertStatus(200);

        $update = $this->post("/vehicles/$test_vehicle->id", [
            '_method' => 'PUT',
            'brand_id' => $test_vehicle->brand_id,
            'color_id' => array_rand((array) $data->colors),
            'type_id' => $test_vehicle->type_id,
            'manufacture_date' => $test_vehicle->manufacture_date,
            'vehicle_identification_number' => 'UNIT-TEST-VIN-u',
            'owner_id' => $test_vehicle->owner_id,
            'registration' => 'UNIT-TEST-u',
            'registration_date' => $test_vehicle->registration_date,
        ]);
        $update->assertStatus(200);

        $delete = $this->post("/vehicles/$test_vehicle->id", [
            '_method' => 'DELETE',
        ]);
        $delete->assertStatus(200);
    }

}
