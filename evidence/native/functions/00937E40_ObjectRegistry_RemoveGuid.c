/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Full64 lookup; temporary retain; event5; owner vtable+3c
   removal; activevector removal; setobject+28 bit400000; intrusiveunlink; event6; two atomic
   releases including registryownership. AL bool. Events run synchronously.
   
   PC1.67 selected destruction closure: ECXregistry+fullUInt64GUID RET8 ALBoolean.
   Findsactualpointer, temporaryretain, synchronousevent5, owner virtual3C removal,
   activevectorremoval, objectflag400000, intrusivehashunlink, event6, temporaryandregistryreleases.
   Future lookupcannotbe usedas proofoldpointerstillbelongs tosameincarnation. Callbackorder
   andborrowedlookup not a claimnativeglobalconcurrencyguard. */

bool __thiscall ObjectRegistry_RemoveGuid(void *this,ulonglong guid)

{
  int iVar1;
  int *piVar2;
  undefined4 *local_8;
  void **ppvStack_4;
  
  ObjectHash_FindGuid((void *)((int)this + 0x10),&local_8,&guid);
  if (local_8 != *(undefined4 **)((int)this + 0x1034)) {
    if (local_8 != (undefined4 *)0x0) {
      LOCK();
      local_8[1] = local_8[1] + 1;
      UNLOCK();
    }
    ObjectEvents_Dispatch(5,local_8,(void *)0x0);
    piVar2 = (int *)FUN_0068f130((int)local_8);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x3c))(local_8,0);
    }
    ObjectRegistry_RemoveActiveObject(this,local_8);
    local_8[10] = local_8[10] | 0x400000;
    ObjectHash_UnlinkNode((void *)((int)this + 0x10),&guid,local_8,ppvStack_4);
    ObjectEvents_Dispatch(6,local_8,(void *)0x0);
    piVar2 = local_8 + 1;
    LOCK();
    iVar1 = *piVar2;
    *piVar2 = *piVar2 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar2 = 1;
      UNLOCK();
      (**(code **)*local_8)(1);
    }
    LOCK();
    iVar1 = *piVar2;
    *piVar2 = *piVar2 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar2 = 1;
      UNLOCK();
      (**(code **)*local_8)(1);
    }
    return true;
  }
  return false;
}

