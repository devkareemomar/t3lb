<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Slider;
use App\Blog;
use App\CarType;
use App\ExpertsTeam;
use App\Gallery;
use App\translations;
use App\Seo;
use App\Testimonial;
use App\ProjectsCategory;
use App\Project;
use App\Service;
use App\ServiceAchieve;
use App\Offer;
use App\Order;
use App\contact;
use App\Tv;
use App\User;
use App\Customer;
use App\OurBranch;
use App\BookNow;
use App\Career;
use App\Job;
use App\CompaniesAndCompound;
use App\Vacancy;
use Laravel\Socialite\Facades\Socialite;
// use App\Auth;
use TCG\Voyager\Alert;



class HomeController extends Controller
{
    public function index($lang){
        \App::setLocale($lang);

        $blogs = Blog::withTranslations()->get();

        $services = Service::withTranslations()->where('favorite',1)->get();
        $Offer = Service::withTranslations()->where('offer',1)->get();
        
        $Allservice = Service::withTranslations()->get();

        $seobysection = Seo::withTranslations()->where('page_id',18)->first();

        $Testimonial = Testimonial::withTranslations()->get();
        $ProjectsCategory = ProjectsCategory::withTranslations()->get();
        $Project = Project::withTranslations()->get();
        $ServiceAchieve = ServiceAchieve::withTranslations()->get();
        $expertteam = ExpertsTeam::withTranslations()->get();
        $sliders = Slider::withTranslations()->get();
        $CarType = CarType::withTranslations()->get();
        // $blogdetails = CarType::withTranslations()->get();

        // $Offer = Offer::withTranslations()->join('services','services.id','=','offers.service_id')->select('offers.*','services.*')->get();

        // dd($Offer);
        return view('front.home',['sliders'=>$sliders,'Allservice'=>$Allservice,'services'=>$services,'expertteam'=>$expertteam,'seobysection'=>$seobysection,'lang'=>$lang,'blogs'=>$blogs,'Testimonial'=>$Testimonial,'ProjectsCategory'=>$ProjectsCategory,'Project'=>$Project,'ServiceAchieve'=>$ServiceAchieve,'Offer'=>$Offer,'CarType'=>$CarType]);
    
    }
    public function login($lang){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        
        return view('front.login',['lang'=>$lang,'Allservice'=>$Allservice]);
    }

    public function register($lang){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        
        return view('front.register',['lang'=>$lang,'Allservice'=>$Allservice]);
    }

    public function book($lang,$id){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        // $CarType = CarType::withTranslations()->get();

        
        return view('front.book',['lang'=>$lang,'Allservice'=>$Allservice,'id'=>$id]);
    }
    public function book_now(Request $request){

        
        $request->validate([
            'name' => 'required',
            'car_type' => 'required',
            'car_model' => 'required',
            'warranty' => 'required',
            'Note' => 'required',
        ]);
        $BookNow = new BookNow();
        // SweetAlert::message('Message', 'Optional Title');
        alert()->success('Success Message', 'Done');
 
    
        // Alert()->success('you massage have been saved , we will call you n 24 hour', 'Done');
        $BookNow->customer_type = $request->input("customer_type");
        $BookNow->name = $request->input("name");
        $BookNow->car_type = $request->input("car_type");
        $BookNow->car_model = $request->input("car_model");
        $BookNow->warranty = $request->input("warranty");
        $BookNow->note = $request->input("Note");
       
        $BookNow->save();


        return redirect()->back();

    }
    
    
    public function video_tv($lang){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        $video_tv = Tv::get();
        $v_tv=Tv::where('favorite',1)->get();

        
        return view('front.video_tv',['lang'=>$lang,'Allservice'=>$Allservice,'v_tv'=>$v_tv,'video_tv'=>$video_tv]);
    }
    public function about($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        
        return view('front.about',['lang'=>$lang,'Allservice'=>$Allservice]);
    }
    
    public function profile($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        $user_id=auth()->guard('webcustomer')->user()->id;
        $orders= Order::withTranslations()->where('user_id',$user_id)->get();
            if($orders){
       

                // $services = Service::withTranslations()->where('service_name',$orders->service_name)->get();
        
                return view('front.profile',['lang'=>$lang,'Allservice'=>$Allservice,'orders'=>$orders]);
        
            }
     

   
        
        // return view('front.profile',['lang'=>$lang,'Allservice'=>$Allservice,'services'=>$services]);
    }
    public function career($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        $Career_right = Career::withTranslations()->where('side_bar','option2')->get();
        $Career_left = Career::withTranslations()->where('side_bar','option1')->get();
        $Vacancies = Vacancy::withTranslations()->get();

        
        return view('front.jobs',['lang'=>$lang,'Vacancies'=>$Vacancies,'Allservice'=>$Allservice,'Career_right'=>$Career_right,'Career_left'=>$Career_left]);
    }
    public function Avacanttitle($lang,$id){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        $Vacancies = Vacancy::withTranslations()->where('id',$id)->first();
        $Career_right = Career::withTranslations()->where('side_bar','option2')->get();
        $Career_left = Career::withTranslations()->where('side_bar','option1')->get();

        
        return view('front.Avacantcareer',['lang'=>$lang,'Allservice'=>$Allservice,'Vacancies'=>$Vacancies,'Career_right'=>$Career_right,'Career_left'=>$Career_left]);
    }
    public function Avacant($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        $Vacancies = Vacancy::withTranslations()->get();
        // $Favorite=Gallery::where('favorite',1)->first();
        // dd($Favorite);
        return view('front.Avacant',['lang'=>$lang,'Vacancies'=>$Vacancies,'Allservice'=>$Allservice]);
    }

    public function company_compound($lang,$id){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        // $CompaniesAndCompound = Service::withTranslations()->where('id',$id)->first();

        $CompaniesAndCompound = CompaniesAndCompound::withTranslations()->get();
        
        return view('front.CompaniesAndCompound',['lang'=>$lang,'id'=>$id,'CompaniesAndCompound'=>$CompaniesAndCompound,'Allservice'=>$Allservice]);
    }
   
    public function signup(Request $request){

        
        $request->validate([
            'form_f_name' => 'required',
            'form_l_name' => 'required',
            'form_email' => 'required|email',
            'form_choose_password' => 'required',
            'form_re_enter_password' => 'required|same:form_choose_password'
        ]); 
        $User = new Customer();
        // SweetAlert::message('Message', 'Optional Title');
        alert()->success('Success Message', 'Done');
 
    
        // Alert()->success('you massage have been saved , we will call you n 24 hour', 'Done');
        $User->f_name = $request->input("form_f_name");
        $User->l_name = $request->input("form_l_name");
        $User->email = $request->input("form_email");
        $User->password =bcrypt($request->input("form_choose_password"));
    


        $User->save();


        return redirect('ar/log_in');

    }
    public function order(Request $request){

        
        $request->validate([
            'reservation_name' => 'required',
            'reservation_email' => 'required',
            'reservation_phone' => 'required',
            'car_select' => 'required',
            'car_model' => 'required',
            'massage' => 'required',
            'reservation_date' => 'required',

        ]); 
        $order = new order();
        // SweetAlert::message('Message', 'Optional Title');
        alert()->success('Success Message', 'Done');

    
        // Alert()->success('you massage have been saved , we will call you n 24 hour', 'Done');
        $order->name = $request->input("reservation_name");
        $order->email = $request->input("reservation_email");
        $order->phone = $request->input("reservation_phone");
        $order->car_select = $request->input("car_select");
        $order->car_model = $request->input("car_model");
        $order->massage = $request->input("massage");
        $order->date = $request->input("reservation_date");
        $order->service_name = $request->input("service_name");
        $order->service_img = $request->input("service_img");
        $order->user_id = $request->input("user_id");
        



        $order->save();


        return redirect()->back();

    }
    public function jobs(Request $request){

        
        $request->validate([
            'f_name' => 'required',
            'l_name' => 'required',
            'address' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'qualification' => 'required',
            'cv' => 'required',

        ]);
        $jobs = new job();
        // SweetAlert::message('Message', 'Optional Title');
        alert()->success('Success Message', 'Done');

    
        // Alert()->success('you massage have been saved , we will call you n 24 hour', 'Done');
        $jobs->f_name = $request->input("f_name");
        $jobs->l_name = $request->input("l_name");
        $jobs->address = $request->input("address");
        $jobs->email = $request->input("email");
        $jobs->phone = $request->input("phone");
        $jobs->title = $request->input("title");
        $jobs->qualification = $request->input("qualification");
        $jobs->cv = $request->input("cv");


        $jobs->save();


        return redirect()->back();

    }

    public function contact($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        
        return view('front.contact',['lang'=>$lang,'Allservice'=>$Allservice]);
    }

    public function our_branches($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        $OurBranch = OurBranch::withTranslations()->get();

        
        return view('front.our_branches',['lang'=>$lang,'OurBranch'=>$OurBranch,'Allservice'=>$Allservice]);
    }
    public function contact_the_branch($lang){

        \App::setLocale($lang);
        $CarType = CarType::withTranslations()->get();
        $Allservice = Service::withTranslations()->get();
        
        
        return view('front.contact_the_branch',['lang'=>$lang,'Allservice'=>$Allservice,'CarType'=>$CarType]);
    }


    public function contactus(Request $request){

        $request->validate([
            'form_name' => 'required',
            'form_email' => 'required',
            'form_phone' => 'required',
            'form_message' => 'required',

        ]);
        $contactus = new contact();
        // SweetAlert::message('Message', 'Optional Title');
        alert()->success('Success Message', 'Done');

    
        // Alert()->success('you massage have been saved , we will call you n 24 hour', 'Done');
        $contactus->name = $request->input("form_name");
        $contactus->email = $request->input("form_email");
        $contactus->phone = $request->input("form_phone");
        $contactus->massage = $request->input("form_message");


        $contactus->save();


        return redirect()->back();

    }
 
    public function show_service($lang,$service_name){
        \App::setLocale($lang);
       
        $CarType = CarType::withTranslations()->get();
        $Allservice = Service::withTranslations()->get();
        $Firstservice = Service::withTranslations()->where('service_name',$service_name)->first();

        return view('front.show_service',['lang'=>$lang,'Allservice'=>$Allservice,'Firstservice'=>$Firstservice,'CarType'=>$CarType]);

    }
    public function blogdetails($lang,$id){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        $Firstoffers = Service::withTranslations()->where('id',$id)->first();

        return view('front.blogdetails',['lang'=>$lang,'Allservice'=>$Allservice,'Firstoffers'=>$Firstoffers]);

    }

    public function facebook($lang){

        //facebook_id
        $fbuser=Socialite::driver('facebook')->user();
        // dd($fbuser-  >id);
        if(Customer::where('facebook_id',$fbuser->id)->count()>0){
            auth()->login(Customer::where('facebook_id',$fbuser->id)->first());
            // return view('front.profile');
            \App::setLocale($lang);
            $Allservice = Service::withTranslations()->get();
            $user_id  =  $fbuser->id;
            // $user_id=auth()->guard('webcustomer')->user()->id;
            $orders= Order::withTranslations()->where('user_id',$user_id)->get();
                if($orders){
                    
    
                    // $services = Service::withTranslations()->where('service_name',$orders->service_name)->get();
            
                    return view('front.profile',['lang'=>$lang,'Allservice'=>$Allservice,'orders'=>$orders]);
            
                }
        }else{
            $customer= new Customer;
            $customer->facebook_id =$fbuser->id;
            $customer->password = bcrypt($fbuser->id.rand(000,000));
            if(!empty($fbuser->email)){
                $customer->email =$fbuser->email;
            }else{
                $customer->email ='test'.rand(000,000).'@example.com';
    
            }
            $customer->f_name =$fbuser->name;
            $customer->save();
            auth()->login($customer);
        return view('front.profile');
    
    
        }
    
    
    }
}
//-----------------------------
