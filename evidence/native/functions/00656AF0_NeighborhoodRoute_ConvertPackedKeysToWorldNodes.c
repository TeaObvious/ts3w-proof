/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00656c17) */
/* ECX conversion context, two stack vector pointers; RET8. Converts packed keys to 0x14-byte output
   records. Low key halfFFFF produces usage20 and copies the previous position when one exists; an
   initial sentinel position is repaired from the second output only when count exceeds1. Other
   nodes use low-five-bit usage, world-bin positions and selected lot-edge adjustment joins. No full
   route-filter policy is established here. */

void __thiscall
NeighborhoodRoute_ConvertPackedKeysToWorldNodes(void *this,int *param_1,int *param_2)

{
  ushort uVar1;
  int *piVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  int *piVar7;
  void *pvVar8;
  uint uVar9;
  int iVar10;
  float *pfVar11;
  int iVar12;
  int *piVar13;
  uint uVar14;
  int iVar15;
  uint *puVar16;
  float *pfVar17;
  char cVar18;
  uint local_c [2];
  undefined4 local_4;
  
  piVar7 = param_2;
  piVar13 = (int *)(param_1[1] - *param_1 >> 2);
  FUN_00a514a0(param_2,(uint)piVar13);
  param_2 = (int *)0x0;
  if (piVar13 != (int *)0x0) {
    iVar15 = 0;
    fVar4 = DAT_00fe92f8;
    do {
      local_c[0] = *(uint *)(*param_1 + (int)param_2 * 4);
      *(short *)(iVar15 + *piVar7) = (short)local_c[0];
      *(short *)(iVar15 + 2 + *piVar7) = (short)(local_c[0] >> 0x10);
      if ((short)local_c[0] == -1) {
        if (param_2 != (int *)0x0) {
          *(undefined4 *)(*piVar7 + iVar15 + 4) = *(undefined4 *)(*piVar7 + -0x10 + iVar15);
          *(undefined4 *)(iVar15 + *piVar7 + 8) = *(undefined4 *)(iVar15 + -0xc + *piVar7);
          *(undefined4 *)(iVar15 + *piVar7 + 0xc) = *(undefined4 *)(iVar15 + -8 + *piVar7);
        }
        *(undefined4 *)(iVar15 + 0x10 + *piVar7) = 0x14;
      }
      else {
        uVar14 = local_c[0] & 0xffff;
        iVar12 = *(int *)(*(int *)(*(int *)((int)this + 0x10) + 8) + uVar14 * 4) +
                 *(int *)(*(int *)((int)this + 0x10) + 0xc);
        uVar9 = (uint)*(ushort *)(iVar12 + 2 + (local_c[0] >> 0x10) * 2);
        iVar10 = uVar9 + iVar12;
        uVar9 = *(byte *)(uVar9 + 1 + iVar12) & 0x1f;
        *(uint *)(iVar15 + 0x10 + *piVar7) = uVar9;
        iVar12 = uVar14 % **(uint **)((int)this + 0x10) << 5;
        fVar6 = (float)iVar12;
        if (iVar12 < 0) {
          fVar6 = fVar6 + FLOAT_00f99948;
        }
        *(float *)(iVar15 + 4 + *piVar7) =
             (float)*(byte *)(iVar10 + 3) * fVar4 + fVar6 +
             *(float *)(*(int *)((int)this + 0xc) + 0xb4);
        uVar3 = DAT_00fee0d8;
        *(float *)(iVar15 + 0xc + *piVar7) =
             (float)*(byte *)(iVar10 + 4) * fVar4 +
             (float)(uVar14 / **(uint **)((int)this + 0x10) << 5) +
             *(float *)(*(int *)((int)this + 0xc) + 0xb8);
        *(undefined4 *)(iVar15 + 8 + *piVar7) = uVar3;
        if ((uVar9 == 2) || (uVar9 == 0x15)) {
          uVar1 = *(ushort *)(iVar10 + 5);
          piVar2 = *(int **)((int)this + 0x10);
          uVar9 = ((uVar1 >> 10 & 7) - 3) + ((uVar1 >> 0xd) - 3) * *piVar2 + uVar14;
          iVar10 = *(int *)(piVar2[2] + uVar9 * 4) + piVar2[3];
          iVar10 = (uint)*(ushort *)(iVar10 + 2 + (uVar1 & 0x3ff) * 2) + iVar10;
          if ((iVar10 != 0) && ((*(byte *)(iVar10 + 1) & 0x1f) == 1)) {
            iVar12 = uVar9 % **(uint **)((int)this + 0x10) << 5;
            fVar6 = (float)iVar12;
            if (iVar12 < 0) {
              fVar6 = fVar6 + FLOAT_00f99948;
            }
            pvVar8 = *(void **)((int)this + 0xc);
            iVar12 = uVar9 / **(uint **)((int)this + 0x10) << 5;
            fVar5 = (float)iVar12;
            if (iVar12 < 0) {
              fVar5 = fVar5 + FLOAT_00f99948;
            }
            pvVar8 = LotSpatialIndex_FindContainingLotAtWorldXZ
                               (pvVar8,fVar6 + (float)*(byte *)(iVar10 + 3) * fVar4 +
                                       *(float *)((int)pvVar8 + 0xb4),
                                fVar5 + (float)*(byte *)(iVar10 + 4) * fVar4 +
                                *(float *)((int)pvVar8 + 0xb8));
            fVar4 = DAT_00fe92f8;
            if (pvVar8 != (void *)0x0) {
              uVar3 = *(undefined4 *)((int)pvVar8 + 0x48);
              local_4 = *(undefined4 *)((int)pvVar8 + 0x4c);
              pfVar17 = (float *)(*piVar7 + iVar15 + 0xc);
              cVar18 = '\x01';
              pfVar11 = (float *)(*piVar7 + iVar15 + 4);
              puVar16 = local_c;
              pvVar8 = LotRouteGraph_FindLotByGuid
                                 (*(void **)((int)this + 8),*(ulonglong *)((int)pvVar8 + 0x48));
              FUN_00653960(this,uVar3,local_4,(uint)pvVar8,(ushort *)puVar16,pfVar11,pfVar17,cVar18)
              ;
              fVar4 = DAT_00fe92f8;
            }
          }
        }
      }
      param_2 = (int *)((int)param_2 + 1);
      iVar15 = iVar15 + 0x14;
    } while (param_2 < piVar13);
  }
  if (((int *)0x1 < piVar13) && (iVar15 = *piVar7, *(int *)(iVar15 + 0x10) == 0x14)) {
    *(undefined4 *)(iVar15 + 4) = *(undefined4 *)(iVar15 + 0x18);
    *(undefined4 *)(*piVar7 + 8) = *(undefined4 *)(*piVar7 + 0x1c);
    *(undefined4 *)(*piVar7 + 0xc) = *(undefined4 *)(*piVar7 + 0x20);
  }
  return;
}

