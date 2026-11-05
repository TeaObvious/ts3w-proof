/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011972a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_GetModFilesName [assembly=ScriptCore token=0x06000267; idx:
   System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_GetModFilesName(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined4 uStack_44;
  undefined1 *puStack_40;
  undefined1 *puStack_3c;
  undefined2 *puStack_38;
  char *pcStack_34;
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  ushort uStack_18;
  undefined2 uStack_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pcStack_24 = "Services/GameHost";
  puStack_30 = &DAT_011c8e54;
  puStack_2c = &DAT_011c8e54;
  ppuStack_28 = (undefined **)&DAT_011c8e56;
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_18 = 0;
  uStack_16 = 0;
  FUN_004f59c0(appuStack_20,0x13,9,&puStack_30,0x10,1);
  pcStack_34 = "Services/GameHost/fileNameStr";
  puStack_40 = &DAT_011c8e54;
  puStack_3c = &DAT_011c8e54;
  puStack_38 = &DAT_011c8e56;
  uVar2 = FUN_00595cf0(&DAT_011cede0,param_1,&puStack_40);
  if ((char)uVar2 != '\0') {
    if ((uStack_18 & 4) != 0) {
      FUN_004f5760(appuStack_20,'\x01');
    }
    FUN_004f59c0(appuStack_20,0x13,9,&puStack_40,0x10,1);
  }
  uStack_44 = 0;
  (**(code **)(*piVar1 + 0x50))(appuStack_20,&uStack_44);
  if ((2 < (int)((int)puStack_40 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  ppuStack_28 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_28,'\0');
  }
  if ((2 < (int)((int)puStack_30 - (int)puStack_38 & 0xfffffffeU)) &&
     (puStack_38 != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(puStack_38);
  }
  return unaff_EDI;
}

