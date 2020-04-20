@extends('front.layout')
@section('content')

<div class="main-content">

    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="{{asset('storage/img/bg6.jpg')}}">
      <div class="container pt-90 pb-50">
        <!-- Section Content -->
        <div class="section-content pt-100">
          <div class="row"> 
            <div class="col-md-12">
              <h3 class="title text-white text">{{ $Firstservice->getTranslatedAttribute('service_name',$lang) }}</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
<br>
<div class="container">
    <div class="row">
    <p> </p>
    </div>
</div>




    
</div>

@endsection
