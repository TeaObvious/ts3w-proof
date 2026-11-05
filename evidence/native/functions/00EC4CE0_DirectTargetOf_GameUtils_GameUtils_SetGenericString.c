/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_SetGenericString at
   0x00ec4db0, bytes e92bffffff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined1 __cdecl
DirectTargetOf_GameUtils_GameUtils_SetGenericString(undefined4 param_1,undefined1 *param_2)

{
  undefined1 uVar1;
  int *piVar2;
  short *psVar3;
  uint unaff_retaddr;
  undefined1 *puStack_14;
  undefined1 *puStack_10;
  undefined2 *puStack_c;
  char *pcStack_8;
  
  puStack_14 = (undefined1 *)0xec4ce8;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  puStack_14 = param_2;
  psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
  pcStack_8 = "Services/GameHost";
  puStack_14 = &DAT_011c8e54;
  puStack_10 = &DAT_011c8e54;
  puStack_c = &DAT_011c8e56;
  if ((psVar3 != (short *)0x0) && (*psVar3 != 0)) {
    FUN_00408f50(&puStack_14,psVar3);
  }
  uVar1 = FUN_00ec39b0(unaff_retaddr,&puStack_14);
  if ((2 < (int)((int)puStack_c - (int)puStack_14 & 0xfffffffeU)) &&
     (puStack_14 != (undefined1 *)0x0)) {
    FUN_004e44e0((int)puStack_14);
  }
  return uVar1;
}

