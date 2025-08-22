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

    TYPES: tt_certif    TYPE TABLE OF zjarap_certif    WITH DEFAULT KEY.
    TYPES: tt_certif_st TYPE TABLE OF zjarap_certif_st WITH DEFAULT KEY.

    DELETE FROM zjarap_certif.
    DELETE FROM zjarap_certif_st.

*    DATA(lt_certif) = VALUE tt_certif(
*        ( cert_uuid = '1' matnr = '1')
*        ( cert_uuid = '2' matnr = '2')
*        ( cert_uuid = '3' matnr = '3')
*    ).
*
*    MODIFY zjarap_certif FROM TABLE @lt_certif.
*
*    DATA(lt_certif_st) = VALUE tt_certif_st(
*        ( state_uuid = '1' cert_uuid = '1' matnr = '1')
*        ( state_uuid = '2' cert_uuid = '1' matnr = '2')
*        ( state_uuid = '3' cert_uuid = '1' matnr = '3')
*        ( state_uuid = '4' cert_uuid = '2' matnr = '2')
*    ).
*
*    MODIFY zjarap_certif_st FROM TABLE @lt_certif_st.

    out->write( 'Certificados Inseridos com Sucesso.' ).

  ENDMETHOD.

ENDCLASS.
