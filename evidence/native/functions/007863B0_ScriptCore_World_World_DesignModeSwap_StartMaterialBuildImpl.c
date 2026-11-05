/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b98 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DesignModeSwap_StartMaterialBuildImpl [assembly=ScriptCore
   token=0x06000875; handle: System.UInt32, presetStr: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.World::World_DesignModeSwap_StartMaterialBuildImpl(uint param_1,int param_2)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  short *psVar3;
  void *this;
  
  if (param_2 == 0) {
    return in_EAX & 0xffffff00;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar2 = param_1 & 0xff000000;
  if (uVar2 == 0x45000000) {
    psVar3 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    uVar2 = 0;
    if (this != (void *)0x0) {
      uVar2 = FUN_00a60310(this,psVar3);
      return uVar2;
    }
  }
  return uVar2;
}

