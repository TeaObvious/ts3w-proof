/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_WaitForFrameEvaluation [assembly=ScriptCore token=0x0600026B;
   callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.GameUtils::GameUtils_WaitForFrameEvaluation(undefined4 param_1)

{
  bool bVar1;
  int *piVar2;
  uint unaff_ESI;
  undefined8 uVar3;
  undefined **appuStack_80 [2];
  undefined2 uStack_78;
  undefined2 uStack_76;
  undefined4 *puStack_70;
  undefined1 auStack_64 [4];
  byte abStack_60 [8];
  undefined8 uStack_58;
  code *pcStack_50;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar3 = (**(code **)(*piVar2 + 0x118))();
  abStack_60[0] = 0x2f;
  abStack_60[1] = 0x12;
  abStack_60[2] = 0x89;
  abStack_60[3] = 4;
  abStack_60[4] = 0;
  abStack_60[5] = 0;
  abStack_60[6] = 0;
  abStack_60[7] = 0;
  pcStack_50 = FUN_00ec25f0;
  uStack_58 = uVar3;
  bVar1 = RenderCommand_EnqueueIfDispatcherExists(abStack_60);
  if (bVar1) {
    (**(code **)(*piVar2 + 0x120))(uVar3,0xffffffff,param_1);
    (**(code **)(*piVar2 + 0x11c))();
  }
  else {
    appuStack_80[0] = &PTR_FUN_00fba6f4;
    puStack_70 = (undefined4 *)((uint)puStack_70 & 0xffffff00);
    uStack_76 = 1;
    uStack_78 = 0;
    (**(code **)(*piVar2 + 0x130))(param_1,uVar3,appuStack_80);
    if ((unaff_ESI & 4) != 0) {
      FUN_004f5760(&stack0xffffff6c,'\0');
    }
  }
  if (puStack_70 != (undefined4 *)0x0) {
    (**(code **)*puStack_70)(auStack_64);
  }
  return;
}

