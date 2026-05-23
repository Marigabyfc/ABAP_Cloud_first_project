CLASS zmgfc_abap_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_ABAP_TYPES IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Data Objects with Built-in Types
**********************************************************************
    DATA variable2 TYPE n LENGTH 2.
    " comment/uncomment the following declarations and check the output
*   DATA variable TYPE string.
*   DATA variable TYPE i.
*    DATA variable TYPE d.
    DATA variable TYPE c LENGTH 10 VALUE 'Hello'.
*    DATA variable TYPE n LENGTH 10.
*    DATA variable TYPE p LENGTH 8 DECIMALS 2.

* Output
**********************************************************************
    variable2 = 89.
    out->write(  'Result with Initial Value)' ).
    out->write(   variable2 ).
    out->write(  '---------' ).

    variable = '19891109'.

    out->write(  'Result with Value 19891109' ).
    out->write(   variable ).
    out->write(  '---------' ).

  ENDMETHOD.
ENDCLASS.
