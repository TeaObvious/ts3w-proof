/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_007db9c0. ECX adapter, low AL boolean return. Require state1, invoke
   existing scanner advance, combine low-bit result with adapter validation, reject terminal/error
   state, and register successful current element name in adapter map. Underlying scanner
   token-kind/depth/entity behavior is a provider boundary; this body does not prove DOM
   direct-child traversal. */

byte __fastcall XmlStreamAdapter_AdvanceElement(int param_1)

{
  int iVar1;
  byte bVar2;
  undefined4 uVar3;
  short *psVar4;
  int *piVar5;
  uint local_1c [3];
  undefined1 *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  if (*(int *)(param_1 + 0x48) != 1) {
    return 0;
  }
  local_4 = "Services/XmlStreamAdapter/ElementName";
  local_10 = &DAT_011c8e54;
  local_c = &DAT_011c8e54;
  local_8 = &DAT_011c8e56;
  uVar3 = FUN_00471150(*(int **)(param_1 + 8));
  if ((*(int *)(param_1 + 0x48) != 1) || (*(int *)(*(int *)(param_1 + 8) + 8) == 0)) {
    bVar2 = FUN_007da2b0(param_1);
    bVar2 = (byte)uVar3 & 1 & bVar2;
    if ((*(int *)(param_1 + 0x48) == 1) &&
       (uVar3 = FUN_00470f10(*(int *)(param_1 + 8)), (char)uVar3 == '\0')) {
      if (bVar2 != 0) {
        psVar4 = (short *)FUN_00470f50(*(int *)(param_1 + 8));
        FUN_00408f50(&local_10,psVar4);
        iVar1 = *(int *)(*(int *)(param_1 + 0x28) + *(int *)(param_1 + 0x2c) * 4);
        piVar5 = (int *)FUN_007db400((void *)(param_1 + 0x24),local_1c,&local_10);
        if (*piVar5 == iVar1) {
          local_1c[0] = local_1c[0] & 0xffffff00;
          FUN_007db500((void *)(param_1 + 0x24),local_1c,&local_10);
        }
      }
    }
    else {
      bVar2 = 0;
    }
    if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (undefined1 *)0x0))
    {
      Memory_FreeIfNonNull(local_10);
    }
    return bVar2;
  }
  if ((int)((int)local_8 - (int)local_10 & 0xfffffffeU) < 3) {
    return 0;
  }
  if (local_10 == (undefined1 *)0x0) {
    return 0;
  }
  Memory_FreeIfNonNull(local_10);
  return 0;
}

