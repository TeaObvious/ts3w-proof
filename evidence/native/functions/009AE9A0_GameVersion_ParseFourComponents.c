/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Split exactly four decimal components.
   Revision text length<=4 yields zero version. Five-character revision uses unsigned divisions and
   normalization; longer revision parses directly. Decimal prefix/overflow behavior belongs to
   native conversion leaves; no unsigned/signed simplification is inferred solely from pseudocode.
    */

void __thiscall GameVersion_ParseFourComponents(void *this,char *param_1)

{
  char *pcVar1;
  char *pcVar2;
  longlong lVar3;
  ulonglong uVar4;
  undefined1 *local_670;
  undefined1 *local_66c;
  undefined1 *local_668;
  undefined1 local_660 [255];
  undefined1 local_561;
  undefined4 *local_560;
  undefined4 *local_55c;
  undefined4 local_550 [340];
  
  local_560 = local_550;
  local_670 = local_660;
  local_668 = &local_561;
  local_660[0] = 0;
  pcVar1 = param_1;
  do {
    pcVar2 = pcVar1;
    pcVar1 = pcVar2 + 1;
  } while (*pcVar2 != '\0');
  local_66c = local_670;
  local_55c = local_560;
  FUN_0058f880(&local_670,param_1,pcVar2);
  FUN_0099d900(&local_670,(int *)&local_560,".");
  if ((((int)local_55c - (int)local_560) / 0x110 == 4) &&
     (4 < (uint)(local_560[0xcd] - local_560[0xcc]))) {
    lVar3 = FUN_004ffbb0((char *)*local_560,(undefined4 *)0x0,10);
    *(int *)this = (int)lVar3;
    lVar3 = FUN_004ffbb0((char *)local_560[0x44],(undefined4 *)0x0,10);
    *(int *)((int)this + 4) = (int)lVar3;
    lVar3 = FUN_004ffbb0((char *)local_560[0x88],(undefined4 *)0x0,10);
    *(int *)((int)this + 8) = (int)lVar3;
    if (local_560[0xcd] - local_560[0xcc] == 5) {
      uVar4 = FUN_004ffbb0((char *)local_560[0xcc],(undefined4 *)0x0,10);
      *(int *)((int)this + 0xc) =
           (int)uVar4 +
           (((int)((uVar4 & 0xffffffff) / 10000) * 10 - (int)((uVar4 & 0xffffffff) / 10)) +
           (int)((uVar4 & 0xffffffff) / 100)) * 10;
      return;
    }
    lVar3 = FUN_004ffbb0((char *)local_560[0xcc],(undefined4 *)0x0,10);
    *(int *)((int)this + 0xc) = (int)lVar3;
    return;
  }
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  return;
}

