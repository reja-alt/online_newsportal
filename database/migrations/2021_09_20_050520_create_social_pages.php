<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSocialPages extends Migration
{
   
    public function up()
    {
        Schema::create('social_pages', function (Blueprint $table) {
            $table->id();
            $table->string('facebook_bn')->nullable();
            $table->string('facebook_en')->nullable();
            $table->string('fb_status')->nullable();
            $table->string('facebook_page')->nullable();
            $table->string('youtube_page')->nullable();
            $table->string('yt_status')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('social_pages');
    }
}
