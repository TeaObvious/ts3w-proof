/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Full GUID equality is an early no-op. On change resolve
   old GUID, accept virtual type1; modes201/202/204 call00ace230, then notify old objects
   not-current. Store new GUID low/high at+170/+174, resolve new type1 lot and notify objects
   current. Finally send message04891b02 with the GUID; no direct Lot_SetDetailRequested call or
   completion wait. A GUID with no matching lot is still stored. */

void __thiscall WorldManager_SetActiveLot(void *this,ulonglong lotGuid)

{
  int *piVar1;
  int iVar2;
  
  if (lotGuid != *(ulonglong *)((int)this + 0x170)) {
    piVar1 = FUN_00c60740(this,*(int *)((int)this + 0x170),*(int *)((int)this + 0x174),(int *)0x0);
    if ((piVar1 != (int *)0x0) && (iVar2 = (**(code **)(*piVar1 + 0x40))(), iVar2 == 1)) {
      iVar2 = *(int *)((int)this + 0x154);
      if ((iVar2 == 0xc9) || ((iVar2 == 0xca || (iVar2 == 0xcc)))) {
        FUN_00ace230(piVar1);
      }
      Lot_NotifyObjectsCurrent(piVar1,'\0');
    }
    *(ulonglong *)((int)this + 0x170) = lotGuid;
    piVar1 = FUN_00c60740(this,(int)lotGuid,lotGuid._4_4_,(int *)0x0);
    if ((piVar1 != (int *)0x0) && (iVar2 = (**(code **)(*piVar1 + 0x40))(), iVar2 == 1)) {
      Lot_NotifyObjectsCurrent(piVar1,'\x01');
    }
    piVar1 = FUN_00adf150();
    if (piVar1 != (int *)0x0) {
      *piVar1 = (int)&PTR_FUN_01065f8c;
      LOCK();
      piVar1[1] = 0;
      UNLOCK();
      *piVar1 = (int)&PTR_FUN_01065f8c;
      (**(code **)(*piVar1 + 4))();
      *(ulonglong *)(piVar1 + 2) = lotGuid;
      FUN_007d3210(0x4891b02,piVar1);
      (**(code **)(*piVar1 + 8))();
    }
  }
  return;
}

