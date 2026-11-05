/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall ECX polygon, no stack arguments RET;
   void STATE MUTATION, not success bool. Calls virtual+30 then+34; writes index DWORD+40=0.
   Selected two sign/component predicates on normal+30 choose branches; 1/2 shared-bit counts and
   vertex words choose cells8/44/82 and mirror0/1. Unmatched direction/property branches may RETURN
   WITHOUT WRITING mirrorbyte+44, preserving incoming state. Do not infer universal mirror=false
   from index initialization or source helper default. Variant-specific vertex words differ
   (+4C/+54/+5C versus+50/+58/+60). Actual virtual implementations and constructor-provided flags
   are required context; selected count helpers do not reset mirror. */

void __thiscall RoofHippedAtlas_TwoDiagonalB(void *this)

{
  bool bVar1;
  int iVar2;
  
  (**(code **)(*(int *)this + 0x30))();
  iVar2 = (**(code **)(*(int *)this + 0x34))();
  *(undefined4 *)((int)this + 0x40) = 0;
  bVar1 = RoofNormal_IsNegativeX((float *)((int)this + 0x30));
  if (bVar1) {
    if (iVar2 == 2) {
      if (((*(uint *)((int)this + 0x50) >> 2 & 1) != 0) &&
         ((*(uint *)((int)this + 0x58) >> 2 & 1) != 0)) {
        *(undefined1 *)((int)this + 0x44) = 0;
        *(undefined4 *)((int)this + 0x40) = 0x2c;
        return;
      }
    }
    else if ((iVar2 == 1) && ((*(uint *)((int)this + 0x50) >> 2 & 1) != 0)) {
      *(undefined4 *)((int)this + 0x40) = 8;
      *(undefined1 *)((int)this + 0x44) = 1;
      return;
    }
  }
  else {
    bVar1 = RoofNormal_IsPositiveZ((float *)((int)this + 0x30));
    if (bVar1) {
      if (iVar2 == 1) {
        if ((*(uint *)((int)this + 0x60) >> 2 & 1) != 0) {
          *(undefined1 *)((int)this + 0x44) = 0;
          *(undefined4 *)((int)this + 0x40) = 8;
          return;
        }
      }
      else if (((iVar2 == 2) && ((*(uint *)((int)this + 0x58) >> 2 & 1) != 0)) &&
              ((*(uint *)((int)this + 0x60) >> 2 & 1) != 0)) {
        *(undefined4 *)((int)this + 0x40) = 0x2c;
        *(undefined1 *)((int)this + 0x44) = 1;
        return;
      }
      *(undefined4 *)((int)this + 0x40) = 0x52;
      *(undefined1 *)((int)this + 0x44) = 0;
    }
  }
  return;
}

