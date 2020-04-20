<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;

class SendEmailController extends Controller
{
    public function contact($lang){

        \App::setLocale($lang);
        $Allservice = Service::withTranslations()->get();

        
        return view('front.contact',['lang'=>$lang,'Allservice'=>$Allservice]);
    }


        
    public function contactsend(Request $request){
        // dd($request);

        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'message'
        ]);

    \Mail::send('emails.contactus',
        array(
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'subject' => $request->get('subject'),
            'user_message' => $request->get('message')
        ), function($message) use ($request)
    {
       $message->from('onlineinterviewquestions@gmail.com');
       $message->to('sharadjaiswal1411@gmail.com', 'Admin')->subject($request->get('subject'));
    });

    }
}
