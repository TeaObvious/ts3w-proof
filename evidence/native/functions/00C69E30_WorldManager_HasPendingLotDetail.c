/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Rebuild dirty buckets, performs camera-side preparatory
   call if applicable, then scans requested-detail lots. Returns low-byte true when lot+c2 iszero or
   streaming query00700c20(worldmanager,lotGuid,-1) returns true. When none qualify, low byte false;
   upper EAX bits are undefined residue and must not be interpreted as UInt32 truth. The exact
   complete resource/residency meaning of+c2 and streaming query is not established by this bounded
   review. */

bool __thiscall WorldManager_HasPendingLotDetail(void *this)

{
  undefined4 *puVar1;
  void *this_00;
  uchar uVar2;
  void *pvVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  
  if (*(char *)((int)this + 0x1cc) != '\0') {
    LotSpatialIndex_RebuildBuckets((int)this);
  }
  pvVar3 = LoadPump_ReadFrameServiceGlobal();
  if ((pvVar3 != (void *)0x0) && (*(char *)((int)pvVar3 + 0x29d) == '\0')) {
    FUN_006f3b20(pvVar3,0);
  }
  pvVar3 = (void *)FUN_006fdbe0();
  puVar5 = *(undefined4 **)((int)this + 0x204);
  puVar1 = *(undefined4 **)((int)this + 0x208);
  while( true ) {
    if (puVar5 == puVar1) {
      return false;
    }
    this_00 = (void *)*puVar5;
    uVar2 = Lot_GetDetailRequested(this_00);
    if ((uVar2 != '\0') &&
       ((uVar2 = Lot_ReadDetailReadinessByte(this_00), uVar2 == '\0' ||
        (uVar4 = WorldManager_HasPendingGuidComponents
                           (pvVar3,*(uint *)((int)this_00 + 0x48),
                            *(undefined4 *)((int)this_00 + 0x4c),0xffffffff), (char)uVar4 != '\0')))
       ) break;
    puVar5 = puVar5 + 1;
  }
  return true;
}

