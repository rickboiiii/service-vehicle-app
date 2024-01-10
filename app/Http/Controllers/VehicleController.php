<?php

namespace App\Http\Controllers;

use App\Models\Vehicle;
use Illuminate\Http\Request;

class VehicleController extends Controller
{
    protected string $route = 'vehicle.';

    public function index() {
        $vehicles = Vehicle::all();

        return view($this->route . 'index', [
            'vehicles' => $vehicles,
        ]);
    }

    public function fetch($id) {
        $vehicle = Vehicle::find($id);

        return view($this->route . 'fetch', [
            'vehicle' => $vehicle,
        ]);
    }
}
