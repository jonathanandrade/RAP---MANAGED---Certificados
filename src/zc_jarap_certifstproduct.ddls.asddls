@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Status dos Certificados'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_JARAP_CERTIFSTPRODUCT
  as projection on ZI_JARAP_CERTIFSTPRODUCT
{
  key StateUuid,
      CertUuid,
      Matnr,
      Description,
      Version,
      Status,
      StatusOld,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Certif : redirected to parent ZC_JARAP_CERTIFPRODUCT
}
