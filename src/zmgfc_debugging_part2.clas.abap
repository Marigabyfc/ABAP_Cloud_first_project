CLASS zmgfc_debugging_part2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_DEBUGGING_PART2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA lt_numbers TYPE STANDARD TABLE OF i WITH EMPTY KEY.
  DATA lv_total   TYPE i VALUE 0.
  DATA lv_number  TYPE i.

  lt_numbers = VALUE #( ( 10 ) ( 20 ) ( 30 ) ).

  LOOP AT lt_numbers INTO lv_number.
    lv_total = lv_total + lv_number.
  ENDLOOP.

  " ERROR REAL, da 21 porque el lines( lt_numbers ) + 1 no tiene parentesis
*y se hace primero la división y luego al resultado se le suma 1
  lv_total = lv_total / lines( lt_numbers ) + 1 .

  out->write( |Promedio: { lv_total }| ).

  ENDMETHOD.
ENDCLASS.
