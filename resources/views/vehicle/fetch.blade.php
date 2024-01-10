@extends('snippets.layout')

@section('modals')
    @include('snippets.edit', ['data' => $data])
    @include('snippets.delete', ['id' => $vehicle->id])
@endsection

@section('additional_buttons')
    <button class="btn btn-warning mx-1" type="button" data-bs-toggle="modal" data-bs-target="#formEditModal">Edit <i class="bi-pen"></i></button>
    <button class="btn btn-danger mx-1" type="button" data-bs-toggle="modal" data-bs-target="#formDeleteModal">Delete <i class="bi-trash"></i></button>
@endsection

@section('content')

<div class="card my-2">
    <div class="row">
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">{{ $vehicle->vehicle_identification_number }}</h5>
                <h6 class="card-subtitle mb-2 text-body-secondary">Registration date: {{ date('d.m.Y', strtotime($vehicle->registration_date)) }} <br> Registration: {{ $vehicle->registration }}</h6>
                <h4 class="text-center">Owner info</h4>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">
                            {{ $vehicle->relOwner->first_name . ' ' . $vehicle->relOwner->maiden_name . ' ' . $vehicle->relOwner->last_name }}
                            <i class="{{ ($vehicle->relOwner->gender) ? 'bi-gender-male' : 'bi-gender-female' }}"></i></h5>
                        <h6 class="card-subtitle mb-2 text-body-secondary">
                            Date of birth: {{ date('d.m.Y', strtotime($vehicle->relOwner->date_of_birth)) }} <br>
                            Social Security Number: {{ $vehicle->relOwner->social_security_number }}</h6>
                        <p class="card-text">Address: {{ $vehicle->relOwner->address() }}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col py-3 px-4">
            <h4 class="text-center">Vehicle info</h4>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">{{ $vehicle->relVehicleBrand->name }} -- LOGO --</h5>
                    <h6 class="card-subtitle mb-2 text-body-secondary">{{ $vehicle->relVehicleType->type }} -- TYPE IMG --</h6>
                    <p class="card-text"><span style="border-bottom: 3px solid {{ $vehicle->color() }}; border-radius: 2px;">{{ strtoupper($vehicle->color()) }}</span> -- SHADE -- </p>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
