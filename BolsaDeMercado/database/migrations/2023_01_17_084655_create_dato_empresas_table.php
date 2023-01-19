<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dato_empresas', function (Blueprint $table) {
            $table->id();
            $table->integer('id_empresa');
            $table->integer('Volume');
            $table->decimal('AdjClose');
            $table->decimal('Close');
            $table->decimal('Low');
            $table->decimal('High');
            $table->decimal('Open');
            $table->date('Date');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dato_empresas');
    }
};
