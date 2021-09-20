<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBulatinsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bulatins', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('title_slug')->unique();
            $table->string('image');
            $table->text('description');
            $table->unsignedBigInteger('writer_id')->nullable();
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
        Schema::dropIfExists('bulatins');
    }
}
