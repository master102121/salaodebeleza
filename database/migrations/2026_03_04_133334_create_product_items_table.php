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
        Schema::create('product_items', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('category_id');
            $table->integer('subcategory_id');
            $table->timestamp('created_at')->useCurrent();
            $table->string('updated_at', 25)->nullable();
            $table->integer('status')->default(1);
            $table->integer('promotional')->default(0);
            $table->string('name');
            $table->string('unitprice', 25);
            $table->text('imgurl');
            $table->text('obs')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_items');
    }
};
