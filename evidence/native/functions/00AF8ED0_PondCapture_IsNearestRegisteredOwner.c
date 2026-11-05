/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 registered-pond nearest-owner predicate. Physical ECX intrusive-list sentinel plus
   requested-owner and aligned camera-point stack words, RET08; meaningful return low AL0/1 via
   SETZ. Start selected=null and best=original binary32 FLT_MAX. Traverse next pointers until
   sentinel; nonnull node owner=node-528. Center helperAF8B40 supplies a transformed bounding
   midpoint. SSE subtract/square XYZ then lane sum Z+Y+X; COMISS/JBE accepts only ordered strictly
   smaller distance, preserving earlier equal candidate. Return requestedOwner==selected, including
   null/null if no candidate wins. Not an out-center selector or visible-mesh centroid scan.
   Aligned16byte camera access and child null-owner behavior are not sanitized here. No original
   bytes, body, prototype, parameter/local types or control flow changed. */

bool __thiscall PondCapture_IsNearestRegisteredOwner(void *this,undefined4 *param_1,float *param_2)

{
  undefined4 *puVar1;
  float *pfVar2;
  undefined4 *this_00;
  float fVar3;
  undefined4 *local_54;
  float local_50;
  float local_20 [7];
  
  puVar1 = *(undefined4 **)this;
  local_54 = (undefined4 *)0x0;
  local_50 = DAT_0106b0cc;
  for (; puVar1 != this; puVar1 = (undefined4 *)*puVar1) {
    if (puVar1 == (undefined4 *)0x0) {
      this_00 = (undefined4 *)0x0;
    }
    else {
      this_00 = puVar1 + -0x84;
    }
    pfVar2 = (float *)PondRenderer_WriteTransformedBoundsMidpoint(this_00,local_20);
    fVar3 = (pfVar2[2] - param_2[2]) * (pfVar2[2] - param_2[2]) +
            (pfVar2[1] - param_2[1]) * (pfVar2[1] - param_2[1]) +
            (*pfVar2 - *param_2) * (*pfVar2 - *param_2);
    if (fVar3 < local_50) {
      local_54 = this_00;
      local_50 = fVar3;
    }
  }
  return param_1 == local_54;
}

