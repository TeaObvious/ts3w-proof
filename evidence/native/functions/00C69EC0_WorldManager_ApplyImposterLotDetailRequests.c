/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 map/lot detail contract. Rebuild dirty lot buckets, iterate global lot pointer
   vector+204..208. Request detail only when+da is nonzero and the pointer is the active-GUID lookup
   of virtual type1; request false for every other nonnull lot. Active-only policy bypasses distance
   scoring, priorities, admission count and transition throttle, but the caller checks freeze+d9
   first. */

void __thiscall WorldManager_ApplyImposterLotDetailRequests(void *this)

{
  undefined4 *puVar1;
  int *this_00;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  uchar requested;
  
  if (*(char *)((int)this + 0x1cc) != '\0') {
    LotSpatialIndex_RebuildBuckets((int)this);
  }
  puVar1 = *(undefined4 **)((int)this + 0x208);
  puVar4 = *(undefined4 **)((int)this + 0x204);
  do {
    if (puVar4 == puVar1) {
      return;
    }
    this_00 = (int *)*puVar4;
    if (this_00 != (int *)0x0) {
      if (*(char *)((int)this + 0xda) == '\0') {
LAB_00c69f35:
        requested = '\0';
      }
      else {
        piVar2 = WorldObjects_FindByGuid
                           (this,*(uint *)((int)this + 0x170),*(uint *)((int)this + 0x174),
                            (uint *)0x0);
        if ((piVar2 == (int *)0x0) || (iVar3 = (**(code **)(*piVar2 + 0x40))(), iVar3 != 1)) {
          piVar2 = (int *)0x0;
        }
        if (this_00 != piVar2) goto LAB_00c69f35;
        requested = '\x01';
      }
      Lot_SetDetailRequested(this_00,requested);
    }
    puVar4 = puVar4 + 1;
  } while( true );
}

