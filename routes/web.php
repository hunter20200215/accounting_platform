<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;

use App\Http\Controllers\ApiController;
use App\Http\Controllers\EntryController;
use App\Http\Controllers\BookkeeperController;
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
    return redirect()->route('login');
});

// Auth::routes();
Auth::routes(['register' => false]);

// Route::get('/test-api', [App\Http\Controllers\ApiController::class, 'test']);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware('is_admin')->group(function () {
    Route::prefix('admin')->name('admin.')->group(function () {
        Route::prefix('users')->name('users')->group(function () {
            Route::get('/',[HomeController::class, 'adminUsers']);
            Route::get('/edit',[HomeController::class, 'adminUsersEdit'])->name('.edit');
            Route::get('/delete',[HomeController::class, 'adminUsersDelete'])->name('.delete');
            Route::get('/create',[HomeController::class, 'adminUsersCreate'])->name('.create');
        });
        Route::get('/home',[HomeController::class, 'adminHome'])->name('home');
        Route::get('/permission',[HomeController::class, 'adminPermissions'])->name('permissions');
        Route::prefix('carriers')->name('carriers.')->group( function () {
            Route::get('/index',[AdminController::class, 'adminCarriers'])->name('index');
            Route::post('/create',[AdminController::class, 'adminCarrierCreate'])->name('create');
            Route::post('/edit',[AdminController::class, 'adminCarrierEdit'])->name('edit');
            Route::post('/destroy',[AdminController::class, 'adminCarrierDelete'])->name('delete');
        });

        Route::prefix('clients')->name('clients')->group( function () {
            Route::get('/',[HomeController::class, 'adminClients']);
            Route::get('/{id}/profile',[HomeController::class, 'adminClientsProfile'])->name('.profile');
            Route::get('/create',[HomeController::class, 'adminClientsCreate'])->name('.create');
            Route::get('/filter1',[HomeController::class, 'adminClientsFilter1'])->name('.filter1');
            Route::get('/filter2',[HomeController::class, 'adminClientsFilter2'])->name('.filter2');
            Route::post('/create',[HomeController::class, 'adminClientsCreateNew'])->name('.create.new');
            Route::get('/information',[HomeController::class, 'adminClientsInformation'])->name('.information.edit');
            Route::get('/notes',[HomeController::class, 'adminClientsNotes'])->name('.notes.edit');
            Route::get('/income_highlights_edit',[HomeController::class, 'adminIncomeSource'])->name('.income.edit');
            Route::get('/deduction_highlights_edit',[HomeController::class, 'adminDeductionSource'])->name('.deduction.edit');
        });

        Route::prefix('category')->name('category')->group(function () {
            Route::get('/',[HomeController::class, 'adminCategory']);
            Route::get('/create',[HomeController::class, 'adminCategoryCreate'])->name('.create');
            Route::get('/edit',[HomeController::class, 'adminCategoryEdit'])->name('.edit');
            Route::get('/delete',[HomeController::class, 'adminCategoryDelete'])->name('.delete');
        });

        Route::prefix('highlights')->name('highlights')->group(function () {
            Route::get('/',[HomeController::class, 'adminHighlights']);
            Route::get('/create',[HomeController::class, 'adminHighlightsCreate'])->name('.create');
            Route::get('/edit',[HomeController::class, 'adminHighlightsEdit'])->name('.edit');
            Route::get('/delete',[HomeController::class, 'adminHighlightsDelete'])->name('.delete');

            Route::prefix('income')->name('.income')->group(function () {
                Route::get('/', [HomeController::class, 'adminHighlightsIncome']);
                Route::get('/create', [HomeController::class, 'adminHighlightsIncomeCreate'])->name('.create');
                Route::get('/edit', [HomeController::class, 'adminHighlightsIncomeEdit'])->name('.edit');
                Route::get('/delete', [HomeController::class, 'adminHighlightsIncomeDelete'])->name('.delete');
            });
            Route::prefix('deduction')->name('.deduction')->group(function () {
                Route::get('/', [HomeController::class, 'adminHighlightsDeduction']);
                Route::get('/create', [HomeController::class, 'adminHighlightsDeductionCreate'])->name('.create');
                Route::get('/edit', [HomeController::class, 'adminHighlightsDeductionEdit'])->name('.edit');
                Route::get('/delete', [HomeController::class, 'adminHighlightsDeductionDelete'])->name('.delete');
            });
        });

        Route::get('/dependents/edit',[HomeController::class, 'adminDependentEdit'])->name('dependents.edit');
        Route::get('/spouse/edit',[HomeController::class, 'adminSpouseEdit'])->name('spouse.edit');
        Route::get('/home_property/edit',[HomeController::class, 'adminHomePropertyEdit'])->name('home_property.edit');
        Route::get('/products/edit',[HomeController::class, 'adminInsuranceProductEdit'])->name('product.edit');
        Route::get('/opportunities',[HomeController::class, 'adminOpportunities'])->name('opportunities');
        Route::get('/marketing',[HomeController::class, 'adminMarketing'])->name('marketing');

        Route::prefix('sort-by')->name('clients.')->group(function () {
            Route::get('/id', [HomeController::class, 'adminSortById'])->name('sortid');
            Route::get('/name', [HomeController::class, 'adminSortByName'])->name('sortname');
            Route::get('/phone', [HomeController::class, 'adminSortByPhone'])->name('sortphone');
            Route::get('/createBy', [HomeController::class, 'adminSortByCreatedBy'])->name('createdby');
            Route::get('/dataadded', [HomeController::class, 'adminSortByDataAdded'])->name('dataadded');
            Route::get('/last_touch', [HomeController::class, 'adminSortByLastTouch'])->name('lastby');
        });
        Route::prefix('campaign')->name('campaign.')->group(function () {
            Route::post('/create', [AdminController::class, 'adminCreateCampaign'])->name('create');
            Route::post('/edit', [AdminController::class, 'adminEditCampaign'])->name('edit');
            Route::post('/delete', [AdminController::class, 'adminDeleteCampaign'])->name('delete');
            Route::post('/copy', [ApiController::class, 'adminCopyCampaign'])->name('copy');
        });
    });
});


Route::post('/product-delete', [App\Http\Controllers\ApiController::class, 'deleteProduct']);
Route::post('/api-search', [App\Http\Controllers\ApiController::class, 'adminApiSearch'])->name('autocomplete.fetch');
Route::post('/dependent-del', [App\Http\Controllers\ApiController::class, 'adminApiDependentDel'])->name('dependent.del');
Route::post('/user-search', [App\Http\Controllers\ApiController::class, 'userApiSearch'])->name('autocomplete.user.fetch');
Route::get('/download-sql', [App\Http\Controllers\ApiController::class, 'backup_database']);
Route::post('admin/upload-csv', [App\Http\Controllers\AdminController::class, 'adminUploadCsv'])->name('admin.database.upload')->middleware('is_admin');
Route::get('admin/test', [App\Http\Controllers\CronjobController::class, 'index']);

#Data-entry
Route::middleware('is_entry')->group(function () {
    Route::prefix('entry')->name('entry.')->group(function () {
        Route::get('/home', [EntryController::class, 'index'])->name('home');
        Route::prefix('clients')->group(function () {
            Route::get('/', [EntryController::class, 'entryClients'])->name('clients');
            Route::get('/{id}/profile', [EntryController::class, 'entryClientsProfile'])->name('clients.profile');
            Route::get('/create', [EntryController::class, 'entryClientsCreate'])->name('clients.create');
            Route::get('/filter1', [EntryController::class, 'entryClientsFilter1'])->name('clients.filter1');
            Route::get('/filter2', [EntryController::class, 'entryClientsFilter2'])->name('clients.filter2');
            Route::post('/create', [EntryController::class, 'entryClientsCreateNew'])->name('clients.create.new');
            Route::get('/information', [EntryController::class, 'entryClientsInformation'])->name('information.edit');
            Route::get('/notes', [EntryController::class, 'entryClientsNotes'])->name('notes.edit');
            Route::get('/income_highlights_edit', [EntryController::class, 'entryIncomeSource'])->name('income.edit');
            Route::get('/deduction_highlights_edit', [EntryController::class, 'entryDeductionSource'])->name('deduction.edit');
        });
        Route::get('/products/edit', [EntryController::class, 'entryInsuranceProductEdit'])->name('product.edit');
        Route::get('/dependents/edit', [EntryController::class, 'entryDependentEdit'])->name('dependents.edit');
        Route::get('/spouse/edit', [EntryController::class, 'entrySpouseEdit'])->name('spouse.edit');
        Route::get('/home_property/edit', [EntryController::class, 'entryHomePropertyEdit'])->name('home_property.edit');
        Route::get('/opportunities', [EntryController::class, 'entryOpportunities'])->name('opportunities');
        Route::prefix('sort-by')->name('clients.')->group(function () {
            Route::get('/id', [EntryController::class, 'entrySortById'])->name('sortid');
            Route::get('/name', [EntryController::class, 'entrySortByName'])->name('sortname');
            Route::get('/phone', [EntryController::class, 'entrySortByPhone'])->name('sortphone');
            Route::get('/createBy', [EntryController::class, 'entrySortByCreatedBy'])->name('createdby');
            Route::get('/dataadded', [EntryController::class, 'entrySortByDataAdded'])->name('dataadded');
            Route::get('/last_touch', [EntryController::class, 'entrySortByLastTouch'])->name('lastby');
        });
    });
});

#Book-keeper
Route::get('/bookkeepr/home', [App\Http\Controllers\BookkeeperController::class, 'index'])->name('bookkeeper.home')->middleware('is_bookkeeper');
Route::get('/bookkeeper/clients', [App\Http\Controllers\BookkeeperController::class, 'clients'])->name('bookkeeper.clients')->middleware('is_bookkeeper');
Route::get('bookkeeper/clients/create', [App\Http\Controllers\BookkeeperController::class, 'bookkeeperClientsCreate'])->name('bookkeeper.clients.create')->middleware('is_bookkeeper');
Route::post('bookkeeper/clients/create', [App\Http\Controllers\BookkeeperController::class, 'bookkeeperClientsCreateNew'])->name('bookkeeper.clients.create.new')->middleware('is_bookkeeper');
Route::get('bookkeeper/clients/filter1', [App\Http\Controllers\BookkeeperController::class, 'bookkeeperClientsFilter1'])->name('bookkeeper.clients.filter1')->middleware('is_bookkeeper');
Route::get('bookkeeper/clients/filter2', [App\Http\Controllers\HomeController::class, 'adminClientsFilter2'])->name('bookkeeper.clients.filter2')->middleware('is_admin');
Route::get('bookkeeper/clients/{id}/profile', [App\Http\Controllers\BookkeeperController::class, 'bookkeeperClientsProfile'])->name('bookkeeper.clients.profile')->middleware('is_bookkeeper');
Route::post('bookkeeper/clients/information', [App\Http\Controllers\BookkeeperController::class, 'bookkeeperClientsInformation'])->name('bookkeeper.information.edit')->middleware('is_bookkeeper');
Route::post('bookkeeper/clients/bio', [App\Http\Controllers\BookkeeperController::class, 'bookkeeperClientsBio'])->name('bookkeeper.bio.edit')->middleware('is_bookkeeper');
