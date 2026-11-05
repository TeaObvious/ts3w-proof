/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163760 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetIsPaintingTextureInUse [assembly=ScriptCore token=0x060007F0;
   paintingKey: Sims3.SimIFace.ResourceKey, isInUse: System.Boolean, bySim: System.Boolean;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_SetIsPaintingTextureInUse
          (undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4,char param_5,
          char param_6)

{
  void *this;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)FUN_009e0120();
  if (this != (void *)0x0) {
    local_10 = param_3;
    local_c = param_4;
    local_8 = param_1;
    local_4 = param_2;
    FUN_009db2f0(this,&local_10,param_5,param_6);
  }
  return;
}

