<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNonProfitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('non_profits', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title_bn');
            $table->string('title_en');
            $table->text('description_bn');
            $table->text('description_en');
            $table->string('image');
            $table->decimal('amount',9,3);;
            $table->date('end_date');

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
        Schema::dropIfExists('non_profits');
    }
}
