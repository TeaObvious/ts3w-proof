/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Collects footprint-intersecting objects; for earlier unsigned16 insertion
   rank+0x1c, computes max(existing unsigned16 layer+0x1e+1) with16-bit wrap. Updates current
   layer+0x1e; optional notification goes to rug component via0095e170. This is layer ordering for
   admitted rugs, not a universal fix for arbitrary coplanar meshes.
   
   PC1.67 original static instructions. Selected layerclosure: earlier comparison is unsigned16
   insertion serial+1C, NOT arbitrary unbounded vector index. For actual footprint-intersecting
   owners, max of UInt16(otherlayer+1), with wrap before max. Optional native notify operates only
   on admitted object/component. Decompiler lost selected incoming GUID-pair register propagation;
   physical caller and original instructions remain authoritative. */

bool __thiscall RugManager_RecomputeOverlapLayer(void *this,uint param_1,char param_2,char param_3)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  void *pvVar5;
  uint *puVar6;
  int *piVar7;
  bool bVar8;
  int **ppiVar9;
  uint local_24;
  int local_20;
  int local_1c;
  int local_18 [2];
  int *local_10;
  int *local_c;
  undefined4 local_8;
  char *local_4;
  
  uVar2 = param_1;
  bVar8 = false;
  if (param_1 != 0) {
    ppiVar9 = &local_10;
    local_10 = (int *)0x0;
    local_c = (int *)0x0;
    local_8 = 0;
    local_4 = "Lot/RugManager";
    pvVar5 = (void *)FUN_00c6dc80(*(int *)((int)this + 0x34));
    Lot_CollectObjectsIntersectingObjectFootprints
              (*(void **)((int)this + 0x34),pvVar5,(int *)ppiVar9);
    param_1 = 0;
    piVar7 = local_10;
    if (local_10 != local_c) {
      do {
        iVar1 = *piVar7;
        if (iVar1 != 0) {
          if ((((*(int *)(iVar1 + 8) != *(int *)(uVar2 + 0x10)) ||
               (*(int *)(iVar1 + 0xc) != *(int *)(uVar2 + 0x14))) &&
              (local_20 = *(int *)(iVar1 + 8), local_1c = *(int *)(iVar1 + 0xc),
              U64PairMap_Find((void *)((int)this + 0xc),local_18,(ulonglong *)&local_20),
              local_18[0] != *(int *)(*(int *)((int)this + 0x10) + *(int *)((int)this + 0x14) * 4)))
             && ((iVar1 = *(int *)(local_18[0] + 8), iVar1 != 0 &&
                 (*(ushort *)(iVar1 + 0x1c) < *(ushort *)(uVar2 + 0x1c))))) {
            uVar4 = *(short *)(iVar1 + 0x1e) + 1;
            local_24 = (uint)uVar4;
            puVar6 = &local_24;
            if (uVar4 <= (ushort)param_1) {
              puVar6 = &param_1;
            }
            param_1 = (uint)(ushort)*puVar6;
          }
        }
        piVar7 = piVar7 + 1;
      } while (piVar7 != local_c);
    }
    uVar3 = param_1;
    bVar8 = (short)param_1 != *(short *)(uVar2 + 0x1e);
    if (bVar8) {
      *(short *)(uVar2 + 0x1e) = (short)param_1;
    }
    if (((param_3 != '\0') && ((param_2 != '\0' || (bVar8)))) &&
       ((*(int *)((int)this + 0x34) != 0 &&
        (((*(int *)(uVar2 + 0x10) != 0 || *(int *)(uVar2 + 0x14) != 0 &&
          (pvVar5 = (void *)FUN_00c6dc80(*(int *)((int)this + 0x34)), pvVar5 != (void *)0x0)) &&
         (pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011ea2a8), pvVar5 != (void *)0x0)))))) {
      RugComponent_NotifyLayerChanged(pvVar5,uVar3 & 0xffff);
    }
    if (local_10 != (int *)0x0) {
      Memory_FreeIfNonNull(local_10);
    }
  }
  return bVar8;
}

