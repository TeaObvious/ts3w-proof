/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadSquareWrap_GetBoundingBox. Export ordinal(s):
   2086. Entry VA: 0x1098c860. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600020C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 * __cdecl RoadSquareWrap_GetBoundingBox(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_48 [6];
  undefined4 local_30 [11];
  
                    /* 0x98c860  2086  RoadSquareWrap_GetBoundingBox */
  FUN_10482c60(local_30);
  puVar2 = (undefined4 *)FUN_10986ab0(local_48,local_30);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  param_1[2] = puVar2[2];
  param_1[3] = puVar2[3];
  uVar1 = puVar2[5];
  param_1[4] = puVar2[4];
  param_1[5] = uVar1;
  return param_1;
}

