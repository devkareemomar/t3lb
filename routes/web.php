<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// ---------------------------- front route ----------------

use Illuminate\Support\Facades\Auth;

Route::get('/',function(){
    return redirect('/ar');
});



Route::get('/{lang}', 'HomeController@index');

Route::get('/{lang}/book/{id}', 'HomeController@book');
Route::get('/{lang}/our_branches', 'HomeController@our_branches');
Route::get('/{lang}/contact_the_branch', 'HomeController@contact_the_branch');
Route::get('/{lang}/career', 'HomeController@career');
Route::get('/{lang}/company_compound/{id}', 'HomeController@company_compound');



Route::get('/{lang}/video_tv', 'HomeController@video_tv');

Route::get('/{lang}/contact_us', 'HomeController@contact')
;
Route::get('/{lang}/about', 'HomeController@about');

Route::get('/{lang}/Avacant', 'HomeController@Avacant');
Route::get('/{lang}/Avacanttitle/{id}', 'HomeController@Avacanttitle');
Route::get('/{lang}/show_service/{service_name}', 'HomeController@show_service');
Route::get('/{lang}/blogdetails/{id}', 'HomeController@blogdetails');


Route::post('/contactsend', 'HomeController@contactsend');
Route::post('/order', 'HomeController@order')->middleware('AuthCustomer:webcustomer');
Route::post('/jobs', 'HomeController@jobs');

Route::post('/contactus', 'HomeController@contactus');
Route::post('/book_now', 'HomeController@book_now')->middleware('AuthCustomer:webcustomer');





// ---------------------------- front route ----------------


//---------------start facebook login-----------------

Route::get('{lang}/facebooklogin',function(){
    return Socialite::driver('facebook')->redirect();

});

Route::get('{lang}/callback', 'HomeController@facebook');
//---------------end facebook login-----------------


//-------------------start register---------------------
Route::get('/{lang}/register', 'HomeController@register');
Route::post('/signup', 'HomeController@signup');
//---------------------end register---------------------


//-------------------start login----------------------

   



Route::post('/login', 'Customer@store');


Route::get('{lang}/clint','HomeController@profile')->middleware('AuthCustomer:webcustomer');


Route::get('/{lang}/log_in', 'Customer@create');

Route::get('/ar/logout', function(){
    Auth::guard('webcustomer')->logout();
    return redirect('/ar/log_in');
});



//-------------------end login-----------------------
// Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
