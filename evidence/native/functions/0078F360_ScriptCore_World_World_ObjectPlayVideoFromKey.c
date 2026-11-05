/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163708 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectPlayVideoFromKey [assembly=ScriptCore token=0x060007E5; objId:
   System.UInt64, videoKey: Sims3.SimIFace.ResourceKey, bLoop: System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectPlayVideoFromKey
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined1 param_7)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    uVar2 = FUN_00937f80(iVar1);
    if (uVar2 != 0) {
      GetGlobalInterfacePointer_11D5BBC();
      FUN_004afe80();
      uVar3 = FUN_0078ed20(param_1,param_2,param_5,param_6,param_3,param_4,param_7,1,1);
      return uVar3;
    }
  }
  return 0;
}

