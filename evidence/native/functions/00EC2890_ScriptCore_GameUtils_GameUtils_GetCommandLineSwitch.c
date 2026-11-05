/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011971d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_GetCommandLineSwitch [assembly=ScriptCore token=0x0600024D; flag:
   System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.GameUtils::GameUtils_GetCommandLineSwitch(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  short *psVar3;
  void *pvStack_34;
  undefined **ppuStack_30;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  ushort uStack_1c;
  undefined2 uStack_1a;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))();
  psVar3 = (short *)0x0;
  if (psVar2 != (short *)0x0) {
    psVar3 = (short *)FUN_0058ac90(psVar2,0);
  }
  appuStack_24[0] = &PTR_FUN_00fba6f4;
  uStack_1c = 0;
  uStack_1a = 0;
  if (psVar3 != (short *)0x0) {
    pvStack_34 = (void *)0x0;
    ppuStack_30 = (undefined **)0x0;
    ppuStack_2c = (undefined **)0x0;
    pcStack_28 = "Scripting/GameHost/pSwitch";
    FUN_0040b590(&pvStack_34,psVar3);
    if ((uStack_1c & 4) != 0) {
      FUN_004f5760(appuStack_24,'\x01');
    }
    FUN_004f59c0(appuStack_24,0x13,9,&pvStack_34,0x10,1);
    if ((2 < (int)((int)ppuStack_2c - (int)pvStack_34 & 0xfffffffeU)) && (pvStack_34 != (void *)0x0)
       ) {
      Memory_FreeIfNonNull(pvStack_34);
    }
  }
  (**(code **)(*piVar1 + 0x50))(appuStack_24,appuStack_24 + -5);
  ppuStack_2c = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_24[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_2c,'\0');
  }
  return param_1;
}

