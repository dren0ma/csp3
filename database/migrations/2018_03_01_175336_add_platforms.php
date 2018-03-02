<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPlatforms extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('news_platform', function ($table){
            $table->foreign('news_id')
                ->references('id')
                ->on('news')
                ->onDelete('cascade')
                ->onUpdate('cascade');
            $table->foreign('platform_id')
                ->references('id')
                ->on('platforms')
                ->onDelete('cascade')
                ->onUpdate('cascade');
        });

        Schema::table('platform_review', function ($table){
            $table->foreign('review_id')
                ->references('id')
                ->on('reviews')
                ->onDelete('cascade')
                ->onUpdate('cascade');
            $table->foreign('platform_id')
                ->references('id')
                ->on('platforms')
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
        //
    }
}
