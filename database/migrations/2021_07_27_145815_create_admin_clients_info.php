<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdminClientsInfo extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admin_clients_info', function (Blueprint $table) {
            $table->id();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('middle_name')->nullable();
            $table->date('dob_date')->nullable();
            $table->date('dod_date')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('category')->nullable();
            $table->string('campaign_id')->nullable();
            $table->string('primary_phone')->nullable();
            $table->string('other_phone')->nullable();
            $table->string('address1')->nullable();
            $table->string('address2')->nullable();
            $table->string('city')->nullable();
            $table->string('province')->nullable();
            $table->string('postal_code')->nullable();
            $table->string('country')->nullable();
            $table->string('citizenship')->nullable();
            $table->string('income_highlights')->nullable();
            $table->string('deduction_highlights')->nullable();
            $table->string('attached_doc')->nullable();
            $table->text('client_bio')->nullable();
            $table->string('sin')->nullable();
            $table->string('marital_status')->nullable();
            $table->string('dependents')->nullable();
            $table->string('home_status')->nullable();
            $table->text('notes')->nullable();
            $table->string('bs_code')->nullable();
            $table->string('full_name')->nullable();
            $table->string('resident')->nullable();
            $table->string('home_own_status')->nullable();
            $table->integer('rent_fee')->nullable();
            $table->integer('home_tax_fee')->nullable();
            $table->string('dependents_ids')->nullable();
            $table->string('email')->nullable();
            $table->integer('spouse_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('admin_clients_info');
    }
}
