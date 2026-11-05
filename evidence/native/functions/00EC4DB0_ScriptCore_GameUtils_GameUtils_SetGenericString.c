/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011971d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_SetGenericString [assembly=ScriptCore token=0x0600024C; id:
   System.UInt32, str: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_GameUtils__GameUtils_SetGenericString(undefined4 param_1,undefined1 *param_2)

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
    Memory_FreeIfNonNull(puStack_14);
  }
  return uVar1;
}

