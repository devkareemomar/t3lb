@extends('front.layout')
@section('content')


    <div class="main-content">

      <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="{{asset('storage/img/bg6.jpg')}}">
        <div class="container pt-90 pb-50">
          <!-- Section Content -->
          <div class="section-content pt-100">
            <div class="row"> 
              <div class="col-md-12">
              <h3 class="title text text-white">{{__('home.Contact_us')}}</h3>
            </div>
          </div>
        </div>
      </div>
    </section>
      
      <!-- Divider: Contact -->
      <section class="divider">
        <div class="container">
          <div class="row pt-30">
            <div class="col-md-4">
              <div class="row">
                
                <div class="col-xs-12 col-sm-6 col-md-12">
                  <div class="icon-box left media bg-deep p-30 mb-20"><i class="pe-7s-call media-left pull-left text-theme-colored"></i>
                    <div class="media-body"> <strong>{{__('home.Phone')}}</strong>
                      <p>{!! setting("contact-us.phone") !!} </p>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-12">
                  <div class="icon-box left media bg-deep p-30 mb-20"> <i class="pe-7s-mail media-left pull-left text-theme-colored"></i>
                    <div class="media-body"> <strong>{{__('home.Email')}}</strong>
                      <p>{!! setting("contact-us.email") !!}</p>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-12">
                  <div class="icon-box left media bg-deep p-30 mb-20">  <i class="fa fa-map-marker media-left pull-left font-36 mb-10 text-theme-colored"></i>
                    <div class="media-body"> <strong>{{__('home.address')}}</strong>
                      <p>{!! setting("contact-us.address_en") !!}</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-8">
              {{-- <h3 class="line-bottom mt-0 mb-20">Interested in discussing?</h3> --}}
              {{-- <p class="mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error optio in quia ipsum quae neque alias eligendi, nulla nisi. Veniam ut quis similique culpa natus dolor aliquam officiis ratione libero. Expedita asperiores aliquam provident amet dolores.</p> --}}
              <!-- Contact Form -->
              <h3 class="title text-theme-colored text">{{__('home.Contact_us')}}</h3>
           
              <form id="contactForm" name="contactForm" class="quick-contact-form" action="{{url('contactus')}}" method="post">
                @csrf
                 <div class="form-group">
                     <input required name="form_name" id="name"class="form-control" type="text"  placeholder="{{__('home.Enter_name')}}">
                     <div id="nameerror" class="bg-danger" style="color: #911111;"></div>
                     @error('form_name')
                    <div id="" class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                 <div class="form-group">
                   <input required name="form_email" id="email" class="form-control" type="text" placeholder="{{__('home.Email')}}">
                   <div id="emailerror" class="bg-danger" style="color: #911111;"></div>
                   @error('form_email')
                   <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                 <div class="form-group">
                     <input required name="form_phone" id="phone" class="form-control" type="text"  placeholder=" {{__('home.Phone')}}">
                     <div id="phoneerror" class="bg-danger" style="color: #911111;"></div>

                     @error('form_phone')
                     <div class="alert alert-danger">{{ $message }}</div>
                     @enderror
                    </div>
                 <div class="form-group">
                   <textarea required name="form_message" id="message" class="form-control"  placeholder="{{__('home.Massage')}}" rows="3"></textarea>
                   <div id="messageerror" class="bg-danger" style="color: #911111;"></div>

                   @error('form_message')
                   <div class="alert alert-danger">{{ $message }}</div>
                   @enderror
                  </div>
                 <div class="form-group">
                   <input name="form_botcheck" class="form-control" type="hidden" value="" />
                   <button type="submit" onclick="validateForm();" class="btn btn-default btn-theme-colored btn-lg" data-loading-text="Please wait...">{{__('home.send')}}</button>
                 </div>
               </form>
              <!-- Contact Form Validation-->
              <script type="text/javascript">
                $("#quick_contact_form").validate({
                  submitHandler: function(form) {
                    var form_btn = $(form).find('button[type="submit"]');
                    var form_result_div = '#form-result';
                    $(form_result_div).remove();
                    form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                    var form_btn_old_msg = form_btn.html();
                    form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                    $(form).ajaxSubmit({
                      dataType:  'json',
                      success: function(data) {
                        if( data.status == 'true' ) {
                          $(form).find('.form-control').val('');
                        }
                        form_btn.prop('disabled', false).html(form_btn_old_msg);
                        $(form_result_div).html(data.message).fadeIn('slow');
                        setTimeout(function(){ $(form_result_div).fadeOut('slow') }, 6000);
                      }
                    });
                  }
                });
              </script>
            </div>
          </div>
        </div>
      </section>
      
      
    </div>
<!--End Content-->
@endsection
