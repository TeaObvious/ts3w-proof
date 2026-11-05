/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  undefined *puVar5;
  uint *puVar6;
  void *this_00;
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
    puVar5 = ObjectRegistry_FindBorrowedInLot
                       (*(void **)((int)this + 0x34),*(ulonglong *)(param_1 + 0x10));
    Lot_CollectObjectsIntersectingObjectFootprints
              (*(void **)((int)this + 0x34),puVar5,(int *)ppiVar9);
    param_1 = 0;
    piVar7 = local_10;
    if (local_10 != local_c) {
      do {
        iVar1 = *piVar7;
        if (iVar1 != 0) {
          if ((*(int *)(iVar1 + 8) != *(int *)(uVar2 + 0x10)) ||
             (*(int *)(iVar1 + 0xc) != *(int *)(uVar2 + 0x14))) {
            local_20 = *(int *)(iVar1 + 8);
            local_1c = *(int *)(iVar1 + 0xc);
            U64PairMap_Find((void *)((int)this + 0xc),local_18,(ulonglong *)&local_20);
            if ((local_18[0] !=
                 *(int *)(*(int *)((int)this + 0x10) + *(int *)((int)this + 0x14) * 4)) &&
               ((iVar1 = *(int *)(local_18[0] + 8), iVar1 != 0 &&
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
        }
        piVar7 = piVar7 + 1;
      } while (piVar7 != local_c);
    }
    uVar3 = param_1;
    bVar8 = (short)param_1 != *(short *)(uVar2 + 0x1e);
    if (bVar8) {
      *(short *)(uVar2 + 0x1e) = (short)param_1;
    }
    if (((param_3 != '\0') &&
        (((param_2 != '\0' || (bVar8)) && (*(void **)((int)this + 0x34) != (void *)0x0)))) &&
       (((*(int *)(uVar2 + 0x10) != 0 || *(int *)(uVar2 + 0x14) != 0 &&
         (puVar5 = ObjectRegistry_FindBorrowedInLot
                             (*(void **)((int)this + 0x34),*(ulonglong *)(uVar2 + 0x10)),
         puVar5 != (undefined *)0x0)) &&
        (this_00 = Object_GetComponentByMask(puVar5,DAT_011ea2a8), this_00 != (void *)0x0)))) {
      RugComponent_NotifyLayerChanged(this_00,uVar3 & 0xffff);
    }
    if (local_10 != (int *)0x0) {
      Memory_FreeIfNonNull(local_10);
    }
  }
  return bVar8;
}

