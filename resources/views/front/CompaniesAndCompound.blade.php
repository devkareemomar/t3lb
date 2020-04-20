@extends('front.layout')
@section('content')


<div class="main-content">

    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="{{asset('storage/img/bg6.jpg')}}">
      <div class="container pt-90 pb-50">
        <!-- Section Content -->
        <div class="section-content pt-100">
          <div class="row"> 
            <div class="col-md-12">
             @if($id == 1)
              
                  <h3 class="title text-white text">{{__('home.Companies_services')}}</h3>
              @elseif($id == 2)
                   <h3 class="title text-white text">{{__('home.Compound_services')}}</h3>

              @endif

            </div>
          </div>
        </div>
      </div>
    </section>
<br>
<div class="container">
    <div class="row">
      @if($id == 1)

              @foreach ($CompaniesAndCompound as $Companies_Compound )
              <p>{!! $Companies_Compound->getTranslatedAttribute('company',$lang) !!} </p>
              @endforeach

      @elseif($id == 2)

              @foreach ($CompaniesAndCompound as $Companies_Compound )
              <p>{!! $Companies_Compound->getTranslatedAttribute('compound',$lang) !!} </p>
              @endforeach

      @endif

    <p> </p>
    </div>
</div>




    
</div>



@endsection
