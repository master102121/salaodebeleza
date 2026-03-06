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
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('file_id')->nullable();
            $table->string('name');
            $table->string('last_name')->after('name')->nullable();
            $table->string('email')->unique();
            $table->string('telefone', 50)->nullable();
            $table->text('endereco')->nullable();
            $table->string('cidade', 70)->nullable();
            $table->string('rua')->nullable();
            $table->string('cidadeufbairrostr')->nullable();
            $table->string('area_id')->nullable();
            $table->string('categoria', 50)->nullable()->default('cab');
            $table->integer('isadmin')->default(0);
            $table->integer('membro')->nullable()->comment('1=colih, 2=fac, 3=gvp, 4=outros');
            $table->integer('concordo')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('menuroles')->default('user');
            $table->rememberToken();
            $table->timestamp('created_at')->nullable();
            $table->integer('status')->default(0);
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->softDeletes();
            $table->string('stripe_id')->nullable()->index();
            $table->string('pm_type')->nullable();
            $table->string('pm_last_four', 4)->nullable();
            $table->timestamp('trial_ends_at')->nullable();
            $table->string('player_id')->nullable();
            $table->string('versionname', 150)->nullable();
            $table->string('versioncode', 200)->nullable();
            $table->string('token_firebase')->nullable();
            $table->string('inicio', 25)->nullable();
            $table->integer('codigo')->nullable();
            $table->string('imagem')->nullable();
            $table->text('historico')->nullable();
            $table->string('usernamecad', 150)->nullable();
            $table->string('Onesignal_device_id', 150)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
