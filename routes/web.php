<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

// Auth::routes();
Auth::routes(['register' => false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/admin/users', [App\Http\Controllers\HomeController::class, 'adminUsers'])->name('admin.users')->middleware('is_admin');
Route::post('/admin/users/edit', [App\Http\Controllers\HomeController::class, 'adminUsersEdit'])->name('admin.users.edit')->middleware('is_admin');
Route::post('/admin/users/delete', [App\Http\Controllers\HomeController::class, 'adminUsersDelete'])->name('admin.users.delete')->middleware('is_admin');

Route::post('/admin/users/create', [App\Http\Controllers\HomeController::class, 'adminUsersCreate'])->name('admin.users.create')->middleware('is_admin');

Route::get('admin/home', [App\Http\Controllers\HomeController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');
Route::get('admin/clients', [App\Http\Controllers\HomeController::class, 'adminClients'])->name('admin.clients')->middleware('is_admin');
Route::get('admin/clients/{id}/profile', [App\Http\Controllers\HomeController::class, 'adminClientsProfile'])->name('admin.clients.profile')->middleware('is_admin');
Route::get('admin/clients/create', [App\Http\Controllers\HomeController::class, 'adminClientsCreate'])->name('admin.clients.create')->middleware('is_admin');
Route::post('admin/clients/filter1', [App\Http\Controllers\HomeController::class, 'adminClientsFilter1'])->name('admin.clients.filter1')->middleware('is_admin');
Route::get('admin/clients/filter2', [App\Http\Controllers\HomeController::class, 'adminClientsFilter2'])->name('admin.clients.filter2')->middleware('is_admin');
Route::post('admin/clients/create', [App\Http\Controllers\HomeController::class, 'adminClientsCreateNew'])->name('admin.clients.create.new')->middleware('is_admin');

Route::get('admin/clients/information', [App\Http\Controllers\HomeController::class, 'adminClientsInformation'])->name('admin.information.edit')->middleware('is_admin');

Route::get('admin/clients/bio', [App\Http\Controllers\HomeController::class, 'adminClientsBio'])->name('admin.bio.edit')->middleware('is_admin');
Route::get('admin/clients/additional_information', [App\Http\Controllers\HomeController::class, 'adminClientsAddInformation'])->name('admin.add.edit')->middleware('is_admin');



Route::get('admin/category', [App\Http\Controllers\HomeController::class, 'adminCategory'])->name('admin.category')->middleware('is_admin');
Route::post('admin/category/create', [App\Http\Controllers\HomeController::class, 'adminCategoryCreate'])->name('admin.category.create')->middleware('is_admin');
Route::post('admin/category/edit', [App\Http\Controllers\HomeController::class, 'adminCategoryEdit'])->name('admin.category.edit')->middleware('is_admin');
Route::post('admin/category/delete', [App\Http\Controllers\HomeController::class, 'adminCategoryDelete'])->name('admin.category.delete')->middleware('is_admin');


Route::get('admin/highlights', [App\Http\Controllers\HomeController::class, 'adminHighlights'])->name('admin.highlights')->middleware('is_admin');

Route::get('admin/highlights/create', [App\Http\Controllers\HomeController::class, 'adminHighlightsCreate'])->name('admin.highlights.create')->middleware('is_admin');
Route::get('admin/highlights/edit', [App\Http\Controllers\HomeController::class, 'adminHighlightsEdit'])->name('admin.highlights.edit')->middleware('is_admin');
Route::get('admin/highlights/delete', [App\Http\Controllers\HomeController::class, 'adminHighlightsDelete'])->name('admin.highlights.delete')->middleware('is_admin');

Route::get('admin/permission', [App\Http\Controllers\HomeController::class, 'adminPermissions'])->name('admin.permissions')->middleware('is_admin');
Route::get('admin/highlights/income', [App\Http\Controllers\HomeController::class, 'adminHighlightsIncome'])->name('admin.highlights.income')->middleware('is_admin');
Route::get('admin/highlights/deduction', [App\Http\Controllers\HomeController::class, 'adminHighlightsDeduction'])->name('admin.highlights.deduction')->middleware('is_admin');
Route::get('admin/highlights/income/create', [App\Http\Controllers\HomeController::class, 'adminHighlightsIncomeCreate'])->name('admin.highlights.income.create')->middleware('is_admin');
Route::get('admin/highlights/income/edit', [App\Http\Controllers\HomeController::class, 'adminHighlightsIncomeEdit'])->name('admin.highlights.income.edit')->middleware('is_admin');
Route::get('admin/highlights/income/delete', [App\Http\Controllers\HomeController::class, 'adminHighlightsIncomeDelete'])->name('admin.highlights.income.delete')->middleware('is_admin');
Route::get('admin/highlights/deduction/create', [App\Http\Controllers\HomeController::class, 'adminHighlightsDeductionCreate'])->name('admin.highlights.deduction.create')->middleware('is_admin');
Route::get('admin/highlights/deduction/edit', [App\Http\Controllers\HomeController::class, 'adminHighlightsDeductionEdit'])->name('admin.highlights.deduction.edit')->middleware('is_admin');
Route::get('admin/highlights/deduction/delete', [App\Http\Controllers\HomeController::class, 'adminHighlightsDeductionDelete'])->name('admin.highlights.deduction.delete')->middleware('is_admin');

#Data-entry
Route::get('/entry/home', [App\Http\Controllers\HomeController::class, 'dataEntryIndex'])->name('entry.home')->middleware('is_entry');;
Route::get('/entry/clients', [App\Http\Controllers\EntryController::class, 'clients'])->name('entry.clients')->middleware('is_entry');;
Route::get('/entry/highlights', [App\Http\Controllers\EntryController::class, 'highlights'])->name('entry.highlights')->middleware('is_entry');;
#Book-keeper
Route::get('/bookkeepr/home', [App\Http\Controllers\HomeController::class, 'bookkeeperIndex'])->name('bookkeeper.home')->middleware('is_bookkeeper');;
Route::get('/bookkeeper/clients', [App\Http\Controllers\BookkeeperController::class, 'clients'])->name('bookkeeper.clients')->middleware('is_bookkeeper');;
Route::get('/bookkeeper/highlights', [App\Http\Controllers\BookkeeperController::class, 'highlights'])->name('bookkeeper.highlights')->middleware('is_bookkeeper');;
