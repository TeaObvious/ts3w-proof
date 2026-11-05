/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115edd0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CommandSystem::Command_GetCommandHelpImpl [assembly=ScriptCore token=0x0600011D;
   cmdStr: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_CommandSystem__Command_GetCommandHelpImpl(int param_1)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  wchar_t *pwVar4;
  int iVar5;
  undefined4 unaff_EBX;
  undefined1 *puStack_54;
  undefined **ppuStack_50;
  undefined2 *puStack_4c;
  char *pcStack_48;
  undefined **appuStack_44 [2];
  undefined2 uStack_3c;
  undefined2 uStack_3a;
  undefined4 auStack_24 [9];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar2 = (void *)FUN_00589aa0();
  uVar3 = 0;
  puStack_54 = (undefined1 *)0x0;
  if (((piVar1 != (int *)0x0) && (pvVar2 != (void *)0x0)) && (param_1 != 0)) {
    pwVar4 = (wchar_t *)(**(code **)(*piVar1 + 0x58))(param_1);
    if (pwVar4 != (wchar_t *)0x0) {
      pcStack_48 = "Scripting/Command/CommandList";
      puStack_54 = &DAT_011c8e54;
      ppuStack_50 = (undefined **)&DAT_011c8e54;
      puStack_4c = &DAT_011c8e56;
      iVar5 = FUN_00589e50(pvVar2,pwVar4);
      if ((iVar5 != 0) && (*(int *)(iVar5 + 8) != 0)) {
        iVar5 = FUN_00589e50(pvVar2,pwVar4);
        FUN_004e3950(&puStack_54,*(short **)(iVar5 + 8));
        pvVar2 = FUN_004f6630(auStack_24,&puStack_54);
        appuStack_44[0] = &PTR_FUN_00fba6f4;
        uStack_3c = 0;
        uStack_3a = 0;
        FUN_004f64b0(appuStack_44,(int)pvVar2);
        FUN_004f5820(auStack_24);
        (**(code **)(*piVar1 + 0x50))(appuStack_44,appuStack_44 + -5);
        FUN_004f5820(appuStack_44);
      }
      if ((2 < (int)((int)puStack_4c - (int)puStack_54 & 0xfffffffeU)) &&
         (puStack_54 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(puStack_54);
      }
    }
    uVar3 = unaff_EBX;
  }
  return uVar3;
}

