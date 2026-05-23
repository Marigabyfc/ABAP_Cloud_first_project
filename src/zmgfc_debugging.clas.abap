CLASS zmgfc_debugging DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS ZMGFC_DEBUGGING IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES: BEGIN OF ty_number,
             value TYPE i,
           END OF ty_number.

    TYPES ty_number_tab TYPE STANDARD TABLE OF ty_number WITH EMPTY KEY.

    DATA lt_numbers TYPE ty_number_tab.
    DATA ls_number  TYPE ty_number.
    DATA lv_total   TYPE i VALUE 0.

    " Cargamos datos manualmente
    ls_number-value = 10.
    APPEND ls_number TO lt_numbers.

    ls_number-value = 20.
    APPEND ls_number TO lt_numbers.

    ls_number-value = 30.
    APPEND ls_number TO lt_numbers.

    " Loop con error lógico intencional
    LOOP AT lt_numbers INTO ls_number.

      IF ls_number-value > 15.
        lv_total = lv_total + ls_number-value.
      ELSE.
        lv_total = lv_total - ls_number-value. " <- error para debuggear
      ENDIF.

    ENDLOOP.

    out->write( |Total: { lv_total }| ).

  ENDMETHOD.
ENDCLASS.
