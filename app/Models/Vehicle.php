<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Vehicle extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
    ];

    protected $fillable = [
        'brand_id',
        'color_id',
        'type_id',
        'num_wheels',
        'num_doors',
        'manufacture_date',
        'vehicle_identification_number',
        'owner_id',
        'registration',
        'registration_date',
    ];

    public $timestamps = false;

    public function color() {
        return DB::table('colors')->select('name')->where('id', $this->color_id)->first()->name;
    }

    public function relVehicleBrand() {
        return $this->hasOne(VehicleBrand::class, 'id', 'brand_id');
    }

    public function relVehicleType() {
        return $this->hasOne(VehicleType::class, 'id', 'type_id');
    }

    public function relOwner() {
        return $this->hasOne(VehicleOwner::class, 'id', 'owner_id');
    }
}
