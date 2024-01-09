<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
        'brand_id',
        'color_id',
        'type_id',
        'owner_id',
    ];

    protected $fillable = [
        'num_wheels',
        'num_doors',
        'manufacture_date',
        'vehicle_identification_number',
        'registration',
        'registration_date',
    ];

    public $timestamps = false;
}
