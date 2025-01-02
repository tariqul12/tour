<?php

namespace App\Providers;

use App\Models\About;
use App\Models\Banner;
use App\Models\Category;
use App\Models\Company;
use Illuminate\Support\ServiceProvider;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // view()->composer(["*"], function ($view) {
        //     $view->with("categories", Category::all());
        // });

        View::composer(["*"], function ($view) {
            $view->with('company_front', Company::latest()->first());
            $view->with('title_banner', Banner::where('banner_type',1)->latest()->first());
            $view->with('footer_banner', Banner::where('banner_type',5)->latest()->first());
        });
        // view()->composer(["*"],function ($view) {
        //     $view->with('about',About::latest()->first());
        // });
    }
}
