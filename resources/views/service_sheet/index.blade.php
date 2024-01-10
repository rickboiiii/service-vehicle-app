@extends('snippets.layout')
@section('content')

<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Customer name</th>
        <th scope="col">Date</th>
        <th scope="col">Mileage</th>
        <th scope="col">Customer states</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
        @foreach ($sheets as $sheet)
            <tr>
                <td>{{ $sheet->number }}</td>
                <td>{{ $sheet->customer_name }}</td>
                <td>{{ date('d.m.Y', strtotime($sheet->date)) }}</td>
                <td>{{ $sheet->mileage }}</td>
                <td>{{ $sheet->customer_states }}</td>
                <td>
                    <a href="{{ route('service-sheets.fetch', [ 'id' => $sheet->id ]) }}" class="btn btn-outline-primary">
                        <i class="bi-arrow-right"></i>
                    </a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

@endsection
