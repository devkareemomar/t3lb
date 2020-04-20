@extends('front.layout')
@section('content')



  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="{{asset('storage/img/bg6.jpg')}}">
      <div class="container pt-90 pb-50">
        <!-- Section Content -->
        <div class="section-content pt-100">
          <div class="row"> 
            <div class="col-md-12">
              <h3 class="title text-white text">{{__('home.Video')}}</h2>
            </div>
          </div>
        </div>
      </div>      
    </section>

    <section>
      <div class="container">
        <div class="row">
        
          @foreach ($video_tv as $tv )

          <div class="col-md-6" style="    margin-top: 15px;">
            <div class="featured-project-carousel">

              <div class="item">
                <iframe width="600" height="360"
                src="{{$tv->video_url}}" allowfullscreen>
                </iframe>
              </div>
            </div>
          </div>
          @endforeach
         

        </div>
      <br>
        {{-- <div class="row mt-30">
          <div class="col-md-12">
            <h4 class="mb-20">Recent Projects</h4>
            <div class="owl-carousel-6col">
                @foreach ($video_tv as $tv )
                    
              <div class="item"> 
                  <iframe width="600" height="360"
              src="{{$tv->video_url}}" allowfullscreen>
                </iframe>
            </div>
                @endforeach

            </div>
          </div>
        </div> --}}
      </div>
    </section>
  </div>
  <!-- end main-content -->
  


@endsection
