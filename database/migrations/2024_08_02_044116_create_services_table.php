<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->integer('category_id');
            $table->text('short_description')->nullable();
            $table->longText('long_description')->nullable();
            $table->text('image')->nullable();
            $table->tinyInteger('feather_status')->default(1);
            $table->tinyInteger('home_status')->default(1);
            $table->tinyInteger('status')->default(1);
            $table->tinyInteger('order_status')->default(1);
            $table->text('other_image')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('services');
    }
};
