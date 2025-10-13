<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware): void {

        // -- Group (Global) Middleware // ✅ GLOBAL middleware ke liye append ya prepend 
        //  $middleware->append(\App\Http\Middleware\Check::class);


         // ✅ Agar alias chahiye (for route use only)
        $middleware->alias([
            'auth' => \App\Http\Middleware\Authenticate::class,
            'check' => \App\Http\Middleware\Check::class,
            'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,
            'userAuth' => \App\Http\Middleware\UserAuthenticate::class,
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        //
    })->create();
