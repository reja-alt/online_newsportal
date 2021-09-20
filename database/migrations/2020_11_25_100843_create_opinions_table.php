<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOpinionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('opinions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title_bn');
            $table->string('title_en');
            $table->text('details_bn');
            $table->text('details_en');
            $table->unsignedBigInteger('writer_id')->nullable();
            $table->foreign('writer_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('image');
            $table->date('published_date');
            $table->integer('status');
  
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
        Schema::dropIfExists('opinions');
    }
}
