<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOffonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offon', function (Blueprint $table) {
            $table->id();
            $table->integer('election')->nullable();
            $table->integer('language')->nullable();
            $table->integer('headline')->nullable();
            $table->integer('header_ads')->nullable();
            $table->integer('facebook_page')->nullable();
            $table->integer('covid19')->nullable();
            $table->integer('namaz')->nullable();
            $table->integer('notice')->nullable();
            $table->integer('photogallery')->nullable();
            $table->integer('biggopti')->nullable();
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
        Schema::dropIfExists('offon');
    }
}
