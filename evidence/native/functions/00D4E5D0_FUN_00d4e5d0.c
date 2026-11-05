/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX receiver, descriptor stackword, RET4 and lowAL status. Empty descriptor vector returnsAL1. Iterates24byte rows, derives key viaD4BBA0 with both templateID wordszero, callsD4CFB0(key,NULL) and stops first false; AND lowbyte result, not normalized EAX. Not a PNG decode or whole-cache negative-entry contract. */
byte __thiscall FUN_00d4e5d0(void *this,int *param_1)

{
  int iVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  uint local_10 [4];
  
  iVar1 = param_1[1];
  iVar4 = *param_1;
  bVar3 = 1;
  if (iVar4 == iVar1) {
    return 1;
  }
  do {
    local_10[0] = 0;
    local_10[1] = 0;
    local_10[2] = 0;
    local_10[3] = 0;
    UIThumbnail_SelectCatalogIconOrDeriveKey
              (param_1 + 0x1e,*(int *)(iVar4 + 0x10),param_1[0x3f],param_1[0x40],local_10,
               (uint)*(byte *)(param_1 + 0x45),param_1[0x43],param_1[0x44],0,0);
    bVar2 = FUN_00d4cfb0(this,local_10);
    bVar3 = bVar3 & bVar2;
    if (bVar3 == 0) {
      return 0;
    }
    iVar4 = iVar4 + 0x18;
  } while (iVar4 != iVar1);
  return bVar3;
}

