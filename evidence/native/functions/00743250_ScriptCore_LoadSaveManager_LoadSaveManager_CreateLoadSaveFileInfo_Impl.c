/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011611d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_CreateLoadSaveFileInfo_Impl [assembly=ScriptCore
   token=0x060001D1; strid: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Converts supplied wide ID, rejects
   absent/empty string, passes a real stack output pointer to manager 00AAB460 and tests AL before
   type-40h host registration. Decompiled null output pointer is a stack-tracking artifact; physical
   ASM establishes the pointer. No empty-ID success equivalence with current host. */

undefined4 __cdecl
ScriptCore.LoadSaveManager::LoadSaveManager_CreateLoadSaveFileInfo_Impl(int param_1)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  int aiStack_14 [5];
  
  if (param_1 == 0) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
      iVar3 = FUN_00aa99c0();
      if (iVar3 != 0) {
        FUN_0040b880(aiStack_14,psVar2,(undefined4 *)&stack0xffffffe8);
        uVar4 = FUN_00aab460(aiStack_14,(undefined4 *)&stack0x00000000);
        if ((char)uVar4 != '\0') {
          uVar4 = (**(code **)(*piVar1 + 200))(0,0x40);
          FUN_004ef8f0((int *)&stack0xffffffe4);
          return uVar4;
        }
        FUN_004ef8f0(aiStack_14);
      }
      return 0;
    }
  }
  return 0;
}

