/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, actorhash RET4. Actor0 visits
   existing8-byte bindings; nonzero uses lazy803C00 lookup. Only status6 changes to0 via original
   atomic store. This body does not dirty, pump, advance clocks or emit events; current Continue
   marking dirty and optional Pump are project scheduling. */

void __thiscall SacsDriver_ContinueActorWalkers(void *this,int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (param_1 == 0) {
    iVar3 = *(int *)((int)this + 0x10);
    iVar1 = *(int *)((int)this + 0x14);
    if (iVar3 != iVar1) {
      do {
        iVar2 = *(int *)(iVar3 + 4);
        if ((iVar2 != 0) && (*(int *)(iVar2 + 0x6c) == 6)) {
          LOCK();
          *(undefined4 *)(iVar2 + 0x6c) = 0;
          UNLOCK();
        }
        iVar3 = iVar3 + 8;
      } while (iVar3 != iVar1);
      return;
    }
  }
  else {
    iVar3 = SACS_LookupDestinationWalker_803c00(this,param_1);
    if ((iVar3 != 0) && (*(int *)(iVar3 + 0x6c) == 6)) {
      LOCK();
      *(undefined4 *)(iVar3 + 0x6c) = 0;
      UNLOCK();
    }
  }
  return;
}

