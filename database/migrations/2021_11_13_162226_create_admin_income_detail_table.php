<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdminIncomeDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admin_income_detail', function (Blueprint $table) {
            $table->id();
            $table->integer('IncomeID')->nullable();
            $table->string('Amount')->nullable();
            $table->integer('DYear')->nullable();
            $table->integer("ClientID")->nullable();
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
        Schema::dropIfExists('admin_income_detail');
    }
}
