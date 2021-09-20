<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBdCovid19sTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bd_covid19s', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('cases_bn');
            $table->integer('cases_en');
            $table->integer('death_bn');
            $table->integer('death_en');
            $table->integer('cure_bn');
            $table->integer('cure_en');
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
        Schema::dropIfExists('bd_covid19s');
    }
}
