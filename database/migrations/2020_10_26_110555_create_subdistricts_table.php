<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubdistrictsTable extends Migration
{
  
    public function up()
    {
        Schema::create('subdistricts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('div_id')->unsigned();
            $table->foreign('div_id')->references('id')->on('divisions')->onDelete('cascade');
            $table->integer('district_id');
            $table->foreign('district_id')->references('id')->on('districts')->onDelete('cascade');

            $table->string('subdis_name_bn');
            $table->string('subdis_name_en');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('subdistricts');
    }
}
