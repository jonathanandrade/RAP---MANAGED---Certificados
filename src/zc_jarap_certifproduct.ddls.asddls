@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_JARAP_CERTIFPRODUCT
  as projection on ZI_JARAP_CERTIFPRODUCT
{
  key CertUuid,
      Matnr,
      Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      LocalLastChangedAt,
      /* Associations */
      _Prod,
      _Stats : redirected to composition child ZC_JARAP_CERTIFSTPRODUCT
}
