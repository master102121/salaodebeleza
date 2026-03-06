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
        Schema::create('dadoslinks', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('lnkfacitadores');
            $table->string('linkplantonistas');
            $table->string('lnkmedicoscooper');
            $table->string('lnkcampanha');
            $table->string('lnkrelatoriocamp');
            $table->string('versao', 12);
            $table->string('newlink');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dadoslinks');
    }
};
