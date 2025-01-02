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
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->string('user_id');
            $table->string('title');
            $table->text('short_description');
            $table->longtext('long_description');
            $table->text('image');
            $table->text('post_date');
            $table->text('post_timestamp');
            $table->integer('hit_count')->default(0);
            $table->integer('comment_count')->default(0);
            $table->tinyinteger('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('blogs');
    }
};
