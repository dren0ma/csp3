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
        Schema::table('news', function ($table){
            $table->foreign('platform')
                ->references('id')
                ->on('platforms')
                ->onDelete('cascade')
                ->onUpdate('cascade');
        });
        Schema::table('reviews', function ($table){
            $table->foreign('platform')
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
        Schema::table('news', function (Blueprint $table) {
            $table->dropColumn('platform');
        });

        Schema::table('reviews', function (Blueprint $table) {
            $table->dropColumn('platform');
        });
    }
}
