@extends('front.layout')
@section('content')



    <!-- Section: inner-header -->
    {{-- <section class="inner-header divider parallax layer-overlay overlay-white-8" data-bg-img="images/bg/bg6.jpg">
      <div class="container pt-90 pb-50">
        <!-- Section Content -->
        <div class="section-content pt-100">
          <div class="row"> 
            <div class="col-md-12">
              <h3 class="title text-theme-colored">My Account</h3>
            </div>
          </div>
        </div>
      </div>
    </section> --}}
    @auth('webcustomer')

    @if($id == 1)

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
            <form name="reg-form" class="register-form" action="{{ url('book_now') }}" method="post">
              @csrf
              <input name="customer_type" type="hidden" value="external customer">

              <div class="icon-box mb-0 p-0">
                <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                  <i class="pe-7s-users"></i>
                </a>
                <h4 class="text-gray ">{{__('home.Book_now')}}</h4>
              </div>
              <hr>
              {{-- <p class="text-gray pt-10 mt-0 mb-30">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه</p> --}}
              <div class="row">
                <div class="form-group col-md-12">

                <label for="name">{{__('home.Enter_name')}}</label>
                <input required id="name" name="name" class="form-control" type="text">
                <div id="nameerror" class="bg-danger" style="color: #911111;"></div>


                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>

              <div class="row">
              
                
                <div class="form-group col-md-6">
                  <label>{{__('home.Car_form')}}</label>
                  <input required id="car_type" name="car_type" class="form-control" type="text">
                <div id="car_typeerror" class="bg-danger" style="color: #911111;"></div>
                  
                  @error('car_type')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group col-md-6">
                  <label for="car_model">{{__('home.Car_model')}}</label>
                  <input required id="car_model" name="car_model" class="form-control" type="text">
                <div id="car_modelerror" class="bg-danger" style="color: #911111;"></div>

                  @error('car_model')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
              </div>
             
              <div class="row">
            
                <div class="col-sm-12">
                  <div class="form-group mb-30">
                    <div class="styled-select">
                      <select required id="car_select" name="warranty" class="form-control" >
                        <option value="">-{{__('home.Outside_warranty')}}/{{__('home.Inside_warranty')}}-</option>
                        {{-- @foreach ($CarType as $car ) --}}

                        <option value="خارج الضمان">خارج الضمان</option>
                        <option value="داخل الضمان">داخل الضمان</option>

                        {{-- @endforeach --}}
                       
                      </select>
                <div id="car_selecterror" class="bg-danger" style="color: #911111;"></div>

                      @error('warranty')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="Note">{{__('home.Notes')}}</label>
                    <textarea required name="Note" id="Note" class="form-control" cols="30" rows="10"></textarea>
                <div id="Noteerror" class="bg-danger" style="color: #911111;"></div>

                    @error('Note')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
              </div>
              <div class="form-group">
                  
                  <button onclick="validateFormBook();" class="btn btn-colored btn-theme-colored btn-lg text-white btn-block  mt-15" type="submit">{{__('home.Book_now')}}</button>
              </div>
            </form>
          
     
          </div>
        </div>
      </div>
    </section>
    @elseif($id == 2)
   
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
           
            <form name="reg-form" class="register-form" action="{{ url('book_now') }}" method="post">
              @csrf
              <input name="customer_type" type="hidden" value="company customer">

              <div class="icon-box mb-0 p-0">
                <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                  <i class="pe-7s-users"></i>
                </a>
                <h4 class="text-gray ">{{__('home.Book_now')}}</h4>
              </div>
              <hr>
              {{-- <p class="text-gray pt-10 mt-0 mb-30">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه</p> --}}
              <div class="row">
                <div class="form-group col-md-12">

                <label for="name">{{__('home.Enter_name')}}</label>
                <input required id="name" name="name" class="form-control" type="text">
                <div id="nameerror" class="bg-danger" style="color: #911111;"></div>


                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>

              <div class="row">
              
                
                <div class="form-group col-md-6">
                  <label>{{__('home.Car_form')}}</label>
                  <input required id="car_type" name="car_type" class="form-control" type="text">
                <div id="car_typeerror" class="bg-danger" style="color: #911111;"></div>
                  
                  @error('car_type')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group col-md-6">
                  <label for="car_model">{{__('home.Car_model')}}</label>
                  <input required id="car_model" name="car_model" class="form-control" type="text">
                <div id="car_modelerror" class="bg-danger" style="color: #911111;"></div>

                  @error('car_model')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
              </div>
             
              <div class="row">
            
                <div class="col-sm-12">
                  <div class="form-group mb-30">
                    <div class="styled-select">
                      <select required id="car_select" name="warranty" class="form-control" >
                        <option value="">-{{__('home.Outside_warranty')}}/{{__('home.Inside_warranty')}}-</option>
                        {{-- @foreach ($CarType as $car ) --}}

                        <option value="خارج الضمان">خارج الضمان</option>
                        <option value="داخل الضمان">داخل الضمان</option>

                        {{-- @endforeach --}}
                       
                      </select>
                <div id="car_selecterror" class="bg-danger" style="color: #911111;"></div>

                      @error('warranty')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="Note">{{__('home.Notes')}}</label>
                    <textarea required name="Note" id="Note" class="form-control" cols="30" rows="10"></textarea>
                <div id="Noteerror" class="bg-danger" style="color: #911111;"></div>

                    @error('Note')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
              </div>
              <div class="form-group">
                  
                  <button onclick="validateFormBook();" class="btn btn-colored btn-theme-colored btn-lg text-white btn-block  mt-15" type="submit">{{__('home.Book_now')}}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    @elseif($id == 3)
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
         
            <form name="reg-form" class="register-form" action="{{ url('book_now') }}" method="post">
              @csrf
              <input name="customer_type" type="hidden" value="compound customer">

              <div class="icon-box mb-0 p-0">
                <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                  <i class="pe-7s-users"></i>
                </a>
                <h4 class="text-gray ">{{__('home.Book_now')}}</h4>
              </div>
              <hr>
              {{-- <p class="text-gray pt-10 mt-0 mb-30">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه</p> --}}
              <div class="row">
                <div class="form-group col-md-12">

                <label for="name">{{__('home.Enter_name')}}</label>
                <input required id="name" name="name" class="form-control" type="text">
                <div id="nameerror" class="bg-danger" style="color: #911111;"></div>


                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
              </div>
            </div>

              <div class="row">
              
                
                <div class="form-group col-md-6">
                  <label>{{__('home.Car_form')}}</label>
                  <input required id="car_type" name="car_type" class="form-control" type="text">
                <div id="car_typeerror" class="bg-danger" style="color: #911111;"></div>
                  
                  @error('car_type')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group col-md-6">
                  <label for="car_model">{{__('home.Car_model')}}</label>
                  <input required id="car_model" name="car_model" class="form-control" type="text">
                <div id="car_modelerror" class="bg-danger" style="color: #911111;"></div>

                  @error('car_model')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
              </div>
             
              <div class="row">
            
                <div class="col-sm-12">
                  <div class="form-group mb-30">
                    <div class="styled-select">
                      <select required id="car_select" name="warranty" class="form-control" >
                        <option value="">-{{__('home.Outside_warranty')}}/{{__('home.Inside_warranty')}}-</option>
                        {{-- @foreach ($CarType as $car ) --}}

                        <option value="خارج الضمان">خارج الضمان</option>
                        <option value="داخل الضمان">داخل الضمان</option>

                        {{-- @endforeach --}}
                       
                      </select>
                <div id="car_selecterror" class="bg-danger" style="color: #911111;"></div>

                      @error('warranty')
                      <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="Note">{{__('home.Notes')}}</label>
                    <textarea required name="Note" id="Note" class="form-control" cols="30" rows="10"></textarea>
                <div id="Noteerror" class="bg-danger" style="color: #911111;"></div>

                    @error('Note')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
              </div>
              <div class="form-group">
                  
                  <button onclick="validateFormBook();" class="btn btn-colored btn-theme-colored btn-lg text-white btn-block  mt-15" type="submit">{{__('home.Book_now')}}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    @endif
  </div>
  @else
  <section class="text-center" data-bg-img="{{asset('front/images/pattern/p8.png')}}">
    <div class="container pt-120 pb-120">
      <div class="row">
        <div class="col-md-12 text-center">
          <h3>لعمل الأوردر برجاء تسجيل الدخول</h3>
        
        <h2><a style="color: #6d100f;" href="{{ url("$lang/log_in") }}">سجل  الآن</a></h2>
        </div>
      </div>
    </div>
  </section>
  <div class="main-content">
  @endauth
  <!-- end main-content -->
  

@endsection
