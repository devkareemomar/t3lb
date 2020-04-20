@extends('front.layout')
@section('content')

  <!-- Start main-content -->
  <div class="main-content">

    
<br>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
            <div class="border-1px p-25">
              <h4 class="mt-0 line-height-1 "><span> {{__('home.Get_the')}} <span class="text-theme-color-2"> {{__('home.Service_now')}}</span></span></h4>
              {{-- <h4 class="text-theme-colored text-uppercase m-0">احصل على الخدمه الآن</h4> --}}
              <br>
              {{-- <div class="line-bottom mb-30"></div> --}}
              {{-- <p>Lorem ipsum dolor sit amet, consectetur elit.</p> --}}
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
                        <input required placeholder="{{__('home.Enter_name')}}" type="text" id="name" name="reservation_name"  class="form-control"  data-validate-type="email" data-validate-trigger="keyup">
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
                        <input required placeholder="{{__('home.car_model')}}" type="text" id="car_model" name="car_model" class="form-control" >
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
              <!-- Appointment Form Validation-->
             
            </div>
          </div>
        </div>
      </div>
    </section>
   

  </div>
  <br>
  <!-- end main-content -->

@endsection
