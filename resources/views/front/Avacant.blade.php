@extends('front.layout')
@section('content')



  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    {{-- @foreach ($Favorite as $fav ) --}}
        
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="{{asset('storage/img/bg6.jpg')}}">
      <div class="container pt-90 pb-50">
        <!-- Section Content -->
        <div class="section-content pt-100">
          <div class="row"> 
            <div class="col-md-12">
              <h3 class="title text-white text">{{__('home.Avacant_look')}}</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
    {{-- @endforeach --}}

    <!-- Section: Gallery -->
    <div class="container">
      <div class="row">
          {{-- <div class="col-md-12 m-auto"> --}}
            <h2>الوظائف المطلوبه</h2>
            <div class="row">
              @foreach ($Vacancies as $vacancy )
                  
              <div class="col-md-3 jpbs" >
                <a href="{{ url("$lang/Avacanttitle/$vacancy->id") }}">{{ $vacancy->getTranslatedAttribute('title',$lang) }}</a>
              </div>
              @endforeach
         
            </div>

          {{-- </div>  --}}
      </div>
  </div>
    {{-- <section id="gallery">
     <div class="container pt-50 pb-30">
        <div class="section-content">
        <div class="row">
          <div class="col-md-12">
            
            <!-- Portfolio Gallery Grid -->
            <div id="grid" class="gallery-isotope grid-3 gutter clearfix">

              <!-- Portfolio Item Start -->
             <p> مدير لمركز خدمة صيانة السيارات خبرة فى مجال صيانة السيارات.</p>
             <p>مهندس ورشة</p>
             <p>مهندس استقبال</p>
             <p> فنى ميكانيكا محرك وعفشة</p>
             <p> فنى كهرباء وتكييف سيارات</p>
             <p> مساعد كهرباءى سيارات</p>
             <p> سمكرى سيارات</p>
             <p> مساعد سمكرى</p>
              <p> فنى دهان سيارات</p>
              <p> مساعد دهان سيارات</p>
              <p> متخصص نانو سيراميك</p>
              <p> فنى اصلاح كاوتشوك</p>
              <p>  سائق محترف لاستلام وتسليم السيارات</p>

              <!-- Portfolio Item End -->

            </div>
            <!-- End Portfolio Gallery Grid -->
          </div>
        </div>
        </div>
      </div >
    </section> --}}

  </div>
  <!-- end main-content -->
  
{{-- 
  <p>مهندس ورشة</p>
  <p>مهندس استقبال</p>
  <p> فنى ميكانيكا محرك وعفشة</p>
  <p> فنى كهرباء وتكييف سيارات</p>
  <p> مساعد كهرباءى سيارات</p>
  <p> سمكرى سيارات</p>
  <p> مساعد سمكرى</p>
   <p> فنى دهان سيارات</p>
   <p> مساعد دهان سيارات</p>
   <p> متخصص نانو سيراميك</p>
   <p> فنى اصلاح كاوتشوك</p>
   <p>  سائق محترف لاستلام وتسليم السيارات</p> --}}
@endsection
