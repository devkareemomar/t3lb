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
              <h3 class="title text text-white">{{__('home.Our_branches')}}</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Section: Have Any Question -->
    
    
    <!-- Section Contact -->
    <section id="contact" class="divider bg-lighter">
      <div class="container-fluid pt-0 pb-0">
        <div class="section-content">
          <div class="row">
            {{-- <br> --}}
            @foreach ($OurBranch as $branch )

            <div class="col-sm-12 col-md-6 bg-img-center border_ourbranch bg-img-cover m-3" data-bg-img="images/bg/bg1.jpg">
                <br>

                <div class="section-content">
                    <div class="row">
                        

                      <div class="col-xs-6 col-sm-6 col-md-4">
                        <div class="contact-info text-center">
                          <i class="fa fa-phone font-36 mb-10 text-theme-colored"></i>
                          <h4>Call Us</h4>
                          <h6 class="text-gray">Phone: {{$branch->getTranslatedAttribute('phone',$lang)}}</h6>
                        </div>
                      </div>
                      <div class="col-xs-6 col-sm-6 col-md-4">
                        <div class="contact-info text-center">
                          <i class="fa fa-map-marker font-36 mb-10 text-theme-colored"></i>
                          <h4>Address</h4>
                          <h6 class="text-gray">{{$branch->getTranslatedAttribute('address',$lang)}}</h6>
                        </div>
                      </div>
                      <div class="col-xs-6 col-sm-6 col-md-4">
                        <div class="contact-info text-center">
                          <i class="fa fa-envelope font-36 mb-10 text-theme-colored"></i>
                          <h4>Email</h4>
                          <h6 class="text-gray">{{$branch->getTranslatedAttribute('email',$lang)}}</h6>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-6 col-sm-6 col-md-4">
                        <div class="contact-info text-center">
                          {{-- <i class="fa fa-phone font-36 mb-10 text-theme-colored"></i> --}}
                          <h4>{{__('home.Branch_name')}}</h4>
                          <h6 class="text-gray"> {{$branch->getTranslatedAttribute('name',$lang)}}</h6>
                        </div>
                      </div>
                      <div class="col-xs-6 col-sm-6 col-md-4">
                        <div class="contact-info text-center">
                     
                        <h4><a href="{{url("$lang/contact_the_branch")}}">{{__('home.Contact_the_branch')}}</a></h4>
                    
                        </div>
                      </div>
                    </div>
                  </div>
             <iframe src="{{$branch->url}}" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
  
              </div>
            @endforeach
             

          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
  

@endsection


