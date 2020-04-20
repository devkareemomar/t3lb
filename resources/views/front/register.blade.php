@extends('front.layout')
@section('content')



<div class="main-content">

    <!-- Section: inner-header -->
    
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
            <form name="reg-form" class="register-form" action="{{url('signup')}}" method="post">
                @csrf

              <div class="icon-box mb-0 p-0">
            
                <h4 class="text-gray pt-10 mt-0 mb-30">ليس لديك حساب؟ سجل الآن.</h4>
              </div>
              <hr>
              {{-- <p class="text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi id perspiciatis facilis nulla possimus quasi, amet qui. Ea rerum officia, aspernatur nulla neque nesciunt alias.</p> --}}
              <div class="row">
                  {{-- @if ()
                  <div class="alert alert-danger" role="alert">من فضلك ادخل البيانات كامله</div>
                  @endif --}}
             
                <div class="form-group col-md-6">
                  <label for="form_f_name"> الاسم الاول</label>
                  <input required id="f_name" name="form_f_name" class="form-control" type="text">
                  <div id="f_nameerror" class="bg-danger" style="color: #911111;"></div>

                  @error('form_f_name')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>

                <div class="form-group col-md-6">
                    <label for="form_l_name">الاسم الثاني</label>
                    <input required id="l_name" name="form_l_name" class="form-control" type="text">
                   <div id="l_nameerror" class="bg-danger" style="color: #911111;"></div>

                    @error('form_l_name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
              
              </div>
              <div class="row">
                <div class="form-group col-md-12">
                    <label>البريد الالكتروني</label>
                  <input required id="email" name="form_email" class="form-control" type="email">
                  <div id="emailerror" class="bg-danger" style="color: #911111;"></div>

                  @error('form_email')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-6">
                  <label for="form_choose_password">الرقم السري</label>
                  <input required id="password" name="form_choose_password" class="form-control" type="password">
                  <div id="passworderror" class="bg-danger" style="color: #911111;"></div>

                  @error('form_choose_password')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group col-md-6">
                  <label>اعادة ادخال الرقم السري</label>
                  <input required id="re_password" name="form_re_enter_password"  class="form-control" type="password">
                  <div id="re_passworderror" class="bg-danger" style="color: #911111;"></div>
                 
                  @error('form_re_enter_password')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
              </div>
              <div class="form-group">
                <button onclick="validateFormRegister();" class="btn btn-theme-colored btn-lg btn-block mt-15" type="submit">سجل الآن</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection
