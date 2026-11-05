/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original: Thirteen stack words, plain RET and caller cleanup. When half-length is
   strictly below 0.25, clears mask 0x40 before calling 00658830 on supplied midpoint with null
   reason and FLT_MAX height. Samples before comparing half-length strictly below supplied
   termination step. Splits each coordinate with binary32 endpoint ADDSS and MULSS 0.5; halves
   length through binary32 x87 store. Recurses left before right and short circuits failure. AL is
   the truth result on every path: recursive success writes EAX=1 and recursive failure writes
   EAX=0, while immediate paths preserve unrelated high bits. */

undefined4 __cdecl
NeighborhoodVisibility_TestRecursiveMidpoints
          (uint param_1,void *param_2,undefined4 param_3,void *param_4,float param_5,float param_6,
          float param_7,float param_8,float param_9,float param_10,float param_11,float param_12,
          undefined4 param_13)

{
  float fVar1;
  undefined4 uVar2;
  
  if (param_11 < DAT_0106f8c8) {
    param_1 = param_1 & 0xffffffbf;
  }
  uVar2 = NeighborhoodVisibility_TestWorldPoint
                    ((byte)param_1,param_2,param_3,param_4,param_7,param_8,param_13,
                     (undefined4 *)0x0,DAT_00fee188);
  if ((char)uVar2 == '\0') {
    return uVar2;
  }
  if (param_11 < param_12) {
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  fVar1 = param_11 * _DAT_00f9b5b4;
  uVar2 = NeighborhoodVisibility_TestRecursiveMidpoints
                    (param_1,param_2,param_3,param_4,param_5,param_6,
                     (param_5 + param_7) * _DAT_00f9b5b4,(param_6 + param_8) * _DAT_00f9b5b4,param_7
                     ,param_8,fVar1,param_12,param_13);
  if ((char)uVar2 != '\0') {
    uVar2 = NeighborhoodVisibility_TestRecursiveMidpoints
                      (param_1,param_2,param_3,param_4,param_7,param_8,
                       (param_7 + param_9) * _DAT_00f9b5b4,(param_8 + param_10) * _DAT_00f9b5b4,
                       param_9,param_10,fVar1,param_12,param_13);
    if ((char)uVar2 != '\0') {
      return 1;
    }
  }
  return 0;
}

