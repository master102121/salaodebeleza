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
        Schema::create('medicos', function (Blueprint $table) {
            $table->integer('id', true);
            $table->unsignedBigInteger('user_id');
            $table->string('especialidade_id', 200);
            $table->boolean('type');
            $table->string('nome');
            $table->string('value');
            $table->timestamp('created_at')->nullable()->useCurrent();
            $table->timestamp('updated_at')->nullable();
            $table->string('hospital_ids', 200)->nullable();
            $table->string('convenios_ids', 200)->nullable();
            $table->integer('status')->nullable()->default(1);
            $table->string('telefone1', 25)->nullable();
            $table->string('telefone2', 25)->nullable();
            $table->integer('sus')->default(0);
            $table->integer('gender');
            $table->text('descricao')->nullable();
            $table->string('datavisita', 25)->nullable();
            $table->integer('user1_id')->nullable();
            $table->integer('user2_id')->nullable();
            $table->integer('agenda')->default(1);
            $table->string('cidade', 70)->nullable();
            $table->string('rua')->nullable();
            $table->string('state', 5)->nullable()->default('SP');
            $table->string('bairro', 200)->nullable();
            $table->string('numero', 9)->nullable();
            $table->string('ibge', 200)->nullable();
            $table->string('cep', 25)->nullable();
            $table->string('dataagenda', 25)->nullable();
            $table->string('hora', 24)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('medicos');
    }
};
