<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupplySheet extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
        'service_item_id',
        'work_sheet_id',
    ];

    protected $fillable = [
        'number',
        'quantity',
        'price',
        'discount',
        'value',
    ];

    public $timestamps = false;

    public function relServiceItem() {
        return $this->hasOne(ServiceItem::class, 'id', 'service_item_id');
    }
}
