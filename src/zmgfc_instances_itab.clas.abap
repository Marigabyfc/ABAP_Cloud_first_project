CLASS zmgfc_instances_itab DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_INSTANCES_ITAB IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA connection TYPE REF TO lcl_connection.

*Creación de tabla
  DATA connections TYPE TABLE OF REF TO lcl_connection.

*creación connection 2
*DATA connection2 TYPE REF TO lcl_connection.

  connection = new #(  ).
*  connection = new #(  ).
  APPEND connection TO connections.

  connection = new #(  ).
  APPEND connection TO connections.

"  connection->carrier_id = 'LH'.
  "connection->connection_id = '0400'."

*Creación de una variable igual a connection original ambas contenidas en el mismo objeto
*  connection2 = connection.

  ENDMETHOD.
ENDCLASS.
