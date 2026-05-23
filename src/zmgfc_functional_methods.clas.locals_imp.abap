*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_connection definition.

  public section.

  DATA carrier_id TYPE /dmo/carrier_id.
  DATA connection_id TYPE /dmo/connection_id.

  METHODS set_attributes
    IMPORTING
      i_carrier_id TYPE /dmo/carrier_id
      i_connection_id TYPE /dmo/connection_id.

  METHODS get_output
*El método no usa EXPORTING.
*En cambio retorna un valor directamente.
    RETURNING VALUE(r_output) TYPE string_table.


  protected section.
  private section.

endclass.

class lcl_connection implementation.



  method set_attributes.
      carrier_id = i_carrier_id.
      connection_id = i_connection_id.

  endmethod.

  method get_output.

    APPEND |------------------------------| TO r_output.
    APPEND |Carrier:     { carrier_id    }| TO r_output.
    APPEND |Connection:  { connection_id }| TO r_output.
    APPEND |------COÑODELAMADRE-----------| TO r_output.

  endmethod.

endclass.
