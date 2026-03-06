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
        Schema::create('coresdosistemas', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name', 200);
            $table->string('color', 50);
            $table->string('default', 25);
            $table->integer('created_by')->default(1);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->integer('status')->default(1);
            $table->string('deleted_at', 25)->nullable();
            $table->string('alias', 50);
            $table->integer('onlyadmins')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coresdosistemas');
    }
};
