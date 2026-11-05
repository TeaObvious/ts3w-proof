/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst descriptive alias: Config_ReadIntegerOrFallback (not a recovered symbol and not a database rename). EC0FC0 calls with section,key,existing UInt32-ref value. Missing service or false AL from58C5E0 returns third stackword at58AF40; found text passes through wide integer conversion then58ADE0. No claim about the unexpanded conversion/override/parser or case semantics.
   Existing database function comment: null
   Original instructions control ABI, signedness and order; inferred types remain qualified. */


int __cdecl FUN_0058af00(short *param_1,wchar_t *param_2,int param_3)

{
  void *this;
  undefined4 uVar1;
  long lVar2;
  int iVar3;
  wchar_t *local_4;
  
  this = (void *)FUN_0058bbd0();
  if (this != (void *)0x0) {
    uVar1 = FUN_0058c5e0(this,param_1,param_2,&local_4);
    if ((char)uVar1 != '\0') {
      lVar2 = _wtol(local_4);
      iVar3 = FUN_0058ade0((undefined *)param_1,param_2,lVar2);
      return iVar3;
    }
  }
  return param_3;
}

