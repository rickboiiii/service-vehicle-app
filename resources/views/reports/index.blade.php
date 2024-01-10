@extends('snippets.layout')

@section('content')

    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Filters</h5>
                    <h6 class="card-subtitle mb-2 text-body-secondary">Choose dates and a report</h6>
                    <form action="/reports" method="GET">
                        <div class="input-group flex-nowrap mb-3">
                            <span class="input-group-text" id="addon-wrapping">Date from</span>
                            <input type="text" name="date_from" class="form-control datepicker" data-provide="datepicker" value="{{ $_REQUEST['date_from'] ?? '' }}" data-date-format="dd.mm.yyyy" placeholder="dd.mm.YYYY" aria-label="Manufacture date" aria-describedby="addon-wrapping">
                        </div>
                        <div class="input-group flex-nowrap mb-3">
                            <span class="input-group-text" id="addon-wrapping">Date to</span>
                            <input type="text" name="date_to" class="form-control datepicker" data-provide="datepicker" value="{{ $_REQUEST['date_to'] ?? '' }}" data-date-format="dd.mm.yyyy" placeholder="dd.mm.YYYY" aria-label="Manufacture date" aria-describedby="addon-wrapping">
                        </div>
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="reportSelect">Reports</label>
                            <select class="form-select" id="reportSelect" name="report">
                                <option {{ isset($_REQUEST['report']) ? 'selected' : '' }}>Choose...</option>
                                <option value="1" {{ (isset($_REQUEST['report']) and $_REQUEST['report'] == 1) ? 'selected' : '' }}>Accepted service jobs by employee(Quantity)</option>
                                <option value="2" {{ (isset($_REQUEST['report']) and $_REQUEST['report'] == 2) ? 'selected' : '' }}>Spent hours/completed work by position</option>
                                <option value="3" {{ (isset($_REQUEST['report']) and $_REQUEST['report'] == 3) ? 'selected' : '' }}>Serviced vehicle profit by type</option>
                                <option value="4" {{ (isset($_REQUEST['report']) and $_REQUEST['report'] == 4) ? 'selected' : '' }}>Used service items list by price</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-outline-primary">Filter<i class="bi-filter"></i></button>
                        @if(!empty($_REQUEST))
                        <a href="/reports" class="btn btn-outline-secondary">Reset filters</a>
                        @endif
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            @if(empty($_REQUEST))
                <h3 class="text-center">Select dates and report type to display it here.</h3>
            @elseif(empty($report))
                <h3 class="text-center">Report not available for selected dates.</h3>
            @else
                <table class="table table-secondary table-hover">
                    <thead>
                    <tr>
                        @foreach($report[0] as $head => $value)
                            <th>{{ $head }}</th>
                        @endforeach
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($report as $row)
                        <tr>
                            @foreach($row as $head => $value)
                                <td>{{ $value }}</td>
                            @endforeach
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            @endif
        </div>
    </div>

@endsection
