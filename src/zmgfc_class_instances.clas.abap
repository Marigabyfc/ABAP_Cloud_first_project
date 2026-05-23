CLASS zmgfc_class_instances DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_CLASS_INSTANCES IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA connection TYPE REF TO lcl_connection.
  DATA connections TYPE TABLE OF REF TO lcl_connection.
* First Instance
**********************************************************************
  connection = NEW #(  ).

  connection->carrier_id = 'MF'.
  connection->connection_id = '0600'.

  APPEND connection TO connections.

* Second Instance
**********************************************************************
  connection = NEW #(  ).

  connection->carrier_id = 'DC'.
  connection->connection_id = '0850'.

  APPEND connection TO connections.
* Third Instance
**********************************************************************
  connection = NEW #(  ).

  connection->carrier_id = 'LE'.
  connection->connection_id = '0900'.

  APPEND connection TO connections.

  ENDMETHOD.
ENDCLASS.
