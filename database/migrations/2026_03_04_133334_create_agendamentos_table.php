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
        Schema::create('agendamentos', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_cliente')->nullable();
            $table->unsignedInteger('id_profissional')->nullable();
            $table->string('descricao')->nullable();
            $table->string('valor', 50);
            $table->integer('servico_id');
            $table->timestamp('start_date')->nullable();
            $table->string('end_date', 12)->nullable();
            $table->enum('status', ['confirmado', 'cancelado']);
            $table->enum('color', ['yellow', 'green', 'red', 'blue', 'purple']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('agendamentos');
    }
};
