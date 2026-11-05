/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011971d8 (original PC 1.67 TS3W.exe).
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
  int aiStack_34 [2];
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
    aiStack_34[0] = 0;
    aiStack_34[1] = 0;
    ppuStack_2c = (undefined **)0x0;
    pcStack_28 = "Scripting/GameHost/pSwitch";
    FUN_0040b590(aiStack_34,psVar3);
    if ((uStack_1c & 4) != 0) {
      FUN_004f5760(appuStack_24,'\x01');
    }
    FUN_004f59c0(appuStack_24,0x13,9,aiStack_34,0x10,1);
    if ((2 < (int)((int)ppuStack_2c - aiStack_34[0] & 0xfffffffeU)) && (aiStack_34[0] != 0)) {
      FUN_004e44e0(aiStack_34[0]);
    }
  }
  (**(code **)(*piVar1 + 0x50))(appuStack_24,&stack0xffffffc8);
  ppuStack_2c = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_24[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_2c,'\0');
  }
  return param_1;
}

