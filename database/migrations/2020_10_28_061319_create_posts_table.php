<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('cat_id')->unsigned();
            $table->foreign('cat_id')->references('id')->on('categories')->onDelete('cascade');
            $table->integer('sub_cat_id')->unsigned();
            $table->foreign('sub_cat_id')->references('id')->on('subcategories')->onDelete('cascade');
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('division_id')->unsigned();
            $table->foreign('division_id')->references('id')->on('divisions')->onDelete('cascade');
            $table->integer('district_id')->unsigned();
            $table->foreign('district_id')->references('id')->on('districts')->onDelete('cascade');
            $table->integer('subdistrict_id')->unsigned();
            $table->foreign('subdistrict_id')->references('id')->on('subdistricts')->onDelete('cascade');
            $table->string('title_en');
            $table->string('title_bn');
            $table->string('image');
            $table->text('details_en');
            $table->text('details_bn');
            $table->date('published_date');
            $table->string('tags_en');
            $table->string('tags_bn');
            $table->string('slug_title')->unique();
            $table->string('headline_en');
            $table->string('headline_bn');
            $table->string('big_thumbnail');
            $table->integer('status');
            $table->integer('thumbnail_select');
            $table->integer('headline');
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
        Schema::dropIfExists('posts');
    }
}
