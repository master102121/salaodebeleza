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
        Schema::create('meals', function (Blueprint $table) {
            $table->integer('idMeal', true);
            $table->string('strMeal')->nullable();
            $table->string('strDrinkAlternate')->nullable();
            $table->string('strCategory')->nullable();
            $table->string('strArea')->nullable();
            $table->text('strInstructions')->nullable();
            $table->string('strMealThumb')->nullable();
            $table->string('strTags')->nullable();
            $table->text('strYoutube')->nullable();
            $table->string('strIngredient1')->nullable();
            $table->string('strIngredient2')->nullable();
            $table->string('strIngredient3')->nullable();
            $table->string('strIngredient4')->nullable();
            $table->string('strIngredient5')->nullable();
            $table->string('strIngredient6')->nullable();
            $table->string('strIngredient7')->nullable();
            $table->string('strIngredient8')->nullable();
            $table->string('strIngredient9')->nullable();
            $table->string('strIngredient10')->nullable();
            $table->string('strIngredient11')->nullable();
            $table->string('strIngredient12')->nullable();
            $table->string('strIngredient13')->nullable();
            $table->string('strIngredient14')->nullable();
            $table->string('strIngredient15')->nullable();
            $table->string('strIngredient16')->nullable();
            $table->string('strIngredient17')->nullable();
            $table->string('strIngredient18')->nullable();
            $table->string('strIngredient19')->nullable();
            $table->string('strIngredient20')->nullable();
            $table->string('strMeasure1')->nullable();
            $table->string('strMeasure2')->nullable();
            $table->string('strMeasure3')->nullable();
            $table->string('strMeasure4')->nullable();
            $table->string('strMeasure5')->nullable();
            $table->string('strMeasure6')->nullable();
            $table->string('strMeasure7')->nullable();
            $table->string('strMeasure8')->nullable();
            $table->string('strMeasure9')->nullable();
            $table->string('strMeasure10')->nullable();
            $table->string('strMeasure11')->nullable();
            $table->string('strMeasure12')->nullable();
            $table->string('strMeasure13')->nullable();
            $table->string('strMeasure14')->nullable();
            $table->string('strMeasure15')->nullable();
            $table->string('strMeasure16')->nullable();
            $table->string('strMeasure17')->nullable();
            $table->string('strMeasure18')->nullable();
            $table->string('strMeasure19')->nullable();
            $table->string('strMeasure20')->nullable();
            $table->string('strSource')->nullable();
            $table->string('strImageSource')->nullable();
            $table->string('strCreativeCommonsConfirmed')->nullable();
            $table->string('dateModified')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->nullable()->useCurrent();
            $table->integer('idIngredient');
            $table->text('strIngredient')->nullable();
            $table->text('strDescription')->nullable();
            $table->string('strType')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('meals');
    }
};
