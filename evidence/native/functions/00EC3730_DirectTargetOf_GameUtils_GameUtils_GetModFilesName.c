/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_GetModFilesName at
   0x00ec39a0, bytes e98bfdffff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_GetModFilesName at
   0x00ec39a0, bytes e98bfdffff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 __cdecl DirectTargetOf_GameUtils_GameUtils_GetModFilesName(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined4 local_44;
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined2 *local_38;
  char *local_34;
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_24 = "Services/GameHost";
  local_30 = &DAT_011c8e54;
  local_2c = &DAT_011c8e54;
  local_28 = (undefined **)&DAT_011c8e56;
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  FUN_004f59c0(local_20,0x13,9,&local_30,0x10,1);
  local_34 = "Services/GameHost/fileNameStr";
  local_40 = &DAT_011c8e54;
  local_3c = &DAT_011c8e54;
  local_38 = &DAT_011c8e56;
  uVar2 = FUN_00595cf0(&DAT_011cede0,param_1,&local_40);
  if ((char)uVar2 != '\0') {
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\x01');
    }
    FUN_004f59c0(local_20,0x13,9,&local_40,0x10,1);
  }
  local_44 = 0;
  (**(code **)(*piVar1 + 0x50))(local_20,&local_44);
  if ((2 < (int)((int)local_40 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
  }
  if ((2 < (int)((int)local_30 - (int)local_38 & 0xfffffffeU)) && (local_38 != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(local_38);
  }
  return unaff_EDI;
}

