/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b70 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DesignModeSwap_SetSourceBuildBuyImpl [assembly=ScriptCore
   token=0x06000870; handle: System.UInt32, type: System.UInt32, point: Sims3.SimIFace.Vector3;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_DesignModeSwap_SetSourceBuildBuyImpl
          (float param_1,int param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  int *piVar1;
  void *this;
  uint uVar2;
  float fStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  float fStack_18;
  
  fStack_24 = 1.1055188e-38;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((uint)param_1 & 0xff000000) == 0x45000000) {
    fStack_24 = param_1;
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    piVar1 = (int *)0x0;
    if (this != (void *)0x0) {
      fStack_24 = param_3;
      uStack_20 = param_4;
      uStack_1c = param_5;
      fStack_18 = param_3;
      uVar2 = FUN_00a5efe0(this,param_2,&fStack_24);
      return uVar2;
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

