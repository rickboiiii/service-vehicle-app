@extends('snippets.layout')
@section('content')


<div class="card my-2">
    <div class="card-body">
        <h5 class="card-title">{{ $sheet->number }}</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary">Date: {{ date('d.m.Y', strtotime($sheet->date)) }} <br> Mileage: {{ $sheet->mileage }}</h6>
        <p class="card-text">Customer states: <br> {{ $sheet->customer_states }}</p>
        <p class="card-text">Service request accepted by: {{ $sheet->relEmployee->first_name . ' ' . $sheet->relEmployee->last_name }}</p>
    </div>
</div>
@foreach($sheet->work_sheets as $work_sheet)
<div class="card my-2">
    <div class="row">
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">#{{ $work_sheet->number . ' - ' . $work_sheet->relServiceType->name }}</h5>
                <h6 class="card-subtitle mb-2 text-body-secondary">
                    Quantity: {{ $work_sheet->quantity }} <br>
                    Price: {{ $work_sheet->price . '$' }} <br>
                    Hours spent: {{ $work_sheet->hours_spent }}
                </h6>
                <p class="card-text">Employee states: <br> {{ $work_sheet->employee_states }}</p>
                <p class="card-text">Service completed by: {{ $work_sheet->relEmployee->first_name . ' ' . $work_sheet->relEmployee->last_name }}</p>
            </div>
        </div>
        <div class="col py-3 px-4">
            <h4>List of supplies</h4>
            @foreach($work_sheet->supply_sheets as $supply_sheet)
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">{{ $supply_sheet->relServiceItem->code . ' - ' . $supply_sheet->relServiceItem->name }}</h5>
                        <h6 class="card-subtitle mb-2 text-body-secondary">
                            Quantity: {{ $supply_sheet->quantity }} <br>
                            Price: {{ $supply_sheet->price . '$' }} <br>
                        </h6>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endforeach

@endsection
