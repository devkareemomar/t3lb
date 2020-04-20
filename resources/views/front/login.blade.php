@extends('front.layout')
@section('content')

  <!-- Start main-content -->
  <div class="main-content">

    

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
            <h4 class="text-gray mt-0 pt-5"> تسجيل الدخول</h4>
            <hr>
            {{-- <p>Lorem ipsum dolor sit amet, consectetur elit.</p> --}}
          <form name="login-form" action="{{url('/login')}}" method="post" class="clearfix">
            @csrf
            <input type="hidden" name="lang" value="{{$lang}}" >
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="email">البريد الالكتروني</label>
                  <input required id="email" name="email" class="form-control" type="text">
                  <div id="emailerror" class="bg-danger" style="color: #911111;"></div>

                  @error('email')
                  <div class="alert alert-danger">{{ $message }}</div>  
                  @enderror
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-12">
                  <label for="password">الرقم السري</label>
                  <input required id="password" name="password" class="form-control" type="text">
                  <div id="passworderror" class="bg-danger" style="color: #911111;"></div>

                  @error('password')
                  <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
              </div>
              {{-- <div class="checkbox pull-left mt-15">
                <label for="remember">
                  <input id="remember" name="remember" type="checkbox">
                  
                  تذكرني </label>
              </div> --}}
              <div class="form-group pull-right mt-10">
                <button onclick="validateFormLogin();" type="submit" class="btn btn-theme-colored btn-sm">تسجيل الدخول</button>
              </div>
              <br>
              <div class="clear text-center pt-10">
              <a class="text-theme-colored font-weight-600 font-12" href="{{url("$lang/register")}}">Register Now?</a>
              </div>
              <div class="clear text-center pt-10">
                <a class="btn btn-dark btn-lg btn-block no-border mt-15 mb-15" href="{{ url("$lang/facebooklogin") }}" data-bg-color="#3b5998">Login with facebook</a>
                 {{-- <a class="btn btn-dark btn-lg btn-block no-border" href="#" data-bg-color="#00acee">Login with twitter</a> --}}
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->




@endsection
