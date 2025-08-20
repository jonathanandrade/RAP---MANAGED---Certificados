CLASS zcl_ja_rap_carga_produtos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_ja_rap_carga_produtos IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TYPES: tt_products TYPE TABLE OF zjarap_product WITH DEFAULT KEY.

    DELETE FROM zjarap_product.

    DATA(lt_products) = VALUE tt_products(
        ( matnr = '1' language = 'P' description = 'Celular' )
        ( matnr = '1' language = 'E' description = 'Cellphone' )
        ( matnr = '2' language = 'P' description = 'Televisão' )
        ( matnr = '2' language = 'E' description = 'Television' )
        ( matnr = '3' language = 'P' description = 'Computador' )
        ( matnr = '3' language = 'E' description = 'Computer' )
    ).

    MODIFY zjarap_product FROM TABLE @lt_products.

    out->write( 'Produtos Inseridos com Sucesso.' ).

  ENDMETHOD.

ENDCLASS.
