@extends('layouts.backend.app')

@section('title')
    Dashboard
@endsection

@section('content')
    <div class="content-wrapper container-xxl p-0">
        <div class="content-body">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="card card-congratulations">
                        <div class="card-body text-center">
                            <img src="{{ asset('Assets/backend/images/pages/decore-left.png') }}"
                                class="congratulations-img-left" alt="card-img-left" />
                            <img src="{{ asset('Assets/backend/images/pages/decore-right.png') }}"
                                class="congratulations-img-right" alt="card-img-right" />
                            <div class="avatar avatar-xl bg-primary shadow">
                                <div class="avatar-content">
                                    <i data-feather="award" class="font-large-1"></i>
                                </div>
                            </div>
                            <div class="text-center">
                                <h1 class="mb-1 text-white">Welcome {{ Auth::user()->name }},</h1>
                                <p class="card-text m-auto w-75">
                                    Have fun your day :)
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
    </div>
@endsection
