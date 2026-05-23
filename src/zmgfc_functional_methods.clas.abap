CLASS zmgfc_functional_methods DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_FUNCTIONAL_METHODS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
**********************************************************************
*Creo mis referencias de mi clase que esta creada el local types
**********************************************************************

  DATA connection TYPE REF TO lcl_connection.
  DATA connections TYPE TABLE OF REF TO lcl_connection.

**********************************************************************
*Creo la instancia
**********************************************************************
  connection = NEW #(  ).

  connection->set_attributes(
   EXPORTING
    i_carrier_id = 'LE'
    i_connection_id = '0800'
   ).

   APPEND connection TO connections.

* Calling Functional Method
**********************************************************************
    " in a value assignment (with inline declaration for result)
    DATA(result) = connection->get_output( ).

    " in logical expression
    IF connection->get_output(  ) IS NOT INITIAL.

      " as operand in a statement
      LOOP AT connection->get_output(  ) INTO DATA(line).

      ENDLOOP.

      "  to supply input parameter of another method
      out->write( data = connection->get_output( )
                  name = `  ` ).

    ENDIF.

  ENDMETHOD.
ENDCLASS.
