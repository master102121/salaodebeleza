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
        Schema::create('semanais', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('segunda');
            $table->string('terca');
            $table->string('quarta');
            $table->string('quinta');
            $table->string('sexta');
            $table->string('sabado');
            $table->string('domingo');
            $table->integer('user_id');
            $table->timestamp('created_at')->useCurrent();
            $table->string('updated_at', 25)->nullable();
            $table->integer('status')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('semanais');
    }
};
