<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceType extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
    ];

    protected $fillable = [
        'name',
        'unit_of_measurement',
    ];

    public $timestamps = false;

    public static function pluckNew(string $column) {

        $services = self::all();
        $plucked = [];
        $counter = 1;

        foreach ($services as $service) {
            $plucked[$counter++] = $service->name;
        }

        return $plucked;
    }
}
