@extends('snippets.layout')

@section('content')

    <div class="card my-3">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="serviceItems">
                @foreach($services as $number => $service)
                <li class="nav-item service-item">
                    <a class="nav-link{{ ($number == 1) ? ' active' : '' }}" aria-current="true" href="#{{ strtolower(str_replace(' ', '_', $service)) }}">{{ $service }}</a>
                </li>
                @endforeach
            </ul>
        </div>
    @foreach($services as $number => $service)
        <div class="card-body{{ ($number == 1) ? ' active' : ' d-none' }}" id="{{ strtolower(str_replace(' ', '_', $service)) }}">
            <div class="card">
                <svg class="bd-placeholder-img bd-placeholder-img-lg card-img" width="100%" height="270" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Card image" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Card image</text></svg>
                <div class="card-img-overlay {{ ($number % 2) ? '' : 'text-end' }}">
                    <h5 class="card-title">{{ $service }}</h5>
                    <p class="card-text">-- Description goes here --</p>
                    <a href="#" class="btn btn-outline-secondary">-- Get an appointment date goes here --</a>
                </div>
            </div>
        </div>
    @endforeach
    </div>

@endsection

@section('scripts')
<script>
    /* TODO: write as vanilla JS */
    $(document).ready(function () {
        $('.service-item').on('click', function () {
            let lastActiveNavLink = $('#serviceItems').find('.service-item .nav-link.active');
            let navLink = $(this).find('.nav-link');
            let navLinkBody = $(navLink.attr('href'));
            let lastActiveNavLinkBody = $(lastActiveNavLink.attr('href'));

            navLink.addClass('active');
            lastActiveNavLink.removeClass('active');

            navLinkBody.addClass('active');

            lastActiveNavLinkBody.addClass('d-none');
            navLinkBody.removeClass('d-none');
        });

    });
</script>
@endsection
