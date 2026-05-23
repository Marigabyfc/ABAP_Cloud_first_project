CLASS zmgfc_local_classes DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_LOCAL_CLASSES IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*Creación de referencia a objeto
  DATA connection TYPE REF TO lcl_connection.

*Declaración de variables
  DATA: carrier_id TYPE /dmo/carrier_id.
  DATA: connection_id TYPE /dmo/connection_id.

**********************************************************************

*Creación de tabla interna de objetos
  DATA connections TYPE TABLE OF REF TO lcl_connection.

*Creación del primer objeto/instancia
  connection = new #(  ).

*Asignar valores al objeto
  connection->set_attributes(
  i_carrier_id = 'LH'
  i_connection_id = '0400'
  ).

*Guardar el objeto en la tabla

  APPEND connection TO connections.

**********************************************************************

  connection = new #(  ).

  connection->set_attributes(
  i_carrier_id = 'LE'
  i_connection_id = '0017'
  ).

  APPEND connection TO connections.

**********************************************************************

*LOOP sobre los objetos

LOOP AT connections INTO connection.

   connection->get_attributes(
   IMPORTING
   e_carrier_id = carrier_id
   e_connection_id = connection_id
   ).

   out->write( |Flight Connection { carrier_id } { connection_id }| ).

   ENDLOOP.

  ENDMETHOD.
ENDCLASS.
