<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
// use App\Auth;
use Illuminate\Support\Facades\Auth;

class Customer extends Controller
{
    public function create($lang){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        

        return view('front.login',['lang'=>$lang,'Allservice'=>$Allservice]);
    }

    public function store(Request $request){
        // \App::setLocale($lang);
       $lang = $request->input("lang");
        $request->validate([
            'email' => 'required',
            'password' => 'required',
            
        ]);
        $remember =request()->has('remember')?true:false;
        if(Auth::guard('webcustomer')->attempt(['email'=>request('email'),'password'=>request('password')],$remember)){

            // return back()->withErrors([
            //     'massage' => 'Email or Password not correct',
    
            // ]);

            return redirect("$lang/clint");

           }else{
            // return redirect('ar');
            return back();

           }
    
        }
    public function distroy(){
         auth()->logout();
         return redirect('ar');

    }

}

