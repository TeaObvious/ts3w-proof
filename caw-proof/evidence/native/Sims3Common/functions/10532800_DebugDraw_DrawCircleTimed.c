/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DebugDraw_DrawCircleTimed. Export ordinal(s):
   329. Entry VA: 0x10532800. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000294. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 __cdecl
DebugDraw_DrawCircleTimed
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,float param_4,undefined4 param_5
          ,uint param_6)

{
  undefined8 uVar1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x532800  329  DebugDraw_DrawCircleTimed */
  local_20 = param_1;
  uStack_1c = param_2;
  uStack_18 = param_3;
  uStack_14 = param_1;
  uVar1 = FUN_10532690(&local_20,param_4,param_5,param_6);
  return uVar1;
}

