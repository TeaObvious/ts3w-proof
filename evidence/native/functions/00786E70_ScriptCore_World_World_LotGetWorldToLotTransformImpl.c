/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011633e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotGetWorldToLotTransformImpl [assembly=ScriptCore token=0x06000779;
   lotId: System.UInt64; return=Sims3.SimIFace.Matrix44]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.World::World_LotGetWorldToLotTransformImpl(undefined4 *param_1,int param_2,int param_3)

{
  int *this;
  undefined4 *puVar1;
  float local_50 [19];
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_2,param_3,(uint *)0x0);
    if (this != (int *)0x0) {
      puVar1 = (undefined4 *)Lot_BuildWorldToLocalPoseMatrix(this,(uint *)local_50);
      Matrix44_CopyNativeToScriptFields(param_1,puVar1);
      return param_1;
    }
  }
  local_50[0] = 1.0;
  local_50[1] = 0.0;
  local_50[2] = 0.0;
  local_50[3] = 0.0;
  local_50[4] = 0.0;
  local_50[5] = 1.0;
  local_50[6] = 0.0;
  local_50[7] = 0.0;
  local_50[8] = 0.0;
  local_50[9] = 0.0;
  local_50[10] = 1.0;
  local_50[0xb] = 0.0;
  local_50[0xc] = 0.0;
  local_50[0xd] = 0.0;
  local_50[0xe] = 0.0;
  local_50[0xf] = 1.0;
  Matrix44_CopyNativeToScriptFields(param_1,local_50);
  return param_1;
}

