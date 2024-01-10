<?php

namespace App\Http\Controllers;

use App\Models\Vehicle;
use App\Models\VehicleBrand;
use App\Models\VehicleOwner;
use App\Models\VehicleType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VehicleController extends Controller
{
    protected string $route = 'vehicle.';

    public function fetchData() {
        $brands = VehicleBrand::pluck('name', 'id');
        $types = VehicleType::pluck('type', 'id');
        $colors = DB::table('colors')->pluck('name', 'id');
        $owners = VehicleOwner::pluck('first_name', 'id');

        return json_encode([
            'brands' => $brands,
            'types' => $types,
            'colors' => $colors,
            'owners' => $owners,
        ]);
    }

    public function index() {
        $vehicles = Vehicle::all();

        return view($this->route . 'index', [
            'vehicles' => $vehicles,
            'data' => json_decode($this->fetchData()),
        ]);
    }

    public function save(Request $request) {
        try {

            Vehicle::create([
                'brand_id' => $request->brand_id,
                'color_id' => $request->color_id,
                'type_id' => $request->type_id,
                'manufacture_date' => date('y-m-d', strtotime($request->manufacture_date)),
                'vehicle_identification_number' => $request->vehicle_identification_number,
                'owner_id' => $request->owner_id,
                'registration' => $request->registration,
                'registration_date' => date('y-m-d', strtotime($request->registration_date)),
            ]);

            return $this->index();
        } catch (\Exception $e) {
            dd($e);
        }
    }

    public function fetch($id) {
        $vehicle = Vehicle::find($id);

        return view($this->route . 'fetch', [
            'vehicle' => $vehicle,
            'data' => json_decode($this->fetchData()),
        ]);
    }

    public function update(Request $request, $id) {
        try {

            $vehicle = Vehicle::find($id);

            $vehicle->update([
                'brand_id' => $request->brand_id,
                'color_id' => $request->color_id,
                'type_id' => $request->type_id,
                'manufacture_date' => date('y-m-d', strtotime($request->manufacture_date)),
                'vehicle_identification_number' => $request->vehicle_identification_number,
                'owner_id' => $request->owner_id,
                'registration' => $request->registration,
                'registration_date' => date('y-m-d', strtotime($request->registration_date)),
            ]);

            return $this->fetch($id);
        } catch (\Exception $e) {
            dd($e);
        }
    }

    public function delete($id) {
        try {

            Vehicle::where('id', $id)->delete();

            return $this->index();
        } catch (\Exception $e) {
            dd($e);
        }
    }
}
