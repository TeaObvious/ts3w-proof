/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX runner, stack world/context and path; RET8. Last node returns AL0. Advances the existing
   substep and position, skips samples while00B865C0 returns nonzero, and updates current lot/floor
   observations on selected transitions. Exhausting a span initializes the next node while reusing
   its observed lot. Other completion leaves write AL1; upper return bits are not generally
   normalized. The called sample predicate is not decoded by this body alone. */

uint __thiscall NeighborhoodPathRunner_AdvanceSubstep(void *this,void *param_1,int param_2)

{
  bool bVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  void *pvVar5;
  float fVar6;
  float fVar7;
  
  uVar2 = (*(int *)(param_2 + 0xc) - *(int *)(param_2 + 8) >> 6) - 1;
  if (*(uint *)this == uVar2) {
    return uVar2 & 0xffffff00;
  }
  *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
  if (*(int *)((int)this + 0x18) < *(int *)((int)this + 0x1c)) {
    do {
      fVar6 = *(float *)((int)this + 4) + *(float *)((int)this + 0x20);
      *(float *)((int)this + 4) = fVar6;
      fVar7 = *(float *)((int)this + 0x24) + *(float *)((int)this + 8);
      *(float *)((int)this + 8) = fVar7;
      uVar3 = FUN_00b865c0(*(void **)((int)param_1 + 0x5c),fVar6,fVar7,'\0','\0');
      if ((char)uVar3 == '\0') {
        iVar4 = *(int *)((int)this + 0x10);
        if (iVar4 != *(int *)((int)this + 0x14)) {
          if (((iVar4 == 0) || (*(int *)(iVar4 + 0x408) != 1)) || (*(int *)(iVar4 + 0x40c) != 0x50))
          {
            bVar1 = false;
          }
          else {
            bVar1 = true;
          }
          pvVar5 = LotSpatialIndex_FindContainingLotAtWorldXZ
                             (param_1,*(float *)((int)this + 4),*(float *)((int)this + 8));
          *(void **)((int)this + 0x10) = pvVar5;
          if (bVar1) {
            iVar4 = 0;
            if ((pvVar5 == (void *)0x0) || (iVar4 = FUN_00624bc0((int)pvVar5), (char)iVar4 == '\0'))
            {
              *(undefined4 *)((int)this + 0xc) = 0;
              return CONCAT31((int3)((uint)iVar4 >> 8),1);
            }
          }
          else {
            iVar4 = 0;
            if ((pvVar5 != (void *)0x0) && (iVar4 = FUN_00624bc0((int)pvVar5), (char)iVar4 != '\0'))
            {
              *(undefined4 *)((int)this + 0xc) = 1;
              return CONCAT31((int3)((uint)iVar4 >> 8),1);
            }
          }
        }
        goto LAB_006422ca;
      }
      *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
    } while (*(int *)((int)this + 0x18) < *(int *)((int)this + 0x1c));
  }
  iVar4 = NeighborhoodPathRunner_InitializeSpan
                    (this,param_1,param_2,*(int *)this + 1,'\x01',*(void **)((int)this + 0x14));
LAB_006422ca:
  return CONCAT31((int3)((uint)iVar4 >> 8),1);
}

