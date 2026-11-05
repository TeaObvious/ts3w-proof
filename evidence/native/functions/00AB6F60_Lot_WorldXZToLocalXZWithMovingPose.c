/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX lot owner; two float inputs and two output pointers; RET16. Zero byte at lot+444 delegates
   unchanged inputs to AB6E40. Nonzero byte calls AB20B0 for a matrix and evaluates
   X*row0+row3+zero*row1+Z*row2 through ordered MULPS/ADDPS, extracts X/Z, then calls AB6E40. Matrix
   producer and moving-pose lifetime remain child boundaries. */

void __thiscall
Lot_WorldXZToLocalXZWithMovingPose
          (void *this,float param_1,float param_2,float *param_3,float *param_4)

{
  undefined1 (*pauVar1) [16];
  undefined1 local_50 [76];
  
  if (*(char *)((int)this + 0x444) != '\0') {
    pauVar1 = Lot_GetWorldToLocalMatrix(this,(undefined1 (*) [16])local_50);
    Lot_WorldXZToLocalXZ
              (this,param_1 * *(float *)*pauVar1 + *(float *)pauVar1[3] + *(float *)pauVar1[1] * 0.0
                    + param_2 * *(float *)pauVar1[2],
               param_1 * *(float *)(*pauVar1 + 8) + *(float *)(pauVar1[3] + 8) +
               *(float *)(pauVar1[1] + 8) * 0.0 + param_2 * *(float *)(pauVar1[2] + 8),param_3,
               param_4);
    return;
  }
  Lot_WorldXZToLocalXZ(this,param_1,param_2,param_3,param_4);
  return;
}

