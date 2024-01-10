<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkSheet extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
        'service_type_id',
        'employee_id',
        'service_sheet_id',
    ];

    protected $fillable = [
        'quantity',
        'price',
        'discount',
        'value',
        'hours_spent',
        'employee_states',
    ];

    public $timestamps = false;

    public function relEmployee() {
        return $this->hasOne(Employee::class, 'id', 'employee_id');
    }

    public function relServiceType() {
        return $this->hasOne(ServiceType::class, 'id', 'service_type_id');
    }
}
