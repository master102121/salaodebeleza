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
        Schema::create('bookings', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('nome', 200);
            $table->integer('user_id')->nullable();
            $table->string('dia', 50);
            $table->string('periodo', 50);
            $table->integer('cliente');
            $table->string('servicos');
            $table->string('valor', 12);
            $table->integer('forma_pag')->default(1);
            $table->text('obs')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->string('status', 150)->default('agendado');
            $table->integer('profissional_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bookings');
    }
};
