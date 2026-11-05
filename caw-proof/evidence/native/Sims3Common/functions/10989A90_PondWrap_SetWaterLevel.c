/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PondWrap_SetWaterLevel. Export ordinal(s): 2008.
   Entry VA: 0x10989a90. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060006E5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __thiscall
PondWrap_SetWaterLevel
          (uint3 param_1,void *param_2,int param_3,int param_4,float param_5,uint *param_6)

{
  undefined4 uVar1;
  undefined4 uStack_4;
  
                    /* 0x989a90  2008  PondWrap_SetWaterLevel */
  uStack_4 = (uint)param_1;
  uVar1 = FUN_1012bb80(param_2,param_3,param_4,param_5,(undefined1 *)((int)&uStack_4 + 3));
  *param_6 = (uint)(uStack_4._3_1_ != '\0');
  return (char)uVar1 != '\0';
}

