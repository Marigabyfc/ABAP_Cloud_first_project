CLASS zmgfc_variable_declaration DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMGFC_VARIABLE_DECLARATION IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA result TYPE p LENGTH 8 DECIMALS 2.
  DATA number1 TYPE i.
  data number2 type i.

  number1 = -8.
  number2 = 3.

  result = number1 / number2.

  DATA(output) = |Yo quiero decir que { number1 } / { number2 } = { result }|.

  out->write( output ).

  ENDMETHOD.
ENDCLASS.
