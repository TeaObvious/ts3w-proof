/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadSplineWrap_GetKnots. Export ordinal(s): 2072.
   Entry VA: 0x1098c6a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000220. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
RoadSplineWrap_GetKnots
          (int param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
          undefined4 *param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
                    /* 0x98c6a0  2072  RoadSplineWrap_GetKnots */
  uVar1 = *(undefined4 *)(param_1 + 0x30);
  uVar2 = *(undefined4 *)(param_1 + 0x40);
  uVar3 = *(undefined4 *)(param_1 + 0x44);
  uVar4 = *(undefined4 *)(param_1 + 0x50);
  uVar5 = *(undefined4 *)(param_1 + 0x54);
  uVar6 = *(undefined4 *)(param_1 + 0x60);
  uVar7 = *(undefined4 *)(param_1 + 100);
  param_2[1] = *(undefined4 *)(param_1 + 0x34);
  *param_2 = uVar1;
  *param_3 = uVar2;
  param_3[1] = uVar3;
  *param_4 = uVar4;
  param_4[1] = uVar5;
  *param_5 = uVar6;
  param_5[1] = uVar7;
  return;
}

