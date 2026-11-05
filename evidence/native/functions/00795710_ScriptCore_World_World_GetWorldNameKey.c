/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163978 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetWorldNameKey [assembly=ScriptCore token=0x06000844; ;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.World::World_GetWorldNameKey(void)

{
  short *psVar1;
  int iVar2;
  int *piVar3;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 local_54 [4];
  undefined1 *local_50;
  undefined1 *local_4c;
  undefined2 *local_48;
  char *local_44;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **appuStack_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  iVar2 = DAT_011edbc4;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((iVar2 == 0) || (piVar3 == (int *)0x0)) ||
      (psVar1 = *(short **)(iVar2 + 0x27c), psVar1 == *(short **)(iVar2 + 0x280))) ||
     (psVar1 == (short *)0x0)) {
    return 0;
  }
  local_50 = &DAT_011c8e54;
  local_4c = &DAT_011c8e54;
  local_44 = "World/WorldHost";
  local_48 = &DAT_011c8e56;
  FUN_00408f50(&local_50,psVar1);
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  FUN_004f59c0(local_40,0x13,9,&local_50,0x10,1);
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 2;
  FUN_004f64b0(local_20,(int)local_40);
  local_40[0] = &PTR_FUN_00fba6f4;
  if ((local_38 & 4) != 0) {
    FUN_004f5760(local_40,'\0');
  }
  (**(code **)(*piVar3 + 0x50))(local_20,local_54);
  appuStack_28[0] = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(appuStack_28,'\0');
  }
  if ((2 < (int)((int)local_50 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return unaff_EDI;
}

