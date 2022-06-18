<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;

class AdminMiddleware
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

        if (!empty(auth()->user())) {
            $access = User::where('id', auth()->user()->id)->first();
            if (!empty($access) && ($access->name == 'admin')) {
                return $next($request);
            } else {
                return redirect()->route('index.login');
            }
        } else {
            return redirect()->route('index.login');
        }
        return $next($request);
    }
}
