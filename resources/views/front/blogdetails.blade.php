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
            <h3 class="title text text-white">{{ $Firstoffers->getTranslatedAttribute('service_name',$lang) }} </h3>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Blog -->
    <section>
      <div class="container mt-30 mb-30 pt-30 pb-30">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <div class="blog-posts single-post">
              <article class="post clearfix mb-0">
                <div class="entry-header">
                  {{-- {{$images=$Firstoffers->service_img}} --}}
                  {{-- {{ $Firstoffers->service_img == 'array'}} --}}

                  {{-- @php $Firstoffers->service_img[] = $Firstoffers @endphp --}}

{{-- 
     <div class="row">
      <img class="img-fullwidth" alt="" src="{{asset("storage/$imag")}}">

    </div>
     --}}






     

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        @php
        $images = json_decode($Firstoffers->service_img); 

    
        @endphp
        @if($images != null)
        @foreach($images as $imag)
        <div class="item @if($images[0] == $imag) active @endif">
          <img src="{{asset("storage/$imag")}}" width="900px" height="900px" alt="Los Angeles">
        </div>
        @endforeach
        @endif
      </div>
    
      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    
    
                  {{-- @foreach($Firstoffers->service_img as $imag)  --}}
        
                                     
                      
                  
                  {{-- <div class="post-thumb thumb"> <img src="{{asset("storage/$imag")}}" alt="" class="img-responsive img-fullwidth"> </div> --}}
                  
                  {{-- @endforeach --}}
                  {{-- {{ implode(",", $Firstoffers) }} --}}

               
                        
                </div>  
                <div class="entry-title pt-10 pl-15">
                  <h4><a class="text-uppercase" href="#">{{ $Firstoffers->getTranslatedAttribute('service_name',$lang) }} </a></h4>
                </div>
                {{-- <div class="entry-meta pl-15">
                  <ul class="list-inline">
                    <li>Posted: <span class="text-theme-color-2"> 9/9/2015</span></li>
                    <li>By: <span class="text-theme-color-2">Admin</span></li>
                    <li><i class="fa fa-comments-o ml-5 mr-5"></i> 5 comments</li>
                  </ul>
                </div> --}}
                <div class="entry-content mt-10">
                  <p class="mb-15">{!! $Firstoffers->getTranslatedAttribute('service_description',$lang) !!}</p>
                <a class="btn btn-colored btn-theme-colored hvr-grow-shadow" href="{{url("$lang/show_service/$Firstoffers->service_name")}}">{{__('home.Get_the_service')}}</a>
					
				</div>
				
			  </article>

            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
  





   @endsection
