CLASS zmgfc_aritmethic_calculations DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_ARITMETHIC_CALCULATIONS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


* Declarations
**********************************************************************

    " comment/uncomment these line for different result types
    TYPES t_result TYPE p LENGTH 8 DECIMALS 14.
*    TYPES t_result TYPE p LENGTH 8 DECIMALS 0.
*    TYPES t_result TYPE i.

    DATA result TYPE t_result.

* Calculations
**********************************************************************
    " comment/uncomment these lines for different calculations

*    result = 2 + 3.
*    result = 2 - 3.
*    result = 2 * 3.
*    result = 2 / 3.
*
*    result = sqrt( 2 ).
*    result = ipow( base = 2 exp = 3 ).
*
  result = ( 8 * 7 - 6 ) / ( 5 + 4 ).
  DATA my_var TYPE STRING VALUE 'El resultado es:'.
  DATA my_var2 TYPE i VALUE 89.

  out->write( |{ my_var }{ my_var2 }| ).

*   result = 8 * 7 - 6 / 5 + 4.

* Output
**********************************************************************

    out->write( result ).


  ENDMETHOD.
ENDCLASS.
