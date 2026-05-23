*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_connection definition.
**********************************************************************
* Voy a tener la definición de la clase donde defino las variables con sus respectivos métodos
*más los parámetros de IMPORT y EXPORT correspondiente a como quiero que mi función
*maneje los datos
**********************************************************************
  public section.



      CLASS-DATA conn_counter TYPE i.

**********************************************************************
*Llamo mi metodo/función
**********************************************************************
  METHODS set_attributes
*Selecciono mi parámetro según como quiero que mi método maneje los datos en este caso IMPORT
     IMPORTING

*Defino mis nuevas variables auxiliares para luego usarlas en la implementación del método
      i_carrier_id TYPE /dmo/carrier_id OPTIONAL
      i_connection_id TYPE /dmo/connection_id.


  METHODS get_attributes
     EXPORTING
      e_carrier_id TYPE /dmo/carrier_id
      e_connection_id TYPE /dmo/connection_id.

  protected section.
  private section.
    DATA carrier_id TYPE /DMO/CARRIER_ID.
    DATA connection_id TYPE /DMO/CONNECTION_ID.


endclass.
**********************************************************************
*Una vez definida mi clase, las variables aux y los métodos voy a implementarlos para
*Poder usarlos en mi clase global como funciones.

class lcl_connection implementation.

  method set_attributes.
*carrier_id guarda la data recibida
    carrier_id = i_carrier_id.
    connection_id = i_connection_id.

  endmethod.

  method get_attributes.
*e_carrier_id devuelve los datos guardados nuevos
    e_carrier_id = carrier_id.
    e_connection_id = connection_id.

  endmethod.


endclass.
