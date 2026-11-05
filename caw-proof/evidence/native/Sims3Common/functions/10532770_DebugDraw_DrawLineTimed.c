/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DebugDraw_DrawLineTimed. Export ordinal(s): 331.
   Entry VA: 0x10532770. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000293. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 __cdecl
DebugDraw_DrawLineTimed
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,uint param_8)

{
  undefined8 uVar1;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x532770  331  DebugDraw_DrawLineTimed */
  local_20 = param_4;
  uStack_1c = param_5;
  uStack_18 = param_6;
  uStack_14 = param_4;
  local_30 = param_1;
  uStack_2c = param_2;
  uStack_28 = param_3;
  uStack_24 = param_1;
  uVar1 = FUN_105325b0(&local_30,&local_20,param_7,param_8);
  return uVar1;
}

