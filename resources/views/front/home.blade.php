@extends('front.layout')
@section('content')

  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: home -->
    <section id="home">

      <!-- Slider Revolution Start -->
      <div class="rev_slider_wrapper">
        <div class="rev_slider" data-version="5.0">
          <ul>
          {{-- @foreach ($sliders as $slider) --}}

          <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide 1" data-description="">
      
            <img src="{{asset("front/images/bg/1.jpg")}}"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="10" data-no-retina>
         
  
              <!-- LAYER NR. 1 -->
              <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway"
                id="rs-1-layer-1"
  
                data-x="['left']"
                data-hoffset="['30']"
                data-y="['middle']"
                data-voffset="['-110']"
                data-fontsize="['100']"
                data-lineheight="['110']"
                data-width="none"
                data-height="none"
                data-whitespace="nowrap"
                data-transform_idle="o:1;s:500"
                data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                data-start="1000"
                data-splitin="none"
                data-splitout="none"
                data-responsive_offset="on"
                style="z-index: 7; white-space: nowrap; font-weight:700;">{{ __('home.fixing_cars') }}
              </div>
  
              <!-- LAYER NR. 2 -->
              <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway bg-theme-colored-transparent border-left-theme-color-2-6px pl-20 pr-20"
                id="rs-1-layer-2"
  
                data-x="['left']"
                data-hoffset="['35']"
                data-y="['middle']"
                data-voffset="['-25']"
                data-fontsize="['35']"
                data-lineheight="['54']"
                data-width="none"
                data-height="none"
                data-whitespace="nowrap"
                data-transform_idle="o:1;s:500"
                data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                data-start="1000"
                data-splitin="none"
                data-splitout="none"
                data-responsive_offset="on"
                style="z-index: 7; white-space: nowrap; font-weight:600;">{{ __('home.Thebest_services') }}
              </div>
  
        </li>
        <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide 1" data-description="">
      
          <img src="{{asset("front/images/bg/2.jpg")}}"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="10" data-no-retina>
       

            <!-- LAYER NR. 1 -->
            <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway"
              id="rs-1-layer-1"

              data-x="['left']"
              data-hoffset="['30']"
              data-y="['middle']"
              data-voffset="['-110']"
              data-fontsize="['100']"
              data-lineheight="['110']"
              data-width="none"
              data-height="none"
              data-whitespace="nowrap"
              data-transform_idle="o:1;s:500"
              data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
              data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
              data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
              data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
              data-start="1000"
              data-splitin="none"
              data-splitout="none"
              data-responsive_offset="on"
              style="z-index: 7; white-space: nowrap; font-weight:700;">{{ __('home.fixing_cars') }}
            </div>

            <!-- LAYER NR. 2 -->
            <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway bg-theme-colored-transparent border-left-theme-color-2-6px pl-20 pr-20"
              id="rs-1-layer-2"

              data-x="['left']"
              data-hoffset="['35']"
              data-y="['middle']"
              data-voffset="['-25']"
              data-fontsize="['35']"
              data-lineheight="['54']"
              data-width="none"
              data-height="none"
              data-whitespace="nowrap"
              data-transform_idle="o:1;s:500"
              data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
              data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
              data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
              data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
              data-start="1000"
              data-splitin="none"
              data-splitout="none"
              data-responsive_offset="on"
              style="z-index: 7; white-space: nowrap; font-weight:600;">{{ __('home.Thebest_services') }}
            </div>

      </li>
      <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide 1" data-description="">
       
       
        <img src="{{asset("front/images/bg/3.jpg")}}"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="10" data-no-retina>
     
        <!-- LAYERS -->

          <!-- LAYER NR. 1 -->
          <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway"
            id="rs-1-layer-1"

            data-x="['left']"
            data-hoffset="['30']"
            data-y="['middle']"
            data-voffset="['-110']"
            data-fontsize="['100']"
            data-lineheight="['110']"
            data-width="none"
            data-height="none"
            data-whitespace="nowrap"
            data-transform_idle="o:1;s:500"
            data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
            data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
            data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
            data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
            data-start="1000"
            data-splitin="none"
            data-splitout="none"
            data-responsive_offset="on"
            style="z-index: 7; white-space: nowrap; font-weight:700;">{{ __('home.fixing_cars') }}
          </div>

          <!-- LAYER NR. 2 -->
          <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway bg-theme-colored-transparent border-left-theme-color-2-6px pl-20 pr-20"
            id="rs-1-layer-2"

            data-x="['left']"
            data-hoffset="['35']"
            data-y="['middle']"
            data-voffset="['-25']"
            data-fontsize="['35']"
            data-lineheight="['54']"
            data-width="none"
            data-height="none"
            data-whitespace="nowrap"
            data-transform_idle="o:1;s:500"
            data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
            data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
            data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
            data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
            data-start="1000"
            data-splitin="none"
            data-splitout="none"
            data-responsive_offset="on"
            style="z-index: 7; white-space: nowrap; font-weight:600;">{{ __('home.Thebest_services') }}
          </div>

    </li>
    <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide 1" data-description="">
    
      <img src="{{asset("front/images/bg/4.jpg")}}"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="10" data-no-retina>

      <!-- LAYERS -->

        <!-- LAYER NR. 1 -->
        <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway"
          id="rs-1-layer-1"

          data-x="['left']"
          data-hoffset="['30']"
          data-y="['middle']"
          data-voffset="['-110']"
          data-fontsize="['100']"
          data-lineheight="['110']"
          data-width="none"
          data-height="none"
          data-whitespace="nowrap"
          data-transform_idle="o:1;s:500"
          data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
          data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
          data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
          data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
          data-start="1000"
          data-splitin="none"
          data-splitout="none"
          data-responsive_offset="on"
          style="z-index: 7; white-space: nowrap; font-weight:700;">{{ __('home.fixing_cars') }}
        </div>

        <!-- LAYER NR. 2 -->
        <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway bg-theme-colored-transparent border-left-theme-color-2-6px pl-20 pr-20"
          id="rs-1-layer-2"

          data-x="['left']"
          data-hoffset="['35']"
          data-y="['middle']"
          data-voffset="['-25']"
          data-fontsize="['35']"
          data-lineheight="['54']"
          data-width="none"
          data-height="none"
          data-whitespace="nowrap"
          data-transform_idle="o:1;s:500"
          data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
          data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
          data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
          data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
          data-start="1000"
          data-splitin="none"
          data-splitout="none"
          data-responsive_offset="on"
          style="z-index: 7; white-space: nowrap; font-weight:600;">{{ __('home.Thebest_services') }}
        </div>

  </li>
  <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/bg/bg3.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide 1" data-description="">

    <img src="{{asset("front/images/bg/5.jpg")}}"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-bgparallax="10" data-no-retina>
 
    <!-- LAYERS -->

      <!-- LAYER NR. 1 -->
      <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway"
        id="rs-1-layer-1"

        data-x="['left']"
        data-hoffset="['30']"
        data-y="['middle']"
        data-voffset="['-110']"
        data-fontsize="['100']"
        data-lineheight="['110']"
        data-width="none"
        data-height="none"
        data-whitespace="nowrap"
        data-transform_idle="o:1;s:500"
        data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
        data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
        data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
        data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
        data-start="1000"
        data-splitin="none"
        data-splitout="none"
        data-responsive_offset="on"
        style="z-index: 7; white-space: nowrap; font-weight:700;">{{ __('home.fixing_cars') }}
      </div>

      <!-- LAYER NR. 2 -->
      <div class="tp-caption tp-resizeme text-uppercase text-white font-raleway bg-theme-colored-transparent border-left-theme-color-2-6px pl-20 pr-20"
        id="rs-1-layer-2"

        data-x="['left']"
        data-hoffset="['35']"
        data-y="['middle']"
        data-voffset="['-25']"
        data-fontsize="['35']"
        data-lineheight="['54']"
        data-width="none"
        data-height="none"
        data-whitespace="nowrap"
        data-transform_idle="o:1;s:500"
        data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
        data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
        data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
        data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
        data-start="1000"
        data-splitin="none"
        data-splitout="none"
        data-responsive_offset="on"
        style="z-index: 7; white-space: nowrap; font-weight:600;">{{ __('home.Thebest_services') }}
      </div>

</li>
   

          </ul>
        </div>
        <!-- end .rev_slider -->
      </div>



    </section>


    <!-- Section: Sevices -->
    <section>
      <div class="container">
        <div class="section-content">
          <div class="row">
            @foreach ($services as $service)

            <div class="col-sm-6 col-md-4 maxwidth500 mb-sm-0 wow fadeInUp" data-margin-top="-160px" data-wow-duration="1s" data-wow-delay="0.1s">
              @php
              
              $images = json_decode($service->service_img); 
            @endphp 

              <img class="img-fullwidth img border border-bottom-0" style="width:150px; height:200px" src="{{asset("storage/$images[0]")}}" alt="">
              <div class="bg-silver-light border-1px p-20 pt-0 pb-30">
              <h4 class="text-uppercase letter-space-1 mt-10">{{$service->getTranslatedAttribute('service_name',$lang)}}</h4>
              @php
                          
              $string =   strip_tags($service->getTranslatedAttribute('service_description',$lang));
              $images = json_decode($service->service_img); 
            @endphp 
                <p>{!!\Illuminate\Support\Str::limit($string,200,$end='...')!!}</p>
                <a class="btn btn-sm btn-theme-colored" href="{{ url("$lang/blogdetails/$service->id") }}">{{__('home.Read_more')}}</a>
              </div>
            </div>

            @endforeach
          </div>
        </div>
      </div>
    </section>

    <!-- Section: About -->

    <section id="about">

      <div class="container mt-0 pt-0">
        <div class="section-content">

          <div class="row mt-10">

            <div class="col-sm-12 col-md-6 mb-sm-20 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
              {{-- {!!  !!} --}}
              {!! \Illuminate\Support\Str::limit(setting("about.$lang"),500,$end='...') !!}
              <div class="row">
                {{-- @foreach ($services as $service)

                <div class="col-sm-4 col-md-4">
                  <img class="img-fullwidth mb-sm-30" src="{{asset("storage/$service->service_img")}} " alt="">
                </div>
                @endforeach
                  --}}
              </div>
              <a href="{{ url("$lang/about") }}" class="btn btn-colored btn-theme-colored btn-sm mt-20">{{__('home.Show_details')}}</a>
            </div>

            <div class="col-sm-12 col-md-6 mt-10 wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.5s">
              <div class="owl-carousel-2col">
                @foreach ($services as $service)

                <div class="item img">
                  <div class="box-hover-effect effect1 mb-sm-30">
                    @php
                        $images = json_decode($service->service_img); 
           
                        
                        @endphp
                    <div class="thumb"> <a href="#"><img class="img-fullwidth mb-20" style="width:100px; height:150px" src="{{asset("storage/$images[0]")}}" alt="..."></a> </div>
                    <div class="caption">
                      <h4 class="text-uppercase letter-space-1 mt-0 "><span class="text-theme-color-2">{{__('home.Our_service')}}: </span>{{$service->getTranslatedAttribute('service_name',$lang)}}</h4>
                      @php
                          
                        $string =   strip_tags($service->getTranslatedAttribute('service_description',$lang));

                      @endphp 
                      
                      <p>{!!\Illuminate\Support\Str::limit($string,200,$end='...')!!}</p>
                      <p><a class="btn btn-theme-colored btn-flat mt-10 btn-sm" role="button" href="{{ url("$lang/blogdetails/$service->id") }}">{{__('home.Read_more')}}</a></p>
                    </div>
                  </div>
                </div>
                @endforeach

             
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>

   <!-- Section: Services 1 -->
    <section id="services" class="bg-lighter">
      <div class="container">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-12">
              <h2 class="mt-0 line-height-1 text-center"> <span class="text-theme-color-2"> {{__('home.Our_service')}}</span></h2>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="owl-carousel-4col  our-services-gallery" data-dots="true">
                @foreach ($Allservice as $service)

              <div class="img">
                <div class="thumb">
                       @php
                        $images = json_decode($service->service_img); 
           
                        
                        @endphp
                  <img class="img-fullwidth"style="width:100px; height:200px" src="{{asset("storage/$images[0]")}}" alt="project">
                  <div class="overlay-shade"></div>
                  <div class="icons-holder">
                    <div class="icons-holder-inner">
                      <div class="styled-icons icon-sm icon-dark icon-circled icon-theme-colored">
                        <a data-lightbox="image" href="{{asset("storage/$service->service_img")}}"><i class="fa fa-plus"></i></a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="our-services-details">
                <h4 class="title mb-5 "><a href="#">{{$service->getTranslatedAttribute('service_name',$lang)}}</a></h4>
                  {{-- <span class="category">خدمه</span> --}}
                  {{-- <a href="{{ url("$lang/blogdetails/$service->id") }}" class="btn btn-theme-colored btn-flat mt-15 btn-sm" role="button">{{__('home.Read_more')}}</a> --}}
                  <p>
                  <a href="{{ url("$lang/blogdetails/$service->id") }}" class="btn btn-theme-colored btn-flat mt-15 btn-sm" role="button">{{__('home.Read_more')}}</a>
                  <span class="pull-right ml-10 mt-12 font-17 text-theme-colored">{{__('home.The_cost')}} {{$service->service_cost}} {{__('home.Pound')}}</span>
                  </p>
                </div>
              </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: tickets -->
    <section id="tickets"  data-stellar-background-ratio="0.5" data-bg-img="images/bg/bg3.jpg">
      <div class="container pb-50">
        <div class="section-title mb-30">
          <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
              <h2 class="mt-0 line-height-1 text-center mb-0 text-white"><span class="text-theme-color-2">{{__('home.Offers')}}</span></h2>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row equal-height-pricing-table">
            @foreach ($Offer as $offers )
              
            <div class="col-xs-12 col-sm-6 col-md-6 mb-30 wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
              <div class="pricing table-horizontal maxwidth400">
                
                <div class="row">
                  <div class="thumb">
                    @php
                    $images = json_decode($offers->service_img); 
          
                    
                    @endphp
            
                  
                   <a href="{{ url("$lang/blogdetails/$offers->id") }}"> <img class="img-fullwidth mb-sm-0" style="width:200px; height:300px"  src="{{asset("storage/$images[0]")}}" alt=""></a>
                    </div>
                  <div class="col-sm-6">
                    {{-- <div class="table-price text-white">{{ $offers->getTranslatedAttribute('price',$lang)}}{{__('home.Pound')}}</div> --}}
                   <a href="{{ url("$lang/blogdetails/$offers->id") }}"><h6 class="table-title text-white font-20">{{ $offers->getTranslatedAttribute('service_name',$lang)}}</h6></a>
                  </div>
               
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </section>


    <!-- Section: Project Start Form -->
    <section class="divider parallax layer-overlay overlay-dark-8" data-bg-img="images/bg/bg14.jpg" data-stellar-background-ratio="0.5">
      <div class="container-fluid pt-0 pb-0">
        <div class="row equal-height">
          <div class="col-md-6 bg-light wow fadeInRight sm-height-auto"  data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="p-70">
              <div class="row">
                <div class="col-md-10">
                  <h2 class="mt-0 line-height-1 "><span> {{__('home.Get_the')}} <span class="text-theme-color-2"> {{__('home.Service_now')}}</span></span></h2>
                  {{-- <p>وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم.</p> --}}
                 
                  <!-- Reservation Form Start-->
                  @auth('webcustomer')
                  @else
                <div class="alert alert-danger"> انت غير مسجل من فضلك <a class="widget-title alert-danger" href="{{url("$lang/log_in")}}">سجل دخولك الآن</a></div>
                  @endauth
                  
          <form  name="reservation_form" class="reservation-form" method="post" action="{{url('order')}}">
            @csrf  
        
            @auth('webcustomer')
          <input type="hidden" name="user_id" value="{{Auth::guard('webcustomer')->user()->id}}">
          @endauth
            <div class="row">
                <div class="col-sm-12">
                  <div class="form-group mb-30">
                    <input required required placeholder="{{__('home.Enter_name')}}" type="text" id="name" name="reservation_name"  class="form-control"  data-validate-type="email" data-validate-trigger="keyup">
                      <div id="nameerror" class="bg-danger" style="color: #911111;"></div>
                   
                    @error('reservation_name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group mb-30">
                    <input required placeholder="{{__('home.Email')}}" type="text" id="email" name="reservation_email" class="form-control" >
               <div id="emailerror" class="bg-danger" style="color: #911111;"></div>
                    
                    @error('reservation_email')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group mb-30">
                    <input required placeholder="{{__('home.Phone')}}" type="text" id="phone" name="reservation_phone" class="form-control" >
                 <div id="phoneerror" class="bg-danger" style="color: #911111;"></div>
                  
                    @error('reservation_phone')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group mb-30">
                    <div class="styled-select">
                      <select required id="car_type" name="car_select" class="form-control" >
                        <option value="">-{{__('home.Choose_your_car_model')}}-</option>
                        @foreach ($CarType as $car )

                        <option value="Toyota">{{ $car->getTranslatedAttribute('title',$lang) }}</option>

                        @endforeach
                       
                      </select>
            <div id="car_typeerror" class="bg-danger" style="color: #911111;"></div>

                      @error('car_select')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group mb-30">
                    <input  required placeholder="{{__('home.car_model')}}" type="text" id="car_model" name="car_model" class="form-control" >
            <div id="car_modelerror" class="bg-danger" style="color: #911111;"></div>
                   
                    @error('car_model')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
                <div class="col-sm-12">
                  <div class="form-group mb-30">
                    <input required id="date" name="reservation_date" class="form-control required date-picker" type="text" placeholder="{{__('home.Reservation_Date')}}" >
               <div id="dateerror" class="bg-danger" style="color: #911111;"></div>
                   
                    @error('reservation_date')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                </div>
              <div class="col-sm-12">
                <div class="form-group mb-30">
                  <textarea required name="massage" id="message" class="form-control" placeholder="{{__('home.Massage')}}" cols="30" rows="10"></textarea>
               <div id="messageerror" class="bg-danger" style="color: #911111;"></div>
                
                  @error('massage')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                  {{-- <input placeholder="Enter Name" type="text" id="reservation_name" name="reservation_name" required="" class="form-control"> --}}
                </div>
              </div>

                <div class="col-sm-12">
                  <div class="form-group mb-0 mt-0">
                    {{-- <input name="form_botcheck" class="form-control" type="hidden" value=""> --}}
                    <button type="submit" onclick="validateFormService();"class="btn btn-colored btn-theme-colored btn-lg btn-flat border-left-theme-color-2-4px" data-loading-text="Please wait...">{{__('home.send')}}</button>
                  </div>
                </div>
              </div>
            </form>
                  <!-- Reservation Form End-->

                  <!-- Reservation Form Validation Start-->
                
                  <!-- Reservation Form Validation Start -->
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6  wow fadeInLeft"  data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="p-70">
              <div class="row">
                @foreach ($ServiceAchieve as $achieve )
                    
               
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 mb-md-50 text-white mb-70">
                  <div class="funfact text-center">
                    <div class="funfact-content">
                      <div class="funfact-icon">
                       {{-- pe-7s-car --}}
                        <i class=" {!! $achieve->getTranslatedAttribute('icon',$lang) !!} mt-5"></i>
                      </div>
                      <h2 data-animation-duration="2000" data-value="{{$achieve->getTranslatedAttribute('count',$lang)}}" class="animate-number eeee mt-10">0</h2>
                      <h4 class="text-uppercase text-white"> {!! $achieve->getTranslatedAttribute('title',$lang) !!}</h4>
                      <p>{!! $achieve->getTranslatedAttribute('description',$lang) !!}</p>
                    </div>
                  </div>
                </div>
                 @endforeach
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!-- Section: Client Say -->
    <section class="divider parallax " data-background-ratio="0.5" data-bg-img="images/bg/bg9.jpg">
      <div class="container pt-60 pb-60">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase mt-0 pb-0  text-center text-white"><span class="text-theme-color-2">{{__('home.Sayings_Our_customers')}}</span></h2>
            <div class="owl-carousel-1col" data-dots="true">
              @foreach ($Testimonial as $testimon )
                  
              <div class="item">
                <div class="testimonial-wrapper text-center">
                  <div class="thumb"><img class="img-circle" alt="" src="{{asset("storage/$testimon->testimonial_user_img")}}"></div>
                  <div class="content pt-10">
                    <p class="font-15 text-white"><em>{!! $testimon->getTranslatedAttribute('testimonial_details',$lang) !!}</em></p>
                    <i class="fa fa-quote-right font-36 mt-10 text-gray-lightgray"></i>
                    <h4 class="author text-theme-color-2 mb-0">{{$testimon->getTranslatedAttribute('testimonial_name',$lang)}}</h4>
                    <h6 class="title text-white mt-0 mb-15">{{$testimon->getTranslatedAttribute('testimonial_job',$lang)}}</h6>
                  </div>
                </div>
              </div>
              @endforeach

          </div>
        </div>
      </div>
    </div>
    </section>

    <!-- Section: Blog -->
    {{-- <section>
      <div class="container pt-70">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="mt-0 line-height-1">أخر <span class="text-theme-color-2"> الأخبار </span></h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
              <div class="owl-carousel-3col owl-nav-top mb-sm-0" data-dots="true">
              <div class="item">
                <article class="post clearfix maxwidth600 mb-sm-30 wow fadeInRight" data-wow-delay=".2s">
                  <div class="entry-header">
                    <div class="post-thumb thumb"> <img src="images/blog/1.jpg" alt="" class="img-responsive img-fullwidth"> </div>
                    <div class="entry-meta meta-absolute text-center pl-15 pr-15">
                    <div class="display-table">
                      <div class="display-table-cell">
                        <ul>
                          <li><a class="text-white" href="#"><i class="fa fa-thumbs-o-up"></i> 265 <br> إعجاب</a></li>
                          <li class="mt-20"><a class="text-white" href="#"><i class="fa fa-comments-o"></i> 72 <br> تعليق</a></li>
                        </ul>
                      </div>
                    </div>
                    </div>
                  </div>
                  <div class="entry-content border-1px p-20">
                    <h4 class="entry-title mt-0 pt-0"><a href="#">الرسائل</a></h4>
                    <p class="text-left mb-20 mt-15 font-13">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت.</p>
                    <a class="btn btn-flat btn-dark btn-theme-colored btn-sm pull-left" href="blog-single-left-sidebar.html">إقرأ</a>
                    <ul class="list-inline entry-date pull-right font-12 mt-5">
                      <li><a class="text-theme-colored" href="#">الأدمن |</a></li>
                      <li><span class="text-theme-color-2">13 نوفمبر 2019</span></li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                </article>
              </div>
              <div class="item">
                <article class="post clearfix maxwidth600 mb-sm-30 wow fadeInRight" data-wow-delay=".4s">
                  <div class="entry-header">
                    <div class="post-thumb thumb"> <img src="images/blog/2.jpg" alt="" class="img-responsive img-fullwidth"> </div>
                    <div class="entry-meta meta-absolute text-center pl-15 pr-15">
                    <div class="display-table">
                      <div class="display-table-cell">
                        <ul>
                          <li><a class="text-white" href="#"><i class="fa fa-thumbs-o-up"></i> 265 <br>أعجاب</a></li>
                          <li class="mt-20"><a class="text-white" href="#"><i class="fa fa-comments-o"></i> 72 <br> تعليق</a></li>
                        </ul>
                      </div>
                    </div>
                    </div>
                  </div>
                  <div class="entry-content border-1px p-20">
                    <h4 class="entry-title mt-0 pt-0"><a href="#">رسائل</a></h4>
                    <p class="text-left mb-20 mt-15 font-13">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت.</p>
                    <a class="btn btn-flat btn-dark btn-theme-colored btn-sm pull-left" href="blog-single-left-sidebar.html">إقرأ أكثر</a>
                    <ul class="list-inline entry-date pull-right font-12 mt-5">
                      <li><a class="text-theme-colored" href="#">الأدمن |</a></li>
                      <li><span class="text-theme-color-2">13 نوغمبر 20198</span></li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                </article>
              </div>
              <div class="item">
                <article class="post clearfix maxwidth600 mb-sm-30 wow fadeInRight" data-wow-delay=".6s">
                  <div class="entry-header">
                    <div class="post-thumb thumb"> <img src="images/blog/3.jpg" alt="" class="img-responsive img-fullwidth"> </div>
                    <div class="entry-meta meta-absolute text-center pl-15 pr-15">
                    <div class="display-table">
                      <div class="display-table-cell">
                        <ul>
                          <li><a class="text-white" href="#"><i class="fa fa-thumbs-o-up"></i> 265 <br> إعجاب</a></li>
                          <li class="mt-20"><a class="text-white" href="#"><i class="fa fa-comments-o"></i> 72 <br> تعليق</a></li>
                        </ul>
                      </div>
                    </div>
                    </div>
                  </div>
                  <div class="entry-content border-1px p-20">
                    <h4 class="entry-title mt-0 pt-0"><a href="#">رسائل</a></h4>
                    <p class="text-left mb-20 mt-15 font-13">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت.</p>
                    <a class="btn btn-flat btn-dark btn-theme-colored btn-sm pull-left" href="blog-single-left-sidebar.html">إقرأ أكثر</a>
                    <ul class="list-inline entry-date pull-right font-12 mt-5">
                      <li><a class="text-theme-colored" href="#">الأدمن |</a></li>
                      <li><span class="text-theme-color-2">13 نوغمبر 20198</span></li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                </article>
              </div>
              <div class="item">
                <article class="post clearfix maxwidth600 mb-sm-30">
                  <div class="entry-header">
                    <div class="post-thumb thumb"> <img src="images/blog/2.jpg" alt="" class="img-responsive img-fullwidth"> </div>
                    <div class="entry-meta meta-absolute text-center pl-15 pr-15">
                    <div class="display-table">
                      <div class="display-table-cell">
                        <ul>
                          <li><a class="text-white" href="#"><i class="fa fa-thumbs-o-up"></i> 265 <br> اعجاب</a></li>
                          <li class="mt-20"><a class="text-white" href="#"><i class="fa fa-comments-o"></i> 72 <br> تعليق</a></li>
                        </ul>
                      </div>
                    </div>
                    </div>
                  </div>
                  <div class="entry-content border-1px p-20">
                   <h4 class="entry-title mt-0 pt-0"><a href="#">رسائل</a></h4>
                    <p class="text-left mb-20 mt-15 font-13">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت.</p>
                    <a class="btn btn-flat btn-dark btn-theme-colored btn-sm pull-left" href="blog-single-left-sidebar.html">إقرأ أكثر</a>
                    <ul class="list-inline entry-date pull-right font-12 mt-5">
                      <li><a class="text-theme-colored" href="#">الأدمن |</a></li>
                      <li><span class="text-theme-color-2">13 نوغمبر 20198</span></li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                </article>
              </div>
              <div class="item">
                <article class="post clearfix maxwidth600 mb-sm-30">
                  <div class="entry-header">
                    <div class="post-thumb thumb"> <img src="images/blog/3.jpg" alt="" class="img-responsive img-fullwidth"> </div>
                    <div class="entry-meta meta-absolute text-center pl-15 pr-15">
                    <div class="display-table">
                      <div class="display-table-cell">
                        <ul>
                          <li><a class="text-white" href="#"><i class="fa fa-thumbs-o-up"></i> 265 <br> اعجاب</a></li>
                          <li class="mt-20"><a class="text-white" href="#"><i class="fa fa-comments-o"></i> 72 <br> تعليق</a></li>
                        </ul>
                      </div>
                    </div>
                    </div>
                  </div>
                  <div class="entry-content border-1px p-20">
                     <h4 class="entry-title mt-0 pt-0"><a href="#">رسائل</a></h4>
                    <p class="text-left mb-20 mt-15 font-13">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت.</p>
                    <a class="btn btn-flat btn-dark btn-theme-colored btn-sm pull-left" href="blog-single-left-sidebar.html">إقرأ أكثر</a>
                    <ul class="list-inline entry-date pull-right font-12 mt-5">
                      <li><a class="text-theme-colored" href="#">الأدمن |</a></li>
                      <li><span class="text-theme-color-2">13 نوغمبر 20198</span></li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                </article>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> --}}

  </div>
  <!-- end main-content -->

@endsection
