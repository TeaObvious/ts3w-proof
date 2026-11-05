/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX context plus four stackwords RET10hex, lowAL Boolean. First commonD48420. Only on
   success dispatches: selected product predicateC5B8C0 takesD46A50; otherwise requiresD49480 then
   choosesD46030 for field8C==0/allowed null-key default, orD461F0 for the other branch. Common
   failure stops later object/endpoint/stair stages. C9ED10 supplies actual error accumulator and
   option1, then ignores ONLY first collected error79 WallExists; later common effects have already
   happened. */

bool __thiscall
WallPlacement_ValidateProduct(void *this,char *param_1,uint *param_2,void *param_3,byte param_4)

{
  bool bVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  
  bVar1 = WallPlacement_ValidateCommon(this,param_1,param_2,param_3,param_4);
  if (bVar1) {
    uVar3 = FUN_00c5b8c0(param_2);
    if ((char)uVar3 != '\0') {
      uVar2 = FUN_00d46a50(this,param_1,param_2,param_3);
      return (bool)uVar2;
    }
    bVar1 = WallPlacement_ValidateWallAndStairs(this,param_1,param_2,param_3);
    if (bVar1) {
      uVar3 = WallProduct_IsZeroField8COrAllowedType(param_2);
      if ((char)uVar3 != '\0') {
        bVar1 = WallPlacement_ValidateBoundaryInset(this,param_1,param_2,param_3);
        return bVar1;
      }
      bVar1 = WallPlacement_ValidateFenceSlopeAndRegions(this,param_1,param_2,param_3);
      return bVar1;
    }
  }
  return false;
}

