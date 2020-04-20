@extends('front.layout')
@section('content')

<section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="{{asset('storage/img/bg6.jpg')}}">
    <div class="container pt-90 pb-50">
      <!-- Section Content -->
      <div class="section-content pt-100">
        <div class="row"> 
          <div class="col-md-12">
            <h3 class="title text-white text">الأوردارت</h3>
          </div>
        </div>
      </div>
    </div>
  </section>
  <br>
<div class="container">
    <div class="row">
      <div class="col-md-6 col-md-push-3 ">
{{-- <h4 class="title">الأوردارت</h4> --}}
{{-- <p>For basic styling&mdash;light padding and only horizontal dividers&mdash;add the base class <code>.table</code> to any <code>&lt;table&gt;</code>. It may seem super redundant, but given the widespread use of tables for other plugins like calendars and date pickers, we've opted to isolate our custom table styles.</p> --}}
  <div data-example-id="simple-table" class="bs-example order"> 
    <table class="table" style="margin-bottom: 0px;">
      <thead >   
        <tr class="orderback">
         {{-- <th style="text-align: center;"><h3 style="color:#6d100f ">#</h3></th>  --}}
          <th style="text-align: center;"><h3  >الصوره</h3></th> 
          <th style="text-align: center;"><h3 >الخدمه</h3></th> 
          <th style="text-align: center;"><h3>قيد الانتظار/تم الانتهاء</h3></th> 
          </tr> 
        </thead> 
        <tbody style="margin-bottom: 0px;"> 
            @foreach ($orders as $order )
                
          <tr> 
          {{-- <th scope="row">#</th> --}}
          <td style="text-align: center;border-left: 1px solid;"><img class="border border-bottom-0 img" style="width:100px; height:100px" src="{{asset("storage/$order->service_img")}}" alt="">
           <td style="text-align: center; border-left: 1px solid;">{{ $order->getTranslatedAttribute('service_name',$lang) }}</td> 
           </td> 
           <td style="text-align: center;">
            @if($order->pending == 1)
            قيد الانتظار
            @else
            تم الانتهاء
            @endif
           </td> 
          </tr> 
          @endforeach

         
               </tbody>
               </table>
  </div>
  </div>
  </div>
</div>  
<br>

{{-- {{Auth::guard('webcustomer')->user()}} --}}


@endsection
