<?php

namespace App\Http\Controllers\Api;
use Illuminate\Support\Facades\DB;

use App\Http\Controllers\Controller;
use App\Http\Resources\Empresa\DatosResource;
use App\Models\datoEmpresa;
use Illuminate\Http\Request;

class DatoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return DatosResource::collection(datoEmpresa::latest()->paginate());

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\datoEmpresa  $datoEmpresa
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $dato = datoEmpresa::findOrFail($id);
        // return $dato;
        $datoEmpresa = DB::table('dato_empresas')->where('id_empresa', '=', $id)->get();
        return $datoEmpresa;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\datoEmpresa  $datoEmpresa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $datoEmpresa)
    {
        $dato = datoEmpresa::find($datoEmpresa);
        $dato->update($request->all());
        return $dato;

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\datoEmpresa  $datoEmpresa
     * @return \Illuminate\Http\Response
     */
    public function destroy(datoEmpresa $datoEmpresa)
    {
        if ($datoEmpresa->delete()) {
            return response()->json([
                'message' => 'Succes'
            ], 204);
        }
        return response()->json([
            'message' => 'not found'
        ], 404);
    }
}
