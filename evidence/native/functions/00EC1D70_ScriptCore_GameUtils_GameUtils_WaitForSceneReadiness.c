/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972c0 (TS3W.exe).
   ScriptCore.GameUtils::GameUtils_WaitForSceneReadiness [assembly=ScriptCore token=0x0600026A;
   testFlags: System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: registered cdecl scene-mask flags and managed delegate handle. Obtains64-bit
   host event handle, creates0x28-byte SceneReadyNotifier, registers eventb577aa16, forwards
   delegate to host wait/resume. Allocation/constructor failure uses host+130 fallback. Decompiler
   indirect-call cleanup corrupts later stack locals; this wrapper alone does not prove actual scene
   readiness or callback execution. */

void __cdecl
ScriptCore.GameUtils::GameUtils_WaitForSceneReadiness(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  int *piVar2;
  int *piVar3;
  uint unaff_ESI;
  undefined8 uVar4;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = (**(code **)(*piVar1 + 0x118))();
  this = (void *)FUN_004e4500(0x28,"Scripting/SceneReadyNotifier",0);
  if (this != (void *)0x0) {
    piVar2 = SceneReadyNotifier_Construct(this,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
      piVar3 = (int *)FUN_0044c4f0();
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x1c))(0xb577aa16,piVar2 + 4,0);
      }
      (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_2);
      (**(code **)(*piVar1 + 0x11c))();
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(param_2,uVar4,appuStack_20);
  if ((unaff_ESI & 4) != 0) {
    FUN_004f5760(&stack0xffffffcc,'\0');
  }
  return;
}

