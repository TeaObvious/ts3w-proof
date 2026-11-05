/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163c70 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetLotMainEntranceLocationImpl [assembly=ScriptCore token=0x06000889;
   lotID: System.UInt64, worldPos: Sims3.SimIFace.Vector3&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). Registered World
   main-entrance native wrapper: two lot-ID DWORDs and output pointer, plainRET. Global
   interface/manager then00631F40; success writes exactlythreefloatwords and returnsAL1; false
   leaves caller output unchanged. Original ScriptCore06000A0D19B7i and SimIFace0600073C24B8i both
   initializeVector3.Invalid before native dispatch; complete Vector3 initializer builds
   three+Infinity raw7F800000. Thus native untouchedfalse is not full managed output policy. Current
   host explicitfalsezero remains an unchanged documented difference. Complete actual C/Listing and
   pristine PE support the selected observations.
   Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain unchanged; current
   managed resource/cache policy is preserved. */

undefined4 __cdecl
ScriptCore.World::World_GetLotMainEntranceLocationImpl
          (int *param_1,uint param_2,undefined4 *param_3)

{
  int iVar1;
  void *this;
  uint uVar2;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  iVar1 = thunk_FUN_00835d40();
  uVar2 = 0;
  if (iVar1 != 0) {
    this = (void *)FUN_008295c0(iVar1);
    uVar2 = 0;
    if (this != (void *)0x0) {
      uVar2 = LotRouting_GetMainEntranceWorldPosition(this,param_1,param_2,&local_20);
      if ((char)uVar2 != '\0') {
        *param_3 = local_20;
        param_3[1] = uStack_1c;
        param_3[2] = uStack_18;
        return CONCAT31((int3)((uint)param_3 >> 8),1);
      }
    }
  }
  return uVar2 & 0xffffff00;
}

