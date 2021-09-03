<?php
  
namespace App\Http\Middleware;
  
use Closure;
   
class IsBookkeeper
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
        if(auth()->user()->roll == 2){
            return $next($request);
        }
        return back()->with('error',"You don't have Entry access.");
    }
}