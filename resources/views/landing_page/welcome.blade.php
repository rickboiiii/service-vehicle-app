@extends('snippets.layout')

@section('additional_buttons')
    <a href="#" class="text-white-50" title="Login as an employee"><i id="loginIcon" class="bi bi-door-closed"></i></a>
@endsection

@section('content')

    <div class="container p-5" style="background-color: rgba(0, 0, 0, 0.2);">

        @if(!empty($statistics['first']))
        <div class="col-md-12 my-5">
            <h3 class="text-center text-white-50 bg-dark bg-gradient p-2">Brands and types we serviced so far</h3>
            <table class="table table-secondary table-hover">
                <thead>
                <tr>
                    @foreach($statistics['first'][0] as $head => $value)
                        <th>{{ $head }}</th>
                    @endforeach
                </tr>
                </thead>
                <tbody>
                @foreach($statistics['first'] as $row)
                    <tr>
                        @foreach($row as $head => $value)
                            <td>{{ $value }}</td>
                        @endforeach
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        @endif

        @if(!empty($statistics['second']))
        <div class="col-md-12 my-5">
            <h3 class="text-center text-white-50 bg-dark bg-gradient p-2">Brands we serviced most compared with their mileage</h3>
            <table class="table table-secondary table-hover">
                <thead>
                <tr>
                    @foreach($statistics['second'][0] as $head => $value)
                        <th>{{ $head }}</th>
                    @endforeach
                </tr>
                </thead>
                <tbody>
                @foreach($statistics['second'] as $row)
                    <tr>
                        @foreach($row as $head => $value)
                            <td>{{ $value }}</td>
                        @endforeach
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        @endif
    </div>

@endsection

@section('scripts')
    <script>
        /* TODO: write as vanilla JS */
        $(document).ready(function () {
            $('#loginIcon').on('mouseenter', function () {
                $(this).addClass('bi-door-open');
                $(this).removeClass('bi-door-closed');
            }).on('mouseleave', function () {
                $(this).addClass('bi-door-closed');
                $(this).removeClass('bi-door-open');
            });
        });
    </script>
@endsection
