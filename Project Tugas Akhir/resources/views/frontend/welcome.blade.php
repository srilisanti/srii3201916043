@extends('layouts.Frontend.app')
@section('title')
    MTS Negeri 01
@endsection

@section('content')
    
    {{-- Slider --}}
    @section('slider')
        @include('frontend.content.slider')
    @endsection

    {{-- About --}}
    @section('about')
        @include('frontend.content.about')
    @endsection


     {{-- Berita & Event --}}
     @section('beritaEvent')
        @include('frontend.content.beritaEvent')
    @endsection
@endsection