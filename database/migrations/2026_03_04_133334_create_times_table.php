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
        Schema::create('times', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('nome', 200);
            $table->integer('user_id')->nullable();
            $table->string('convenio_id', 200)->nullable();
            $table->text('obs')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->string('updated_at', 25)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('times');
    }
};
