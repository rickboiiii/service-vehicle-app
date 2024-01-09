<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
        'profile_thumbnail_id',
        'country_of_birth_id',
        'country_of_origin_id',
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
