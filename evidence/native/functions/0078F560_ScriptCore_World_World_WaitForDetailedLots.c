/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c30 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_WaitForDetailedLots [assembly=ScriptCore token=0x06000881; callback:
   System.Delegate, lotId: System.UInt64, maskFlags: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_WaitForDetailedLots
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

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
  this = (void *)FUN_004e4500(0x28,"Scripting/DetailedLotMonitor",0);
  if (this != (void *)0x0) {
    piVar2 = (int *)FUN_007894a0(this,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_2,param_3,
                                 param_4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
      piVar3 = (int *)FUN_007693a0();
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x1c))(0x55af20c7,piVar2 + 2,0);
      }
      (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_1);
      (**(code **)(*piVar1 + 0x11c))();
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(param_1,uVar4,appuStack_20);
  if ((unaff_ESI & 4) != 0) {
    FUN_004f5760(&stack0xffffffcc,'\0');
  }
  return;
}

