<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\FrequentController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\SliderController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\Welcomeontroller;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\ConsultationController;
use App\Http\Controllers\PackageController;
use App\Http\Controllers\PolicyController;
use App\Http\Controllers\TConditionController;
use App\Http\Controllers\TeamController;

/*

*/

Route::get('/', [Welcomeontroller::class, 'index'])->name('home');

Route::get('/about/view', [Welcomeontroller::class, 'about'])->name('about');

Route::get('/packeages', [Welcomeontroller::class, 'packeages'])->name('packeages');

Route::get('/destination/view', [Welcomeontroller::class, 'destination'])->name('destination.view');

Route::get('/gellary/view', [Welcomeontroller::class, 'gellary'])->name('gellary.view');

Route::get('/ftp/server', [Welcomeontroller::class, 'ftp'])->name('ftp');

Route::get('all/service', [Welcomeontroller::class, 'allService'])->name('all-service');

Route::get('service/detail/{id}', [Welcomeontroller::class, 'detail'])->name('service-detail');

Route::get('category/service/{id}', [Welcomeontroller::class, 'categoryService'])->name('category-service');

Route::post('/package/order/', [Welcomeontroller::class, 'order'])->name('package.order');

Route::get('/package/order/', [Welcomeontroller::class, 'packageOrder'])->name('packageOrder');

Route::get('/policy/pages', [Welcomeontroller::class, 'policy'])->name('policy.page');

Route::get('/tcondition/pages', [Welcomeontroller::class, 'tcondition'])->name('tcondition.page');

Route::get('/contact', [Welcomeontroller::class, 'contact'])->name('contact');

Route::post('/consultation', [ConsultationController::class, 'store'])->name('consultation.store');

Route::post('/contact/store', [ContactController::class, 'store'])->name('contact.store');





Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified'])->group(function () {

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/role/add', [RoleController::class, 'index'])->name('role.add');
    Route::post('/role/new', [RoleController::class, 'create'])->name('role.new');
    Route::get('/role/manage', [RoleController::class, 'manage'])->name('role.manage');
    Route::get('/role/edit/{id}', [RoleController::class, 'edit'])->name('role.edit');
    Route::post('/role/update/{id}', [RoleController::class, 'update'])->name('role.update');
    Route::get('/role/delete/{id}', [RoleController::class, 'delete'])->name('role.delete');

    Route::get('/user/add', [UserController::class, 'index',])->name('user.add');
    Route::post('/user/new', [UserController::class, 'create'])->name('user.new');
    Route::get('/user/manage', [UserController::class, 'manage'])->name('user.manage');
    Route::get('/user/edit/{id}', [UserController::class, 'edit'])->name('user.edit');
    Route::post('/user/update/{id}', [UserController::class, 'update'])->name('user.update');
    Route::get('/user/delete/{id}', [UserController::class, 'delete'])->name('user.delete');

    Route::resource('category', CategoryController::class);

    Route::resource('brand', BrandController::class);

    Route::resource('client', ClientController::class);
    
    Route::resource('team', TeamController::class);

    Route::resource('service', ServiceController::class);

    Route::resource('blog', BlogController::class);

    Route::resource('slider', SliderController::class);

    Route::resource('package', PackageController::class);

    Route::resource('about', AboutController::class);

    Route::resource('policy', PolicyController::class);

    Route::resource('banner', BannerController::class);

    Route::resource('tcondition', TConditionController::class);

    Route::resource('frequents', FrequentController::class);

    //    Route::resource('company',CompanyController::class);
    //
    Route::get('company/create', [CompanyController::class, 'create'])->name('company.create');
    Route::get('company/edit/{id}', [CompanyController::class, 'edit'])->name('company.edit');
    Route::post('company/store', [CompanyController::class, 'store'])->name('company.store');
    Route::get('company/index', [CompanyController::class, 'index'])->name('company.index');
    Route::post('company/update/{id}', [CompanyController::class, 'update'])->name('company.update');
    Route::post('company/destroy/{id}', [CompanyController::class, 'destroy'])->name('company.destroy');

    Route::get('contact/index', [ContactController::class, 'index'])->name('contact.index');

    Route::get('consultation/index', [ConsultationController::class, 'index'])->name('consultation.index');

    Route::get('comment/index', [CommentController::class, 'index'])->name('comment.index');
    Route::get('comment/edit/{$id}', [CommentController::class, 'edit'])->name('comment.edit');
    Route::post('comment/update/{id}', [CommentController::class, 'update'])->name('comment.update');
    Route::post('comment/destroy/{id}', [CommentController::class, 'destroy'])->name('comment.destroy');
});
