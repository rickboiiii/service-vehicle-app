<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceSheet extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
        'employee_id',
        'vehicle_id',
    ];

    protected $fillable = [
        'customer_name',
        'date',
        'mileage',
        'customer_states',
    ];

    public $timestamps = false;
}
