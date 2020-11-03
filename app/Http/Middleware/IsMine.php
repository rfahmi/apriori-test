<?php

namespace App\Http\Middleware;

use Closure;
use App\User;

class IsMine
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $request_id = $request->route('user_id');
        $header = $request->header('Authorization');
        $token = explode(' ' , $header);
        $user_id = User::where('api_token', $token[1])->value('id');
        if($user_id == $request_id){
            return $next($request);
        }else{
            return response()->json([
                'success' => false,
                'message' => 'Access Forbidden',
            ],403);
        }
    }
}
