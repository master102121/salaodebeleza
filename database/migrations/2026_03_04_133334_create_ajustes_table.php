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
        Schema::create('ajustes', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name', 200);
            $table->string('valor')->nullable();
            $table->string('alias_name')->nullable();
            $table->integer('created_by')->default(1);
            $table->timestamp('created_at')->useCurrent();
            $table->string('updated_at', 25)->nullable();
            $table->integer('status')->default(1);
            $table->string('deleted_at', 25)->nullable();
            $table->string('model', 50);
            $table->string('arquivo', 30);
            $table->integer('onlyadmins')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ajustes');
    }
};
