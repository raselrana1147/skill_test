<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Providers\RouteServiceProvider;

class LoginController extends Controller
{
    
     use AuthenticatesUsers;
    protected $redirectTo = RouteServiceProvider::ADMIN;



    public function __construct()
    {
        $this->middleware('guest:admin')->except('logout');
    }

    public function showLoginForm(){

        return view('layouts.admin');
    }

    // public function login(Request $request){
    //     if (Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
    //         // if successful, then redirect to their intended location
    //         return response()->json([
    //             'admin'=>Auth::guard('admin')->user(),
    //             'message'=>'Your session is started',
    //             'type'=>'success',
    //             'status'=>200
    //         ],200);
    //       }
    // }


    // public function login(Request $request)
    // {
    //     $this->validateLogin($request);


    //     if (method_exists($this, 'hasTooManyLoginAttempts') &&
    //         $this->hasTooManyLoginAttempts($request)) {
    //         $this->fireLockoutEvent($request);

    //         return $this->sendLockoutResponse($request);
    //     }

    //     if ($this->attemptLogin($request)) {
    //         return response()->json($this->guard()->user());
    //         return $this->sendLoginResponse($request);
    //     }


    //     $this->incrementLoginAttempts($request);

    //     return $this->sendFailedLoginResponse($request);
    // }


    // protected function validateLogin(Request $request)
    // {
    //     $request->validate([
    //         $this->username() => 'required|string',
    //         'password' => 'required|string',
    //     ]);
    // }


    // protected function attemptLogin(Request $request)
    // {
    //     return $this->guard()->attempt(
    //         $this->credentials($request), $request->filled('remember')
    //     );
    // }


    // protected function credentials(Request $request)
    // {
    //     return $request->only($this->username(), 'password');
    // }


    // protected function sendLoginResponse(Request $request)
    // {
    //     $request->session()->regenerate();

    //     $this->clearLoginAttempts($request);

    //     if ($response = $this->authenticated($request, $this->guard()->user())) {
    //         return $response;
    //     }

    //     return $request->wantsJson()
    //                 ? new JsonResponse([], 204)
    //                 : redirect()->intended($this->redirectPath());
    // }



    // protected function sendFailedLoginResponse(Request $request)
    // {
    //     throw ValidationException::withMessages([
    //         $this->username() => [trans('auth.failed')],
    //     ]);
    // }

    // public function logout()
    // {

    //    Auth::guard('admin')->logout();
    // }

    // public function guard()
    // {
    //     return Auth::guard('admin');
    // }
}
