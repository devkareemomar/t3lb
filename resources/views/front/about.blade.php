@extends('front.layout')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-9 m-auto">
            {!! setting("about.$lang") !!}
        </div>
    </div>
</div>

@endsection
