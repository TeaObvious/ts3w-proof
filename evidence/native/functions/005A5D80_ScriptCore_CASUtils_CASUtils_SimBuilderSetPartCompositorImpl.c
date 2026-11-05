/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011562c8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderSetPartCompositorImpl [assembly=ScriptCore
   token=0x060002FE; handle: System.UInt32, key: Sims3.SimIFace.ResourceKey, partType:
   System.UInt32, isSpecular: System.Boolean, compositorHash: System.UInt32, data: System.Byte[],
   callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SimBuilderSetPartCompositorImpl
               (undefined4 param_1,int param_2,int *param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  size_t in_stack_00000024;
  undefined4 *puStack_20;
  undefined4 uStack_18;
  undefined4 auStack_14 [3];
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  puStack_20 = (undefined4 *)0x5a5d89;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puStack_20 = &uStack_18;
  uStack_18 = 0;
  auStack_14[0] = 0;
  (**(code **)(*piVar1 + 0x70))();
  if (0 < (int)auStack_14) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))(uStack_8);
    if (this != (void *)0x0) {
      uStack_18 = uStack_8;
      auStack_14[0] = uStack_4;
      FUN_005e3870(this,(int *)&puStack_20,param_2,param_3,param_4,auStack_14,in_stack_00000024);
    }
  }
  return;
}

