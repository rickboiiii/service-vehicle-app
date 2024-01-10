@extends('snippets.layout')
@section('content')

<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">Vehicle identification number</th>
        <th scope="col">Brand</th>
        <th scope="col">Color</th>
        <th scope="col">Type</th>
        <th scope="col">Manufacture date</th>
        <th scope="col">Owner</th>
        <th scope="col">Registration</th>
        <th scope="col">Registration date</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    @foreach ($vehicles as $vehicle)
        <tr>
            <td>{{ $vehicle->vehicle_identification_number }}</td>
            <td>{{ $vehicle->relVehicleBrand->name }}</td>
            <td><span style="border-bottom: 3px solid {{ $vehicle->color() }}; border-radius: 2px;">{{ strtoupper($vehicle->color()) }}</span></td>
            <td>{{ $vehicle->relVehicleType->type }}</td>
            <td>{{ date('d.m.Y', strtotime($vehicle->manufacture_date)) }}</td>
            <td>{{ $vehicle->relOwner->first_name . ' ' . $vehicle->relOwner->last_name }}</td>
            <td>{{ $vehicle->registration }}</td>
            <td>{{ date('d.m.Y', strtotime($vehicle->registration_date)) }}</td>
            <td>
                <a href="{{ route('vehicles.fetch', [ 'id' => $vehicle->id ]) }}" class="btn btn-outline-primary">
                    <i class="bi-arrow-right"></i>
                </a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>

@endsection
