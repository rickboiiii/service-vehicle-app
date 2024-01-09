<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employment extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
        'employee_id',
        'position_id',
    ];

    protected $fillable = [
        'start_date',
        'end_date',
        'contract_number',
        'agreed_salary',
        'status',
    ];

    public $timestamps = false;
}
