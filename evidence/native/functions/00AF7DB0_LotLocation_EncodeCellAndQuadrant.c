/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: encodes lot-local X/Z and level into a four-byte cell/quadrant key. The first two bytes
   derive from rounded local coordinates with a boundary correction; byte 2 takes the level byte;
   byte 3 comes from LotLocation_SelectQuadrantFromFraction. Ghidra's ROUND and unsigned float-bit
   comparison need instruction-level interpretation; preserve original byte arithmetic and do not
   infer a generic floor() rule from this decompilation. */

void __cdecl LotLocation_EncodeCellAndQuadrant(float *param_1,char *param_2)

{
  int iVar1;
  char cVar2;
  
  iVar1 = (int)ROUND(*param_1);
  *param_2 = (char)iVar1 + -1 + ((uint)(*param_1 - (float)iVar1) < 0x80000001);
  iVar1 = (int)ROUND(param_1[1]);
  param_2[1] = (char)iVar1 + -1 + ((uint)(param_1[1] - (float)iVar1) < 0x80000001);
  param_2[2] = *(char *)(param_1 + 2);
  cVar2 = LotLocation_SelectQuadrantFromFraction(*param_1,param_1[1]);
  param_2[3] = cVar2;
  return;
}

