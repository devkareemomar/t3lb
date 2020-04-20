<!DOCTYPE html>

<html dir="rtl" lang="ar">



<!-- Mirrored from html.kodesolution.live/m/repairshop/v3.1/demo/index-rtl-mp-layout1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Jan 2020 13:10:55 GMT -->
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="RepairShop | Car Repair & Car Wash HTML Template" />
<meta name="keywords" content="car,auto,moto,repair,wash,cleaning,transport,workshop" />
<meta name="author" content="ThemeMascot" />

<!-- Page Title -->
<title>{{__('home.El_T3lb')}}</title>

<!-- Favicon and Touch Icons -->
<link href="{{asset('front/images/FavICONSlogo.png')}}" rel="shortcut icon" type="image/png">
<link href="{{asset('front/images/apple-touch-icon.png')}}" rel="apple-touch-icon">
<link href="{{asset('front/images/apple-touch-icon-72x72.png')}}" rel="apple-touch-icon" sizes="72x72">
<link href="{{asset('front/images/apple-touch-icon-114x114.png')}}" rel="apple-touch-icon" sizes="114x114">
<link href="{{asset('front/images/apple-touch-icon-144x144.png')}}" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link rel="stylesheet" type="text/css" href="https://www.fontstatic.com/f=hanimation" />
<link href="{{asset('front/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('front/css/jquery-ui.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('front/css/animate.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('front/css/css-plugin-collections.css')}}" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link id="menuzord-menu-skins" href="{{asset('front/css/menuzord-skins/menuzord-rounded-boxed.css')}}" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="{{asset('front/css/style-main.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="{{asset('front/css/preloader.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="{{asset('front/css/custom-bootstrap-margin-padding.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="{{asset('front/css/responsive.css')}}" rel="stylesheet" type="text/css">
<!-- CSS | RTL Layout -->
@if($lang == 'ar')
<link href="{{asset('front/css/bootstrap-rtl.min.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('front/css/style-main-rtl.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('front/css/style-main-rtl-extra.css')}}" rel="stylesheet" type="text/css">

@else
<link href="{{asset('front/css/style-main.css')}}" rel="stylesheet" type="text/css">

@endif
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->
{{-- <link href="" rel="stylesheet" type="text/css"> --}}

<!-- Revolution Slider 5.x CSS settings -->
<link  href="{{asset('front/js/revolution-slider/css/settings.css')}}" rel="stylesheet" type="text/css"/>
<link  href="{{asset('front/js/revolution-slider/css/layers.css')}}" rel="stylesheet" type="text/css"/>
<link  href="{{asset('front/js/revolution-slider/css/navigation.css')}}" rel="stylesheet" type="text/css"/>

<!-- CSS | Theme Color -->
<link href="{{asset('front/css/colors/theme-skin-color-set-1.css')}}" rel="stylesheet" type="text/css">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->



</head>

@if ($lang == 'ar')
    <body class="rtl">

    @elseif($lang == 'en')
    <body class="ltr">

@endif
{{-- <body class="ltr"> --}}
  
<div id="wrapper" class="clearfix">

  <!-- preloader -->
  <div id="preloader">
    <div id="spinner">
      <img alt="" src="{{asset('front/images/preloaders/PRELOADER.gif')}}">

    </div>
   
    {{-- <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div> --}}
  </div>
 <!-- preloader -->

  <!-- Header -->
  <header id="header" class="header">
    <div class="header-top bg-theme-color-2 sm-text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="widget no-border m-0">
              <ul class="list-inline font-13 sm-text-center mt-5">
				   
                  @if($lang == "ar")
                    <li><a class="text-white" href="{{url('/en')}}">EN</a></li>

                  @else
                    <li><a class="text-white" href="{{url('/ar')}}">AR</a></li>
                  @endif
				   <li class="text-white">|</li>
                 <li>
                  <a class="text-white" href="{{url("$lang/register")}}">{{__('home.Register')}}</a>
                </li> 
                {{-- <li>
                  <a class="text-white" href="#">Help Desk</a>
                </li>
                <li class="text-white">|</li> 
                <li> --}}
                  {{-- @guest --}}
                  <li class="text-white">|</li>

                    {{-- @if (Auth::guard('webcustomer')) --}}
                   
                  
                   @auth('webcustomer')
                  <a class="text-white" href="{{url("$lang/logout")}}">{{__('home.Logout')}}</a>
                        
                    {{-- @endif --}}
                  @else
                    
                      <a class="text-white" href="{{url("$lang/log_in")}}">{{__('home.Login')}}</a>

                      @endauth
                      <li class="text-white">|</li>

                      <a class="text-white" href="{{url("$lang/clint")}}">{{__('home.My_order')}}</a>

                  {{-- @else      --}}
                  
                  {{-- @endguest --}}

                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-8">
            <div class="widget m-0 pull-right sm-pull-none sm-text-center">
              <ul class="list-inline pull-right">


              </ul>
            </div>
            <div class="widget no-border m-0 mr-15 pull-right flip sm-pull-none sm-text-center">
              <ul class="styled-icons icon-circled icon-sm pull-right flip sm-pull-none sm-text-center mt-sm-15">
                <li><a target="_blank" href="{{ setting("social.facebook") }}"><i class="fa fa-facebook text-white"></i></a></li>
                <li><a target="_blank" href="{{ setting("social.twitter") }}"><i class="fa fa-twitter text-white"></i></a></li>
                <li><a target="_blank" href="{{ setting("social.instagram") }}"><i class="fa fa-instagram text-white"></i></a></li>
                <li><a target="_blank" href="{{ setting("social.youtube") }}"><i class="fa fa-youtube text-white"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-middle p-0 bg-lightest xs-text-center">
      <div class="container pt-0 pb-0">
        <div class="row">
          <div class="col-xs-12 col-sm-3 col-md-6">
            <div class="widget no-border m-0">
              @if($lang == "ar")

              <a href="{{url("/ar")}}" class="menuzord-brand flip xs-pull-center mt-10 mb-10"><img alt="" src="{{asset("front/images/logo.png")}}"></a>
              @elseif($lang == "en")
              <a href="{{url("/en")}}" class="menuzord-brand flip xs-pull-center mt-10 mb-10"><img alt="" src="{{asset("front/images/T3labLogoEnSMALL.png")}}"></a>

              @endif

            </div>
          </div>

          @if($lang == "ar")

          <div class="col-xs-12 col-sm-3 col-md-d col-sm-offset-2  margnew">
            @elseif($lang == "en")
            <div class="col-xs-12 col-sm-3 col-md-2 col-sm-offset-2  margnew">

            @endif

            <div class="higenew widget no-border m-0 smnew">
              <div class=" mt-15 mb-10 text-right flip sm-text-center">
                <div class="font-15 text-black-333 mb-5 font-weight-600 "><i class="fa fa-envelope text-theme-colored font-18"></i> Mail Us Today</div>
                 <i class="font-12 text-gray">{!! setting("contact-us.email") !!}</i>
              </div>  
            </div>
          </div>
          @if($lang == "ar")

          <div class="col-xs-12 col-sm-3 col-md-2 margnew ">
            @elseif($lang == "en")
            <div class="col-xs-12 col-sm-3 col-md-en margnew ">

            @endif
            <div class="higenew widget no-border m-0 smnew ">
              <div class="mt-15 mb-10 text-right flip sm-text-center">
                <div class="font-15 text-black-333 mb-5 font-weight-600"><i class="fa fa-phone-square text-theme-colored font-18"></i> {!! setting("contact-us.phone") !!}</div>
                <a href="#" class="font-12 text-gray"> Call us for more details</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-nav">
      <div class="header-nav-wrapper navbar-scrolltofixed bg-theme-colored border-bottom-theme-color-2-1px">
        <div class="container">
          <nav id="menuzord" class="menuzord bg-theme-colored pull-left flip menuzord-responsive">
            <ul class="menuzord-menu">
            <li class="active ml-20"><a href="{{ url("$lang") }}">{{__('home.home')}}</a>


              </li>
   

              <li><a href="#home">{{__('home.Our_service')}}</a>
                  
                <ul class="dropdown">
                  <div>

                    @foreach ($Allservice as $service )
    {{-- <a href="#" class="btn btn-default btn-theme-colored btn-sm">Read More</a> --}}
                        
                        <li><a href="{{ url("$lang/blogdetails/$service->id") }}"class="btn btn-default size btnhover">{{$service->getTranslatedAttribute('service_name',$lang)}}</a></li>
                  @endforeach
              
                </div>

                </ul>
                
              </li>

		
				<li><a href="{{ url("$lang/our_branches") }}">{{__('home.Our_branches')}}</a></li>

        
					{{-- <li><a href="{{ url("$lang/galleries") }}">{{__('home.Gallery')}}</a>
					<!--<ul class="dropdown">
						<li><a href="page-gallery-4col.html">3 أعمدة</a></li>
					</ul>-->
				</li> --}}

				<li><a href="{{ url("$lang/video_tv") }}">{{__('home.Elt3lb_tv')}}</a>
				<!--<ul class="dropdown">
					 <li><a href="shortcode-media-embed.html"><i class="fa fa-play-circle-o"></i> الوسائط المتضمنه</a></li>
					</ul>-->
				</li>

				
        <li><a>{{__('home.Jobs')}}</a>
                  
          <ul class="dropdown">
            <div>

              <li><a href="{{ url("$lang/Avacant") }}"class="btn btn-default size btnhover"> {{__('home.Avacant_look')}} </a></li>
              <li><a href="{{ url("$lang/career") }}"class="btn btn-default size btnhover">{{__('home.Apply_Your_order')}}</a></li>

          </div>

          </ul>
          
        </li>
				<li><a href="{{ url("$lang/company_compound/1") }}">{{__('home.Companies_services')}}</a>
					<!--<ul class="dropdown">
						<li><a href="page-about-style1.html">ستايل 1</a></li>
					</ul>-->
				</li>
        <li><a href="{{ url("$lang/company_compound/2") }}">{{__('home.Compound_services')}}</a>
					<!--<ul class="dropdown">
						<li><a href="page-about-style1.html">ستايل 1</a></li>
					</ul>-->
				</li>
				<li><a href="{{ url("$lang/contact_us") }}">{{__('home.Contact_us')}}</a>
					<!--<ul class="dropdown">
						  <li><a href="page-contact-style3.html">ستايل 3</a></li>
					</ul>-->
        



              {{-- <li><a class="btn btn-colored btn-flat bg-theme-color-2 text-white font-14 bs-modal-ajax-load mr-90 mt-0 p-12 pr-15 pl-15" >{{__('home.Book_now')}}</a>
                <ul class="dropdown">
                  <div>
                  </div>
                </ul>
              </li> --}}
              @if($lang == 'ar')
              <li class="btn btn-colored btn-flat bg-theme-color-3 book_now"><a href="#home"  class="btn_book_now">{{__('home.Registration')}}</a>

              @elseif($lang == 'en')
              <li class="btn btn-colored btn-flat bg-theme-color-4 book_now"><a href="#home"  class="btn_book_now">{{__('home.Registration')}}</a>

              @endif

                  
                <ul class="dropdown">
                  <div>

                    <li ><a href="{{ url("$lang/book/1") }}" class="btn btn-default size btnhover">{{__('home.Street_customer')}}</a></li>
                    <li><a href="{{ url("$lang/book/2") }}"class="btn btn-default size btnhover ">{{__('home.Company_customer')}}</a></li>
                    <li><a href="{{ url("$lang/book/3") }}"class="btn btn-default size btnhover ">{{__('home.Compound_customer')}}</a></li>
              
                </div>

                </ul>
                
              </li>

              
        </ul>       
       
       

            <div id="top-search-bar" class="collapse">
              <div class="container">
                <form role="search" action="#" class="search_form_top" method="get">
                  <input type="text" placeholder="Type text and press Enter..." name="s" class="form-control" autocomplete="off">
                  <span class="search-close"><i class="fa fa-search"></i></span>
                </form>
              </div>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>


  @yield('content')

  <!-- Footer -->
  <footer id="footer" class="footer divider layer-overlay overlay-dark-8" data-bg-img="images/bg/bg6.jpg">
    <div class="container pt-70 pb-40">
      <div class="row border-bottom">
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
			  <img class="mt-5 mb-20" alt="" src="images/Asset 1 (1).png">
            <!--<img class="mt-5 mb-20" alt="" src="images/logo-white-footer.png">-->
           <h3 class="widget-title ">{{__('home.communications_channels')}}</h3>
            <ul class="list-inline mt-5">
              <li class="m-0 pl-10 pr-10 widget-title"> <i class="fa fa-phone text-theme-color-2 mr-5"></i class="text-gray" >  {!! setting("contact-us.phone") !!} </li>
              <li class="m-0 pl-10 pr-10 widget-title"> <i class="fa fa-envelope-o text-theme-color-2 mr-5"></i class="text-gray" > {!! setting("contact-us.email") !!}  </li>
              <li class="m-0 pl-10 pr-10 widget-title"> <i class="fa fa-globe text-theme-color-2 mr-5"></i> <a class="widget-title" target="_blank" href="{!! setting("contact-us.website") !!}"> {!! setting("contact-us.website") !!}  </a> </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h3 class="widget-title line-bottom-theme-colored-2">{{__('home.address')}}</h3>
            <ul class="list angle-double-right list-border">
              <li class="widget-title">{!! setting("contact-us.address_en") !!}</li>
              
            </ul>
          </div>
        </div>
       
        <div class="col-sm-6 col-sm-3 ">
          <div class="widget dark">
            <h3 class="widget-title line-bottom-theme-colored-2">{{__('home.Services')}}</h3>
              <ul class="list list-border">
              
                <li class="clearfix widget-title">{{__('home.Electricity')}}</li>
                <li class="clearfix widget-title">{{__('home.Mechanics')}}</li>
                <li class="clearfix widget-title">{{__('home.Plumbing')}}</li>
                <li class="clearfix widget-title">{{__('home.Paint')}}</li>
              </ul>
            
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h3 class="widget-title line-bottom-theme-colored-2">{{__('home.Worktime')}}</h3>
            <div class="opening-hours">
              <ul class="list-border">
                @if($lang == 'ar')
                <li class="clearfix widget-title"> <span>{!! setting("contact-us.opening_ar") !!}</span>
                  {{-- <div class="value pull-right"> 6.00 am - 10.00 pm </div> --}}
                </li>
                @elseif($lang == 'en')
                <li class="clearfix widget-title"> <span>{!! setting("contact-us.opening_en") !!}</span>
                  {{-- <div class="value pull-right"> 6.00 am - 10.00 pm </div> --}}
                </li>
                @endif
             
              </ul>
            </div>
          </div>
        </div> 
      </div>
      <div class="row mt-30">
        <div class="col-md-2">
          <div class="widget dark">
            <h4 class="widget-title mb-10">{{__('home.Contact_us')}}</h4>
            <div class="widget-title">
              {!! setting("contact-us.phone") !!}        
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="widget dark">
            {{-- <h5 class="widget-title mb-10">{{__('home.address')}}</h5> --}}
            <ul class="styled-icons icon-bordered icon-sm m-b">
              <li><a target="_blank" href="{{ setting("social.facebook") }}"><i class="fa fa-facebook"></i></a></li>
              <li><a target="_blank" href="{{ setting("social.twitter") }}"><i class="fa fa-twitter"></i></a></li>
              <li><a target="_blank"  href="{{ setting("social.youtube") }}"><i class="fa fa-youtube"></i></a></li>
              <li><a target="_blank" href="{{ setting("social.instagram") }}"><i class="fa fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-5 col-md-offset-r">
          <div class="widget dark">
            <h4 class="widget-title mb-10">{{__('home.Subscribe_with_us')}}</h4>
            <!-- Mailchimp Subscription Form Starts Here -->
            <form id="mailchimp-subscription-form-footer" class="newsletter-form">
              <div class="input-group">
                <input type="email" value="" name="EMAIL" placeholder="{{__('home.Email')}}" class="form-control input-lg font-16" data-height="45px" id="mce-EMAIL-footer">
                <span class="input-group-btn">
                  <button data-height="45px" class="btn bg-theme-color-2 text-white btn-xs m-0 font-14" type="submit">{{__('home.Subscribe')}}</button>
                </span>
              </div>
            </form>
            <!-- Mailchimp Subscription Form Validation-->
            <script type="text/javascript">

function validateForm() {
    // Retrieving the values of form elements
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var address = document.getElementById("message").value;

    // var car_type = document.getElementById("car_type").value;
    // var car_model = document.getElementById("car_model").value;
    // var car_select = document.getElementById("car_select").value;
    // var Note = document.getElementById("Note").value;
    

	// Defining error variables with a default value
    var nameErr = emailErr = mobileErr = countryErr = genderErr = true;

    // Validate name
    if(name == "") {
        document.getElementById("nameerror").innerText = "Please enter your name";
    }

    if(email == "") {
      document.getElementById("emailerror").innerText = "Please enter your email";
    } 

    // Validate mobile number
    if(phone == "") {
      document.getElementById("phoneerror").innerText = "Please enter your phone";
    } 

    // Validate country
    if(address == "") {
      document.getElementById("messageerror").innerText = "Please enter your message";
    } 
    // if(car_type == "") {
    //   document.getElementById("car_typeerror").innerText = "Please enter your car type";
    // } 
    // if(car_model == "") {
    //   document.getElementById("car_modelerror").innerText = "Please enter your car model";
    // } 
    // if(car_select == "") {
    //   document.getElementById("car_selecterror").innerText = "Please enter your car select";
    // } 
    //  if(Note == "") {
    //   document.getElementById("Noteerror").innerText = "Please enter your Note";
    // } 
};
function validateFormcareer() {
    // Retrieving the values of form elements
    var f_name = document.getElementById("f_name").value;
    var l_name = document.getElementById("l_name").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var type_job = document.getElementById("type_job").value;
    var qualification = document.getElementById("qualification").value;
    var address = document.getElementById("address").value;
    var cv = document.getElementById("cv").value;

	// Defining error variables with a default value
    var nameErr = emailErr = mobileErr = countryErr = genderErr = true;

    // Validate f_name
    if(f_name == "") {
        document.getElementById("f_nameerror").innerText = "Please enter your First name";
    }
      // Validate l_name
      if(l_name == "") {
        document.getElementById("l_nameerror").innerText = "Please enter your Last name";
    }

    if(email == "") {
      document.getElementById("emailerror").innerText = "Please enter your email";
    } 

      // Validate name
      if(phone == "") {
       document.getElementById("phoneerror").innerText = "Please enter your phone";
   }
     // Validate name
     if(type_job == "") {
       document.getElementById("type_joberror").innerText = "Please enter your type job";
   }
      // Validate name
      if(qualification == "") {
       document.getElementById("qualificationerror").innerText = "Please enter your qualification";
   }
     // Validate name
     if(address == "") {
       document.getElementById("addresserror").innerText = "Please enter your address";
   }
      // Validate name
      if(cv == "") {
       document.getElementById("cverror").innerText = "Please enter your CV";
   }
};
function validateFormRegister() {
    // Retrieving the values of form elements
    var f_name = document.getElementById("f_name").value;
    var l_name = document.getElementById("l_name").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var re_password = document.getElementById("re_password").value;

 
    

	// Defining error variables with a default value
    var nameErr = emailErr = mobileErr = countryErr = genderErr = true;

    // Validate f_name
    if(f_name == "") {
        document.getElementById("f_nameerror").innerText = "Please enter your First name";
    }
      // Validate l_name
      if(l_name == "") {
        document.getElementById("l_nameerror").innerText = "Please enter your Last name";
    }

    if(email == "") {
      document.getElementById("emailerror").innerText = "Please enter your email";
    } 

    // Validate mobile number
    if(password == "") {
      document.getElementById("passworderror").innerText = "Please enter your password";
    } 

    // Validate country
    if(re_password == "") {
      document.getElementById("re_passworderror").innerText = "Please enter your Confirm password";
    } 
    
};
function validateFormLogin() {
    // Retrieving the values of form elements
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    

 
    

	// Defining error variables with a default value
    var nameErr = emailErr = mobileErr = countryErr = genderErr = true;

 
    // Validate email

    if(email == "") {
      document.getElementById("emailerror").innerText = "Please enter your email";
    } 

    // Validate password
    if(password == "") {
      document.getElementById("passworderror").innerText = "Please enter your password";
    } 

    
};
function validateFormBook() {
   
    var name = document.getElementById("name").value;
    var car_type = document.getElementById("car_type").value;
    var car_model = document.getElementById("car_model").value;
    var car_select = document.getElementById("car_select").value;
    var Note = document.getElementById("Note").value;
    

    var nameErr = emailErr = mobileErr = countryErr = genderErr = true;

    // Validate name
    if(name == "") {
        document.getElementById("nameerror").innerText = "Please enter your name";
    }

  // Validate car_type
    if(car_type == "") {
      document.getElementById("car_typeerror").innerText = "Please enter your car type";
    } 

      // Validate car_model
    if(car_model == "") {
      document.getElementById("car_modelerror").innerText = "Please enter your car model";
    } 

      // Validate car_select
    if(car_select == "") {
      document.getElementById("car_selecterror").innerText = "Please enter your car select";
    } 

      // Validate Note
     if(Note == "") {
      document.getElementById("Noteerror").innerText = "Please enter your Note";
    } 
};
function validateFormService() {
   
   var name = document.getElementById("name").value;
   var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
   var car_type = document.getElementById("car_type").value;
   var car_model = document.getElementById("car_model").value;
   var date = document.getElementById("date").value;
   var message = document.getElementById("message").value;

   

   var nameErr = emailErr = mobileErr = countryErr = genderErr = true;

   // Validate name
   if(name == "") {
       document.getElementById("nameerror").innerText = "Please enter your name";
   }
   // Validate name
   if(email == "") {
       document.getElementById("emailerror").innerText = "Please enter your email";
   }
      // Validate name
      if(phone == "") {
       document.getElementById("phoneerror").innerText = "Please enter your phone";
   }
 // Validate car_type
   if(car_type == "") {
     document.getElementById("car_typeerror").innerText = "Please enter your car type";
   } 

     // Validate car_model
   if(car_model == "") {
     document.getElementById("car_modelerror").innerText = "Please enter your car model";
   } 

     // Validate date
   if(date == "") {
     document.getElementById("dateerror").innerText = "Please enter your car date";
   } 

     // Validate Note
    if(message == "") {
     document.getElementById("messageerror").innerText = "Please enter your message";
   } 
};
      </script>
            <!-- Mailchimp Subscription Form Ends Here -->
          </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom bg-black-333">
      <div class="container pt-20 pb-20">
        <div class="row">
          <div class="col-md-6">
            <p class="font-11 text-black-777 m-0">Copyright &copy;2020 <a class="mmm" target="_blank" href="http://www.psmedia-eg.com/">Ps media</a>. All Rights Reserved</p>
          </div>
        
        </div>
      </div>
    </div>
  </footer>
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Calendar Event Data -->
<!-- external javascripts -->
<script src="{{asset('front/js/jquery-2.2.4.min.js')}}"></script>
<script src="{{asset('front/js/jquery-ui.min.js')}}"></script>
<script src="{{asset('front/js/bootstrap.min.js')}}"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="{{asset('front/js/jquery-plugin-collection.js')}}"></script>

<!-- Revolution Slider 5.x SCRIPTS -->
<script src="{{asset('front/js/revolution-slider/js/jquery.themepunch.tools.min.js')}}"></script>
<script src="{{asset('front/js/revolution-slider/js/jquery.themepunch.revolution.min.js')}}"></script>


      <!-- end .rev_slider_wrapper -->
      <script>
        $(document).ready(function(e) {
          $(".rev_slider").revolution({
            sliderType:"standard",
            sliderLayout: "auto",
            dottedOverlay: "none",
            delay: 5000,
            navigation: {
                keyboardNavigation: "off",
                keyboard_direction: "horizontal",
                mouseScrollNavigation: "off",
                onHoverStop: "off",
                touch: {
                    touchenabled: "on",
                    swipe_threshold: 75,
                    swipe_min_touches: 1,
                    swipe_direction: "horizontal",
                    drag_block_vertical: false
                },
              arrows: {
                style:"zeus",
                enable:true,
                hide_onmobile:true,
                hide_under:600,
                hide_onleave:true,
                hide_delay:200,
                hide_delay_mobile:1200,
                tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                left: {
                  h_align:"left",
                  v_align:"center",
                  h_offset:30,
                  v_offset:0
                },
                right: {
                  h_align:"right",
                  v_align:"center",
                  h_offset:30,
                  v_offset:0
                }
              },
              bullets: {
                enable:true,
                hide_onmobile:true,
                hide_under:600,
                style:"metis",
                hide_onleave:true,
                hide_delay:200,
                hide_delay_mobile:1200,
                direction:"horizontal",
                h_align:"center",
                v_align:"bottom",
                h_offset:0,
                v_offset:30,
                space:5,
                tmp:'<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title"></span>'
              }
            },
            responsiveLevels: [1240, 1024, 778],
            visibilityLevels: [1240, 1024, 778],
            gridwidth: [1170, 1024, 778, 480],
            gridheight: [650, 768, 960, 720],
            lazyType: "none",
            parallax: {
                origo: "slidercenter",
                speed: 1000,
                levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 46, 47, 48, 49, 50, 100, 55],
                type: "scroll"
            },
            shadow: 0,
            spinner: "off",
            stopLoop: "on",
            stopAfterLoops: 0,
            stopAtSlide: -1,
            shuffle: "off",
            autoHeight: "off",
            fullScreenAutoWidth: "off",
            fullScreenAlignForce: "off",
            fullScreenOffsetContainer: "",
            fullScreenOffset: "0",
            hideThumbsOnMobile: "off",
            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            debugMode: false,
            fallbacks: {
                simplifyAll: "off",
                nextSlideOnWindowFocus: "off",
                disableFocusListener: false,
            }
          });
        });
      </script>
      <!-- Slider Revolution Ends -->


<script src="{{asset('front/js/calendar-events-data.js')}}"></script>
<!-- JS | Custom script for all pages -->
<script src="{{asset('front/js/custom.js')}}"></script>

<!-- SLIDER REVOLUTION 5.0 EXTENSIONS
      (Load Extensions only on Local File Systems !
       The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.actions.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.carousel.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.migration.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js')}}"></script>
<script type="text/javascript" src="{{asset('front/js/revolution-slider/js/extensions/revolution.extension.video.min.js')}}"></script>

{{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> --}}
{{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> --}}
{{-- <script src="http://parsleyjs.org/dist/parsley.js"></script> --}}


<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha256-KsRuvuRtUVvobe66OFtOQfjP8WA2SzYsmm4VPfMnxms=" crossorigin="anonymous"></script>
@include('sweet::alert')
</body>

<!-- Mirrored from html.kodesolution.live/m/repairshop/v3.1/demo/index-rtl-mp-layout1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Jan 2020 13:10:56 GMT -->
</html>
