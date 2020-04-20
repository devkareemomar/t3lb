<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;

class SessionsController extends Controller
{
    public function create($lang){
        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();
        

        return view('front.login',['lang'=>$lang,'Allservice'=>$Allservice]);
    }

    public function store($lang){
        \App::setLocale($lang);
       
       if(! auth()->attempt(request(['email','password']))){

        return back()->withErrors([
            'massage' => 'Email or Password not correct',

        ]);
       }
       return redirect("/book");

    }

}
