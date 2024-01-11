<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker.min.css" integrity="sha512-34s5cpvaNG3BknEWSuOncX28vz97bRI59UnVtEEpFX536A7BtZSJHsDyFoCl8S7Dt2TPzcrCEoHBGeM4SUBDBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
    <style>
        /* TODO: write as scss file */
        html {
            min-height: 100%;
        }
        body {
            font-family: Merriweather, serif;
            height: 100%;
            margin: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background: rgb(240,240,240);
            background: linear-gradient(180deg, rgba(240,240,240,1) 50%, rgb(190 190 190) 100%);
        }
        nav {
            max-height: 3rem;
        }
        nav .nav-item {
            font-size: small !important;
            margin-top: .75rem;
        }
        nav .nav-item :hover {
            color: white !important;
            border-bottom: 2px solid white;
            padding-bottom: calc(var(--bs-nav-link-padding-y) - 2px);
        }
    </style>
    <title>{{ $pageTitle ?? 'tuneUp - Vehicle Service, Car repair, Tune shop - All your vehicle service needs' }}</title>
</head>
<body style="{{ $bodyStyle ?? '' }}">

    @yield('modals')

    <div class="container pb-3">
        <nav class="navbar navbar-expand-lg bg-dark bg-gradient mb-3">
            <div class="container-fluid">
                <a class="navbar-brand text-white-50" href="/" title="tuneUp - Vehicle Service, Car repair, Tune shop - All your vehicle service needs">-- tuneUp LOGO --</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-white-50 {{ (str_contains(\Illuminate\Support\Facades\Route::currentRouteName(), 'service-sheets')) ? 'active' : '' }}" title="List of all service sheets in the system" aria-current="page" href="{{ route('service-sheets.index') }}">{{ strtoupper('Service sheets') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white-50 {{ (str_contains(\Illuminate\Support\Facades\Route::currentRouteName(), 'vehicles')) ? 'active' : '' }}" title="List of all serviced vehicles to this date" href="{{ route('vehicles.index') }}">{{ strtoupper('Vehicle registry') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white-50 {{ (str_contains(\Illuminate\Support\Facades\Route::currentRouteName(), 'reports')) ? 'active' : '' }}" title="Useful system reports regarding employees, vehicles etc." href="{{ route('reports-page') }}">{{ strtoupper('Reports') }}</a>
                        </li>
                    </ul>
                </div>
                @yield('additional_buttons')
            </div>
        </nav>

        @yield('content')

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    @yield('scripts')
</body>
</html>
