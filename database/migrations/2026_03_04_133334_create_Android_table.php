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
        Schema::create('Android', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name', 50);
            $table->string('alias_name', 50);
            $table->timestamp('created_at')->useCurrent();
            $table->string('updated_at', 25)->nullable();
            $table->integer('status')->default(1);
            $table->string('valor');
            $table->integer('updated_by')->nullable();
            $table->string('tipodevalor', 50)->default('texto');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Android');
    }
};
