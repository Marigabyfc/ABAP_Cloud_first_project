*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
*Se borra create private
class lcl_connection definition. "create private"

  public section.

*Declaro variables auxiliares
  DATA carrier_id TYPE /dmo/carrier_id.
  DATA connection_id TYPE /dmo/connection_id.

*Defino el método
  METHODS set_attributes
*Solo voy a obtener datos por lo que solo hago IMPORT
    IMPORTING
        i_carrier_id TYPE /dmo/carrier_id DEFAULT 'LH'
        i_connection_id TYPE /dmo/connection_id
*Genero un RAISING por si hay algún error me dispare una excepción
    RAISING
        cx_abap_invalid_value.

  protected section.
  private section.

endclass.

CLASS lcl_connection IMPLEMENTATION.
*Implemento mi método definido antes
  METHOD set_attributes.

*Genero un condicional para que en caso de que no se cumpla me lance el error
*IS INITIAL me verifica si una variable está vacía
    IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
        RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ENDIF.

    carrier_id = i_carrier_id.
    connection_id = i_connection_id.

  ENDMETHOD.

ENDCLASS.
