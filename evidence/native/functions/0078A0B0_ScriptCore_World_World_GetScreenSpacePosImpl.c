/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632c0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetScreenSpacePosImpl [assembly=ScriptCore token=0x06000755; worldPos:
   Sims3.SimIFace.Vector3, outPos: Sims3.SimIFace.Vector2&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 __cdecl
ScriptCore.World::World_GetScreenSpacePosImpl
          (float param_1,undefined4 param_2,undefined4 param_3,float *param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  float local_48;
  float local_44;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  
  uVar3 = 0;
  local_48 = 0.0;
  local_44 = 0.0;
  iVar1 = FUN_00969bd0();
  iVar1 = FUN_00f21ff0(iVar1);
  if (iVar1 != 0) {
    iVar1 = FUN_00513de0(iVar1);
    local_30 = param_1;
    uStack_2c = param_2;
    uStack_28 = param_3;
    fStack_24 = param_1;
    uVar2 = FUN_007cf630(*(void **)(iVar1 + 0xc),&local_30,&local_20);
    uVar3 = (undefined1)uVar2;
    local_48 = local_20;
    local_44 = fStack_1c;
  }
  *param_4 = local_48;
  param_4[1] = local_44;
  return uVar3;
}

