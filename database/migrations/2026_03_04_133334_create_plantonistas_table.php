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
        Schema::create('plantonistas', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('inicio', 25);
            $table->string('fim', 25);
            $table->integer('indaiatuba_1');
            $table->integer('indaiatuba_2');
            $table->integer('salto_1');
            $table->integer('salto_2');
            $table->integer('itu_1');
            $table->integer('itu_2');
            $table->timestamp('created_at')->useCurrent();
            $table->string('updated_at', 25)->nullable();
            $table->integer('status')->default(1);
            $table->integer('user_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('plantonistas');
    }
};
