<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubcategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subcategories', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('category_id')->unsigned();

            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->string('name_bn');
            $table->string('name_en');
            $table->string('slug_bn')->unique();
            $table->string('slug_en')->unique();
            $table->integer('show_on_header');
            
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
        Schema::dropIfExists('subcategories');
    }
}
