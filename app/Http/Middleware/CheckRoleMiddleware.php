<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\RoleRoute;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckRoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if($request->user() === null)
        {
            return redirect('/')->with('message', 'Please log in first. Thanks');
        }
        $actions    = $request->route()->getAction();
        //dd($actions);
        $routeName  = isset($actions['as']) ? $actions['as'] : null;
        $routesData = RoleRoute::where('route_name', $routeName)->get();
        //dd($routesData);
        $roles      = [];
        foreach ($routesData as $routeData) {
            array_push($roles, $routeData->role_name);
        }
        if($request->user()->hasAnyRole($roles) || !$roles) {
            return $next($request);
        }
        return redirect('/dashboard')->with('message', 'Insufficient Permission');
    }
}
