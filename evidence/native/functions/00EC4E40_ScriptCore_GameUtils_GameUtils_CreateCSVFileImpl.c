/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970c8 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_CreateCSVFileImpl [assembly=ScriptCore token=0x06000229;
   filePath: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_CreateCSVFileImpl(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  void *this;
  int *piVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  this = (void *)FUN_004e4500(0x90,"Services/GameHost/sCreateCSVFile",0);
  if (this == (void *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = FUN_00889bd0(this,psVar2,(undefined4 *)0x0);
  }
  FUN_007cb580(piVar3);
  (**(code **)(*piVar1 + 200))(piVar3,0x40);
  return;
}

