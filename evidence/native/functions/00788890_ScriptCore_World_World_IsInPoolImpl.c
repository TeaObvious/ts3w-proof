/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163cb8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsInPoolImpl [assembly=ScriptCore token=0x06000892; worldPos:
   Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.World::World_IsInPoolImpl(float param_1,undefined4 param_2,float param_3)

{
  uint in_EAX;
  void *pvVar1;
  uint uVar2;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    pvVar1 = FUN_00c687d0(DAT_011edbc4,param_1,param_3);
    in_EAX = 0;
    if (pvVar1 != (void *)0x0) {
      local_20 = param_1;
      uStack_1c = param_2;
      fStack_18 = param_3;
      fStack_14 = param_1;
      uVar2 = FUN_00aff9d0(pvVar1,&local_20,(int *)0x0,1);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

