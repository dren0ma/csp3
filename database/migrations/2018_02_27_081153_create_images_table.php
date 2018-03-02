<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('images', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('news_id')->unsigned()->nullable();
            $table->integer('review_id')->unsigned()->nullable();
            $table->string('filename');
            $table->timestamps();
        });

        Schema::table('images', function ($table){
            $table->foreign('news_id')
                ->references('id')
                ->on('news')
                ->onDelete('cascade')
                ->onUpdate('cascade');

            $table->foreign('review_id')
                ->references('id')
                ->on('reviews')
                ->onDelete('cascade')
                ->onUpdate('cascade');
        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('images');
    }
}
