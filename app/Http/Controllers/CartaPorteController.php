<?php

namespace App\Http\Controllers;

use App\Actividad;
use App\CartaPorte;
use App\Clientes;
use App\Cruce;
use App\DatosFacturacion;
use App\Exportacion;
use App\Facturables;
use App\Http\Requests\CartaPorteRequest;
use App\Importacion;
use App\Internacional;
use App\Nacional;
use App\Operadores;
use App\Rutas;
use App\Unidades;
use Barryvdh\DomPDF\Facade as PDF;
use Carbon\Carbon;
use DateTime;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class CartaPorteController extends Controller
{
    public function abiertaToRelease(Request $request){
        $contador = 0;
        for ($i=0; $i<count($request->valoresIds); $i++){
            CartaPorte::find($request->valoresIds[$i])->update(['status'=>'RELEASE']); //CAMBIAR A release
            $cartasPorte[$i] = CartaPorte::find($request->valoresIds[$i]); //primaryKey carta porte
            $datosFacturacion = DatosFacturacion::where('rutas','=',$cartasPorte[$i]->rutas)->get();
            $arreglo[$i] = $datosFacturacion;
            Facturables::saveFacturables($datosFacturacion, $cartasPorte, $i);
        }
        return $request;
    }

    public function getPdfCartaPorte($ruta)
    {
        setlocale(LC_ALL, "es_ES");
        $fecha = strtoupper(strftime("%A %d de %B del %Y"));
        $cartaPorte = CartaPorte::where("id", "=", $ruta)->get();
        foreach($cartaPorte as $cP){

            if ($cP->tipo == "N"){
                $nacional = Nacional::all();
                $tipo = $nacional->where("cartaPorte", "=", $ruta)->first();
                $letra = "N";

            }
            elseif ($cP->tipo == "I") {
                $importacion = Importacion::all();
                $tipo = $importacion->where("cartaPorte", "=", $ruta)->first();
                $letra = "I";
            }

            elseif ($cP->tipo == "E") {
                $exportacion = Exportacion::all();
                $tipo = $exportacion->where("cartaPorte", "=", $ruta)->first();
                $letra = "E";

            }

            elseif ($cP->tipo == "C") {
                $cruce = Cruce::all();
                $tipo = $cruce->where("cartaPorte", "=", $ruta)->first();
                $letra = "C";

            }
            }
        $pdf = PDF::loadView('cartaPorte/cartaPortePDF', ['cartaPorte'=> $cartaPorte, 'fecha'=>$fecha, 'tipo'=>$tipo, 'letra'=>$letra]);
        return $pdf->download('cartaPorte.pdf');

        //return view('cartaPorte/cartaPortePDF', ['cartaPorte'=> $cartaPorte, 'fecha'=>$fecha]);
    }

    public function getExcelCartaPorte($id){
        $cartaPorte = CartaPorte::where('id', '=', $id)->first();
        \Excel::load('REMISION.xlsx', function($reader) use($cartaPorte){
            $reader->sheet('hoja1', function($sheet) use($cartaPorte) {
                $sheet->cell('J3', function($cell) use($cartaPorte) {
                    // manipulate the cell
                    $cell->setValue($cartaPorte->id);
                });
            });
        })->download();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $repetido = array();
        $ultimo = array();
        $tipos = ['Nacional', 'Importacion', 'Exportacion', 'Cruce'];
        $cartaPorte = CartaPorte::orderBy('id', 'DESC')->paginate(10);
        $tamamoActividad = Actividad::where("tabla", "like", "%CartaPorte")->count();
        if ($tamamoActividad != 0) {
            for ($i = 1; $i <= $tamamoActividad; $i++) {
                $repetido[$i] = Actividad::where([
                    ["tabla", "like", "%CartaPorte", "and"],
                    ["ref", "=", $i]
                ])->get();
            }
            $tamRepetido = sizeof($repetido);
            for ($j = 1; $j <= $tamRepetido; $j++) {
                if ($repetido[$j]->last() != null){
                    $ultimo[$j] = $repetido[$j]->last();
                }
            }

        }else{
            $ultimo = array(0 =>0);
        }

        $release = CartaPorte::where('status','=','abierta')->get();
        $nacional = Nacional::all();
        $importacion = Importacion::all();
        $cruce = Cruce::all();
        $exportacion = Exportacion::all();
        return view('cartaPorte/cartasPorte')
            ->with('nacional', $nacional)
            ->with('importacion', $importacion)
            ->with('cruce', $cruce)
            ->with('exportacion', $exportacion)
            ->with('release', $release)
            ->with('ultimo', $ultimo)
            ->with('cartaPorte', $cartaPorte)
            ->with('tipos', $tipos);


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cartaPorte = CartaPorte::all();
        $id = $cartaPorte->last();
        $rutas = Rutas::all();
        $unidades = Unidades::where("tipo", "=", "1")->get();
        $remolques = Unidades::where("tipo", "=", "2")->get();
        $operadores = Operadores::all();
        $actividades = Actividad::all();
        $clientes = Clientes::all();
        return view('cartaPorte/cartaPorteCreate')
            ->with('clientes', $clientes)
            ->with('rutas', $rutas)
            ->with('unidades', $unidades)
            ->with('remolques', $remolques)
            ->with('operadores', $operadores)
            ->with('actividades', $actividades)
            ->with('id', $id);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CartaPorteRequest $request)
    {
        $cartaPorte = new CartaPorte();
        $cartaPorte->tipo = $request->tipo;
        $cartaPorte->fecha = $request->fecha;
        $cartaPorte->rutas = $request->rutas;
        $cartaPorte->unidades = $request->unidad;
        $cartaPorte->remolques = $request->remolque;
        $cartaPorte->operadores = $request->operador;
        $cartaPorte->referencia = $request->referencia;
        $cartaPorte->fechaDeEmbarque = $request->fechaDeEmbarque;
        $cartaPorte->fechaDeEntrega = $request->fechaDeEntrega;
        $cartaPorte->save();

        $nacional = new Nacional();
        $importacion = new Importacion();
        $exportacion = new Exportacion();
        $cruce = new Cruce();

        if ($request->tipo == "N"){
            $nacional->cartaPorte = $request->id;
            $nacional->save();
        }
        elseif ($request->tipo == "I") {
            $importacion->cartaPorte = $request->id;
            $importacion->save();
        }

        elseif ($request->tipo == "E") {

            $exportacion->cartaPorte = $request->id;
            $exportacion->save();
        }

        elseif ($request->tipo == "C") {
            $cruce->cartaPorte = $request->id;
            $cruce->save();
        }

        $status = 'guardado';
        $actividad = new Actividad();
        $actividad->tabla = CartaPorte::class;
            $cartaPorteAll = CartaPorte::all();
            $last = $cartaPorteAll->last();
            $idActual = $last->id;
            $actividad->ref = $idActual;
        $actividad->fecha = new DateTime();
        $actividad->status = $status;
        $actividad->descripcion = $status;
        $actividad->usuario = auth()->user()->name;
        $actividad->save();
        return redirect()->route('cartaPorte.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CartaPorte  $cartaPorte
     * @return \Illuminate\Http\Response
     */
    public function show(CartaPorte $cartaPorte)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CartaPorte  $cartaPorte
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $rutas = Rutas::all();
        $unidades = Unidades::where("tipo", "=", "1")->get();
        $remolques = Unidades::where("tipo", "=", "2")->get();
        $operadores = Operadores::all();
        $clientes = Clientes::all();
        $cartaPorte = CartaPorte::findOrFail($id);
        return view('cartaPorte/cartaPorteEdit')
            ->with('cartaPorte', $cartaPorte)
            ->with('clientes', $clientes)
            ->with('rutas', $rutas)
            ->with('unidades', $unidades)
            ->with('remolques', $remolques)
            ->with('operadores', $operadores);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CartaPorte  $cartaPorte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //return $request;
        $cartaPorte = $request->except(['_token', '_method']);
        CartaPorte::where('id', '=', $id)->update($cartaPorte);

        $status = 'actualizado';
        $actividad = new Actividad();
        $actividad->tabla = CartaPorte::class;
        $actividad->ref = $id;
        $actividad->fecha = new DateTime();
        $actividad->status = $status;
        $actividad->descripcion = $status;
        $actividad->usuario = auth()->user()->name;
        $actividad->save();
        return redirect()->route('cartaPorte.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CartaPorte  $cartaPorte
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        CartaPorte::destroy($id);

        $status = 'eliminacion';
        $actividad = new Actividad();
        $actividad->tabla = CartaPorte::class;
        $actividad->ref = $id;
        $actividad->fecha = new DateTime();
        $actividad->status = $status;
        $actividad->descripcion = $status;
        $actividad->usuario = auth()->user()->name;
        $actividad->save();
        return redirect()->route('cartaPorte.index');
    }
}
