/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011971e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_GetConfigStringValue [assembly=ScriptCore token=0x0600024F; key:
   System.String, defaultValue: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.GameUtils::GameUtils_GetConfigStringValue(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  undefined4 unaff_EBX;
  void *local_34;
  undefined **ppuStack_30;
  int iStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  ushort uStack_1c;
  undefined2 uStack_1a;
  
  local_34 = (void *)0x0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return local_34;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if (psVar2 != (short *)0x0) {
    uVar3 = (**(code **)(*piVar1 + 0x58))(param_1);
    psVar2 = (short *)FUN_0058ac60((short *)PTR_u_Config_01150ab0,psVar2,uVar3);
    if (psVar2 != (short *)0x0) {
      local_34 = (void *)0x0;
      ppuStack_30 = (undefined **)0x0;
      iStack_2c = 0;
      pcStack_28 = "Scripting/String";
      FUN_0040b590(&local_34,psVar2);
      appuStack_24[0] = &PTR_FUN_0100886c;
      uStack_1a = 0x13;
      uStack_1c = 0xb;
      FUN_004f59c0(appuStack_24,0x13,9,&local_34,0x10,1);
      if ((2 < (int)(iStack_2c - (int)local_34 & 0xfffffffeU)) && (local_34 != (void *)0x0)) {
        Memory_FreeIfNonNull(local_34);
      }
      (**(code **)(*piVar1 + 0x50))(appuStack_24,appuStack_24 + -5);
      appuStack_24[0] = &PTR_FUN_00fba6f4;
      if ((uStack_1c & 4) != 0) {
        FUN_004f5760(appuStack_24,'\0');
      }
    }
  }
  return unaff_EBX;
}

