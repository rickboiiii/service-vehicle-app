<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleOwner extends Model
{
    use HasFactory;

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
}
