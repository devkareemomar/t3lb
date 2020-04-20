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
              <h3 class="title text text-white">{{__('home.Jobs')}}</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section>
      <div class="container mt-30 mb-30 pt-30 pb-30">
        <div class="row">
            <div class="col-md-12 text-center m-auto">
            <h2 class="">{{__('home.Available_jobs')}}</h2>

            </div>
        </div>
<br>
<br>

        <div class="row ">
          <div class="col-sm-12 col-md-3">
            <div class="sidebar sidebar-left mt-sm-30">
             
              @foreach ($Career_right as $jobs_right )
                  
              <div class="widget">
                <div class="widget-image-carousel">
                  <div class="item">
                    <img style="width:300px; height:200px" src="{{asset("storage/$jobs_right->img")}}" alt="">
                    <h4 class="title">{{$jobs_right->getTranslatedAttribute('job_title',$lang)}}</h4>
                    <p>{!! $jobs_right->getTranslatedAttribute('job_description',$lang) !!}</p>
                  </div>
                
                </div>
              </div>
              @endforeach

        
            </div>
          </div>

          <div class="col-md-6">
              <br>
              <section id="contact" class="divider bg-lighter">
                <div class="container-fluid pt-0 pb-0">
                  <div class="section-content">
                    <div class="row">
                      <div class="col-sm-12 col-md-12">
                        <div class="contact-w">
                
                          <!-- Contact Form -->
                          <form  name="reservation_form" class="reservation-form" method="post" action="{{url('jobs')}}">
                            @csrf 
                          
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group mb-30">
                                    <label>{{__('home.F_name')}}</label>
                                      <input required placeholder="{{__('home.F_name')}}" type="text" id="f_name" name="f_name" class="form-control" >
                                       <div id="f_nameerror" class="bg-danger" style="color: #911111;"></div>
                                       
                                      @error('f_name')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                      @enderror
                                    </div>
                                  </div>
                                  <div class="col-sm-6">
                                    <div class="form-group mb-30">
                                        <label>{{__('home.L_name')}}</label>
                                      <input required placeholder="{{__('home.L_name')}}" type="text" id="l_name" name="l_name" class="form-control" >
                                        <div id="l_nameerror" class="bg-danger" style="color: #911111;"></div>
                                      
                                      @error('l_name')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                      @enderror
                                    </div>
                                  </div>
                                  <div class="row">
            
                                    <div class="col-sm-6">
                                      <div class="form-group mb-30">
                                        <div class="styled-select">
                                    <label>{{__('home.Type_job')}}</label>

                                          <select required id="type_job" name="title" class="form-control" >
                                            <option value="{{ $Vacancies->getTranslatedAttribute('title',$lang) }}">{{ $Vacancies->getTranslatedAttribute('title',$lang) }}</option>
                                         
                                          </select>
                                    <div id="type_joberror" class="bg-danger" style="color: #911111;"></div>
                    
                                          @error('title')
                                          <div class="alert alert-danger">{{ $message }}</div>
                                          @enderror
                                        </div>
                                      </div>
                                    </div>
                                <div class="col-sm-6">
                                  <div class="form-group mb-30">
                                    <label>{{__('home.address')}}</label>
                                    <input required placeholder="{{__('home.address')}}" type="text" id="address" name="address"  class="form-control">
                                       <div id="addresserror" class="bg-danger" style="color: #911111;"></div>
                                   
                                    @error('address')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                  </div>
                                </div>
                              </div>

                                <div class="col-sm-6">
                                    <div class="form-group mb-30">
                                        <label>{{__('home.Email')}}</label>

                                      <input required placeholder="{{__('home.Email')}}" type="text" id="email" name="email" class="form-control" >
                                      <div id="emailerror" class="bg-danger" style="color: #911111;"></div>
                                      
                                      @error('email')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                      @enderror
                                    </div>
                                  </div>
                                  <div class="col-sm-6">
                                    <div class="form-group mb-30">
                                        <label>{{__('home.Phone')}}</label>
                                      <input required placeholder="{{__('home.Phone')}}" type="text" id="phone" name="phone" class="form-control" >
                                    <div id="phoneerror" class="bg-danger" style="color: #911111;"></div>
                                     
                                      @error('phone')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                      @enderror
                                    </div>
                                  </div>
                                  <div class="col-sm-6">
                                    <div class="form-group mb-30">
                                        <label>{{__('home.qualification')}}</label>

                                      <input required placeholder="{{__('home.qualification')}}" type="text" id="qualification" name="qualification" class="form-control" >
                                    <div id="qualificationerror" class="bg-danger" style="color: #911111;"></div>

                                      @error('qualification')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                      @enderror
                                    </div>
                                  </div>
                                  <div class="col-sm-6">
                                    <div class="form-group mb-30">
                                        <label>{{__('home.CV')}}</label>

                                      <input required placeholder="{{__('home.CV')}}" type="file" id="cv" name="cv" class="form-control" >
                                    <div id="cverror" class="bg-danger" style="color: #911111;"></div>
                                      
                                      @error('cv')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                      @enderror
                                    </div>
                                  </div>
            
                                <div class="col-sm-12">
                                  <div class="form-group mb-0 mt-0">
                                    {{-- <input name="form_botcheck" class="form-control" type="hidden" value=""> --}}
                                    <button type="submit" onclick="validateFormcareer();" class="btn btn-colored btn-theme-colored btn-lg btn-flat border-left-theme-color-2-4px" data-loading-text="Please wait...">{{__('home.send')}}</button>
                                  </div>
                                </div>
                              </div>
                            </form>
                      
                        </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
              </section>

          </div>
          <div class="col-sm-12 col-md-3">
           <div class="sidebar sidebar-right mt-sm-30">
            @foreach ($Career_left as $jobs_left )
                  
              <div class="widget">
                <div class="widget-image-carousel">
                  <div class="item">
                    <img style="width:300px; height:200px" src="{{asset("storage/$jobs_left->img")}}" alt="">
                    <h4 class="title">{{$jobs_left->getTranslatedAttribute('job_title',$lang)}}</h4>
                    <p>{!! $jobs_left->getTranslatedAttribute('job_description',$lang) !!}</p>
                  </div>
                
                </div>
              </div>
              @endforeach
          
           </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
  


@endsection
