<?php

//error_reporting(~(E_WARNING));
error_reporting(0);

date_default_timezone_set('America/Mexico_City');

require_once '../../sdk2.php';

// Se especifica el modulo para calculos automaticos
$datos['complemento'] = 'nomina12';

$datos['version_cfdi'] = '3.3';
$datos['cfdi']='../../timbrados/ejemplo_cfdi33_nomina12.xml';
$datos['xml_debug']='../../timbrados/debug_ejemplo_cfdi33_nomina12.xml';
$datos['validacion_local'] = 'NO';

$datos['PAC']['usuario'] = 'DEMO700101XXX';
$datos['PAC']['pass'] = 'DEMO700101XXX';
$datos['PAC']['produccion'] = 'NO';

$datos['conf']['cer'] = '../../certificados/lan7008173r5.cer.pem';
$datos['conf']['key'] = '../../certificados/lan7008173r5.key.pem';
$datos['conf']['pass'] = '12345678a';

$datos['factura']['descuento'] = '3000';
$datos['factura']['fecha_expedicion'] = date('Y-m-d\TH:i:s', time() - 120);
$datos['factura']['folio'] = '100';
$datos['factura']['forma_pago'] = '99';
$datos['factura']['LugarExpedicion'] = '45079';
$datos['factura']['metodo_pago'] = 'PUE';
$datos['factura']['moneda'] = 'MXN';
$datos['factura']['serie'] = 'A';
$datos['factura']['subtotal'] = '4500';
$datos['factura']['tipocambio'] = '1';
$datos['factura']['tipocomprobante'] = 'N';
$datos['factura']['total'] = '1500';

$datos['factura']['RegimenFiscal'] = '601';

$datos['emisor']['rfc'] = 'LAN7008173R5'; //RFC DE PRUEBA
$datos['emisor']['nombre'] = 'ACCEM SERVICIOS EMPRESARIALES SC';  // EMPRESA DE PRUEBA

$datos['receptor']['rfc'] = 'SOHM7509289MA';
$datos['receptor']['nombre'] = 'Publico en General';
$datos['receptor']['UsoCFDI'] = 'P01';

$datos['conceptos'][0]['ClaveProdServ'] = '84111505';
$datos['conceptos'][0]['cantidad'] = '1.00';
$datos['conceptos'][0]['descripcion'] = 'Pago de n�mina';
$datos['conceptos'][0]['valorunitario'] = '4500';
$datos['conceptos'][0]['importe'] = '4500';
$datos['conceptos'][0]['ClaveUnidad'] = 'ACT';
$datos['conceptos'][0]['Descuento'] = '3000';
// Obligatorios
$datos['nomina12']['TipoNomina'] = 'O';
$datos['nomina12']['FechaPago'] = '2016-10-31';
$datos['nomina12']['FechaInicialPago'] = '2016-10-16';
$datos['nomina12']['FechaFinalPago'] = '2016-10-31';
$datos['nomina12']['NumDiasPagados'] = '15';

// Opcionales
$datos['nomina12']['TotalPercepciones'] = '4000';
$datos['nomina12']['TotalDeducciones'] = '3000';
$datos['nomina12']['TotalOtrosPagos'] = '500';

// SUB NODOS OPCIONALES DE NOMINA [Emisor, Percepciones, Deducciones, OtrosPagos, Incapacidades]
// Nodo Emisor, OPCIONALES
$datos['nomina12']['Emisor']['RegistroPatronal'] = '5525665412';
$datos['nomina12']['Emisor']['RfcPatronOrigen'] = 'AAA010101AAA';

// SUB NODOS OBLIGATORIOS DE NOMINA [Receptor]
// Obligatorios de Receptor
$datos['nomina12']['Receptor']['ClaveEntFed'] = 'JAL';
$datos['nomina12']['Receptor']['Curp'] = 'CACF880922HJCMSR03';
$datos['nomina12']['Receptor']['NumEmpleado'] = '060';
$datos['nomina12']['Receptor']['PeriodicidadPago'] = '04';
$datos['nomina12']['Receptor']['TipoContrato'] = '01';
$datos['nomina12']['Receptor']['TipoRegimen'] = '02';

// Opcionales de Receptor
$datos['nomina12']['Receptor']['Antiguedad'] = 'P21W';
$datos['nomina12']['Receptor']['Banco'] = '021';
$datos['nomina12']['Receptor']['CuentaBancaria'] = '1234567890';
$datos['nomina12']['Receptor']['FechaInicioRelLaboral'] = '2016-06-01';
$datos['nomina12']['Receptor']['NumSeguridadSocial'] = '04078873454';
$datos['nomina12']['Receptor']['Puesto'] = 'Desarrollador';
$datos['nomina12']['Receptor']['RiesgoPuesto'] = '2';
$datos['nomina12']['Receptor']['SalarioBaseCotApor'] = '435.50';
$datos['nomina12']['Receptor']['SalarioDiarioIntegrado'] = '435.50';

// NODO PERCEPCIONES
// Totales Obligatorios
$datos['nomina12']['Percepciones']['TotalGravado'] = '4000';
$datos['nomina12']['Percepciones']['TotalExento'] = '0.00';

// Totales Opcionales
$datos['nomina12']['Percepciones']['TotalSueldos'] = '4000';

// Agregar Percepciones (Todos obligatorios)
$datos['nomina12']['Percepciones'][0]['TipoPercepcion'] = '001';
$datos['nomina12']['Percepciones'][0]['Clave'] = '001';
$datos['nomina12']['Percepciones'][0]['Concepto'] = 'Sueldos, Salarios Rayas y Jornales';
$datos['nomina12']['Percepciones'][0]['ImporteGravado'] = '1000';
$datos['nomina12']['Percepciones'][0]['ImporteExento'] = '0.00';

$datos['nomina12']['Percepciones'][1]['TipoPercepcion'] = '049';
$datos['nomina12']['Percepciones'][1]['Clave'] = '014';
$datos['nomina12']['Percepciones'][1]['Concepto'] = 'Premios de asistencia';
$datos['nomina12']['Percepciones'][1]['ImporteGravado'] = '1000';
$datos['nomina12']['Percepciones'][1]['ImporteExento'] = '0.00';

$datos['nomina12']['Percepciones'][2]['TipoPercepcion'] = '010';
$datos['nomina12']['Percepciones'][2]['Clave'] = '013';
$datos['nomina12']['Percepciones'][2]['Concepto'] = 'Premios por puntualidad';
$datos['nomina12']['Percepciones'][2]['ImporteGravado'] = '1000';
$datos['nomina12']['Percepciones'][2]['ImporteExento'] = '0.00';

$datos['nomina12']['Percepciones'][3]['TipoPercepcion'] = '010';
$datos['nomina12']['Percepciones'][3]['Clave'] = '010';
$datos['nomina12']['Percepciones'][3]['Concepto'] = 'Premios por puntualidad';
$datos['nomina12']['Percepciones'][3]['ImporteGravado'] = '1000';
$datos['nomina12']['Percepciones'][3]['ImporteExento'] = '0.00';

// Acciones o Titulos en Percepciones (Todos obligatorios)
//$datos['nomina12']['Percepciones'][3]['AccionesOTitulos']['ValorMercado'] = '1000.00';
//$datos['nomina12']['Percepciones'][3]['AccionesOTitulos']['PrecioAlOtorgarse'] = '2000.00';

// NODO DEDUCCIONES
$datos['nomina12']['Deducciones']['TotalOtrasDeducciones'] = '2000'; // Opcional
$datos['nomina12']['Deducciones']['TotalImpuestosRetenidos'] = '1000'; // Opcional

$datos['nomina12']['Deducciones'][0]['TipoDeduccion'] = '002';
$datos['nomina12']['Deducciones'][0]['Clave'] = '001';
$datos['nomina12']['Deducciones'][0]['Concepto'] = 'ISR';
$datos['nomina12']['Deducciones'][0]['Importe'] = '1000';

$datos['nomina12']['Deducciones'][1]['TipoDeduccion'] = '001';
$datos['nomina12']['Deducciones'][1]['Clave'] = '012';
$datos['nomina12']['Deducciones'][1]['Concepto'] = 'Seguridad social';
$datos['nomina12']['Deducciones'][1]['Importe'] = '1000';

$datos['nomina12']['OtrosPagos'][0]['TipoOtroPago'] = '002';
$datos['nomina12']['OtrosPagos'][0]['Clave'] = '012';
$datos['nomina12']['OtrosPagos'][0]['Concepto'] = 'Subsidio para el empleado';
$datos['nomina12']['OtrosPagos'][0]['Importe'] = '500';

$datos['nomina12']['OtrosPagos'][0]['SubsidioAlEmpleo']['SubsidioCausado'] = '500.00';

$res = mf_genera_cfdi($datos);

///////////    MOSTRAR RESULTADOS DEL ARRAY $res   ///////////
 
echo "<h1>Respuesta Generar XML y Timbrado</h1>";
foreach($res AS $variable=>$valor)
{
    $valor=htmlentities($valor);
    $valor=str_replace('&lt;br/&gt;','<br/>',$valor);
    echo "<b>[$variable]=</b>$valor<hr>";
}