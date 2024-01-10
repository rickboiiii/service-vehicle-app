<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker.min.css" integrity="sha512-34s5cpvaNG3BknEWSuOncX28vz97bRI59UnVtEEpFX536A7BtZSJHsDyFoCl8S7Dt2TPzcrCEoHBGeM4SUBDBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Vehicle Service</title>
</head>
<body style="{{ $bodyStyle ?? '' }}">

    @yield('modals')

    <div class="container py-3">
        <nav class="navbar navbar-expand-lg bg-dark bg-gradient mb-3">
            <div class="container-fluid">
                <a class="navbar-brand text-white-50" href="/">Vehicle Service</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-white-50 {{ (str_contains(\Illuminate\Support\Facades\Route::currentRouteName(), 'service-sheets')) ? 'active' : '' }}" aria-current="page" href="{{ route('service-sheets.index') }}">Service sheets</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white-50 {{ (str_contains(\Illuminate\Support\Facades\Route::currentRouteName(), 'vehicles')) ? 'active' : '' }}" href="{{ route('vehicles.index') }}">Vehicle registry</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white-50 {{ (str_contains(\Illuminate\Support\Facades\Route::currentRouteName(), 'reports')) ? 'active' : '' }}" href="{{ route('reports-page') }}">Reports</a>
                        </li>
                    </ul>
                </div>
                @yield('additional_buttons')
            </div>
        </nav>

        @yield('content')

    </div>

    @yield('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
