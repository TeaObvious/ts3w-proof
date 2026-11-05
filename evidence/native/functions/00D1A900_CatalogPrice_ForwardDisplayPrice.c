/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 exact five-byte E9 toCEF6B0; cdecl product pointer in one stackword, x87 price result, no
   independent argument or arithmetic transformation. CEC115 andCE3C5F call this physical thunk
   before storing float unit price. */

float10 __cdecl CatalogPrice_ForwardDisplayPrice(undefined *product)

{
  char cVar1;
  int iVar2;
  float unaff_ESI;
  double dVar3;
  float fStack_4;
  
  fStack_4 = 0.0;
  if ((product != (undefined *)0x0) && (fStack_4 = *(float *)(product + 0x58), DAT_011ee780 != 0)) {
    cVar1 = (**(code **)(*(int *)product + 0x20))();
    if (cVar1 != '\0') {
      iVar2 = (**(code **)(*(int *)product + 0xc))(0x4ed4893);
      if (iVar2 != 0) {
        return (float10)unaff_ESI;
      }
      dVar3 = floor((double)((float10)unaff_ESI + (float10)0.5));
      return (float10)dVar3;
    }
    if (DAT_011ee780 != 0) {
      iVar2 = (**(code **)(*(int *)product + 0xc))(0x519e4f25);
      if ((iVar2 != 0) && ((*(byte *)(iVar2 + 0xb0) & 4) != 0)) {
        unaff_ESI = *(float *)(DAT_011ee780 + 0x174) * unaff_ESI;
      }
      dVar3 = floor((double)(unaff_ESI + 0.5));
      return (float10)dVar3;
    }
  }
  return (float10)fStack_4;
}

