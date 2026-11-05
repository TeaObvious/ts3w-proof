/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: classifies the fractional local X/Z position into one of four quadrant bits (1,2,4,8).
   It floors each float to form fractions, compares Z-fraction with X-fraction and its complement,
   and returns exactly one bit in AL. The region boundaries and tie order follow original branches;
   this does not read the room grid itself.
   
   PC1.67 original static instructions. cdecl2binary32X/Z stackwords/plainRET, onehotAL1/2/4/8.
   FloorX/Z asdouble CRTcalls; XFRACTION spilledbinary32; Zfraction retainedx87 across firstFCOMIP
   butalsoFSTbinary32 forsecondcompare. complement=1-Xfraction viaSUBSS. IfXfraction<=retainedZ then
   complement<=roundedZ ->4 else8; otherwise roundedZ<complement ->1 else2.
   Centre(.5,.5)->4;(.25,.25)->8;(.75,.25)->2 underordinaryfinite/onlot domain. Hostabsdominant-axis
   tie policy wasdifferent. Negative subnormal/x87extended/MXCSR/NaN parity not established by
   binary64hostadapter. */

undefined1 __cdecl LotLocation_SelectQuadrantFromFraction(float param_1,float param_2)

{
  float fVar1;
  undefined1 uVar2;
  float fVar3;
  double dVar4;
  double dVar5;
  
  dVar4 = floor((double)param_1);
  dVar5 = floor((double)param_2);
  fVar1 = param_2 - (float)dVar5;
  fVar3 = 1.0 - (param_1 - (float)dVar4);
  if (param_1 - (float)dVar4 <= fVar1) {
    uVar2 = 8;
    if (fVar3 <= fVar1) {
      uVar2 = 4;
    }
    return uVar2;
  }
  if (fVar1 < fVar3) {
    return 1;
  }
  return 2;
}

