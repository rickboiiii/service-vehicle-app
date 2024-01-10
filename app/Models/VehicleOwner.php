<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class VehicleOwner extends Model
{
    use HasFactory;

    protected $table = 'vehicle_owner';

    protected $guarded = [
        'id',
        'city_id',
        'country_id',
    ];

    protected $fillable = [
        'first_name',
        'maiden_name',
        'last_name',
        'date_of_birth',
        'social_security_number',
        'gender',
        'address',
    ];

    public $timestamps = false;

    public function address() {
        $city = DB::table('cities')->select('name')->where('id', $this->city_id)->first()->name;
        $country = DB::table('countries')->select('name')->where('id', $this->country_id)->first()->name;

        return $this->address . ', ' . $city . ', ' . $country;
    }
}
