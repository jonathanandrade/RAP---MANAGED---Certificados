CLASS zcl_ja_rap_carga_certificados DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_ja_rap_carga_certificados IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TYPES: tt_certif TYPE TABLE OF zjarap_certif WITH DEFAULT KEY.

    DELETE FROM zjarap_certif.

    DATA(lt_certif) = VALUE tt_certif(
        ( cert_uuid = '1' matnr = '1')
        ( cert_uuid = '2' matnr = '2')
        ( cert_uuid = '3' matnr = '3')
    ).

    MODIFY zjarap_certif FROM TABLE @lt_certif.

    out->write( 'Certificados Inseridos com Sucesso.' ).

  ENDMETHOD.

ENDCLASS.
