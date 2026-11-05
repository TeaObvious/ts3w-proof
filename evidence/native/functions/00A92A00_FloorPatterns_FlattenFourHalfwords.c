/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX compressed pattern grid/output
   vector. Level/X/Z traversal; copy8byte cells from uniform/detailed four-by-four blocks. Output
   has fourUInt16 per cell. Width/depth/levels and block strides are separate runtime fields; native
   compressed layout must not be serialized as raw memory. */

void __thiscall FloorPatterns_FlattenFourHalfwords(void *this,int *param_1)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int local_8;
  
  uVar3 = *(int *)((int)this + 8) * *(int *)((int)this + 4) * *(int *)((int)this + 0xc);
  if (uVar3 - (param_1[1] - *param_1 >> 3) != 0) {
    FUN_00a90d00(param_1,uVar3);
  }
  iVar7 = 0;
  local_8 = 0;
  if (0 < *(int *)((int)this + 0xc)) {
    do {
      uVar3 = 0;
      if (0 < *(int *)((int)this + 4)) {
        iVar4 = *(int *)((int)this + 8);
        do {
          uVar5 = 0;
          if (0 < iVar4) {
            do {
              iVar4 = (*(int *)((int)this + 0x20) * local_8 + ((int)uVar3 >> 2)) *
                      *(int *)((int)this + 0x24) + ((int)uVar5 >> 2);
              uVar1 = *(ushort *)(*(int *)((int)this + 0x48) + iVar4 * 2);
              if ((uVar1 & 0x8000) == 0) {
                iVar4 = (uVar5 & 3) + ((uVar3 & 3) + (uint)uVar1 * 4) * 4;
                iVar6 = *(int *)((int)this + 0x28);
              }
              else {
                iVar6 = *(int *)((int)this + 0x38);
              }
              iVar2 = *param_1;
              *(undefined4 *)(iVar2 + iVar7 * 8) = *(undefined4 *)(iVar6 + iVar4 * 8);
              *(undefined4 *)(iVar2 + 4 + iVar7 * 8) = *(undefined4 *)(iVar6 + iVar4 * 8 + 4);
              iVar4 = *(int *)((int)this + 8);
              uVar5 = uVar5 + 1;
              iVar7 = iVar7 + 1;
            } while ((int)uVar5 < iVar4);
          }
          uVar3 = uVar3 + 1;
        } while ((int)uVar3 < *(int *)((int)this + 4));
      }
      local_8 = local_8 + 1;
    } while (local_8 < *(int *)((int)this + 0xc));
  }
  return;
}

