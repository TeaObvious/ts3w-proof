/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager + uint64 objectID RET8, EDX:EAX uint64. First matching occurrence in each group
   must not be at index0. Fetches PRECEDING GUID atESI-8 throughC6DC80, constrained to manager lot
   pointer+24; refcounts borrowed object around catalog access. Previous product D0 bit6
   (BuildCategory Fireplace40) returns previous GUID, otherwise continues native group traversal.
   Missing/wrong-lot/categoryless previous object yields no mantle from that group. */

ulonglong __thiscall FireplaceGroups_FindMantle(void *this,ulonglong objectId)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  ulonglong uVar5;
  int *piVar6;
  undefined4 *object;
  void *pvVar7;
  int iVar8;
  int *piVar9;
  int *local_c;
  
  piVar6 = *(int **)((int)this + 8);
  iVar8 = *piVar6;
  if (iVar8 == 0) {
    piVar6 = piVar6 + 1;
    iVar8 = *piVar6;
    while (iVar8 == 0) {
      piVar6 = piVar6 + 1;
      iVar8 = *piVar6;
    }
    iVar8 = *piVar6;
  }
  iVar2 = *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4);
  local_c = piVar6;
  if (iVar8 == iVar2) {
    return 0;
  }
  do {
    piVar3 = *(int **)(iVar8 + 4);
    piVar4 = *(int **)(iVar8 + 8);
    piVar9 = piVar3;
    if (piVar3 != piVar4) {
      do {
        if ((*piVar9 == (int)objectId) && (piVar9[1] == objectId._4_4_)) break;
        piVar9 = piVar9 + 2;
      } while (piVar9 != piVar4);
      if (((piVar9 != piVar4) && (piVar9 != piVar3)) &&
         (object = (undefined4 *)
                   ObjectRegistry_FindBorrowedInLot
                             (*(void **)((int)this + 0x24),*(ulonglong *)(piVar9 + -2)),
         object != (undefined4 *)0x0)) {
        piVar3 = object + 1;
        LOCK();
        *piVar3 = *piVar3 + 1;
        UNLOCK();
        pvVar7 = Object_FindCatalogInfo(object);
        if ((pvVar7 != (void *)0x0) && ((*(uint *)((int)pvVar7 + 0xd0) >> 6 & 1) != 0)) {
          uVar5 = *(ulonglong *)(piVar9 + -2);
          piVar6 = object + 1;
          LOCK();
          iVar8 = *piVar6;
          *piVar6 = *piVar6 + -1;
          UNLOCK();
          if (iVar8 == 1) {
            LOCK();
            *piVar6 = 1;
            UNLOCK();
            (**(code **)*object)(1);
          }
          return uVar5;
        }
        LOCK();
        iVar1 = *piVar3;
        *piVar3 = *piVar3 + -1;
        UNLOCK();
        piVar6 = local_c;
        if (iVar1 == 1) {
          LOCK();
          *piVar3 = 1;
          UNLOCK();
          (**(code **)*object)(1);
        }
      }
    }
    iVar8 = *(int *)(iVar8 + 0x14);
    while (iVar8 == 0) {
      piVar3 = piVar6 + 1;
      piVar6 = piVar6 + 1;
      local_c = piVar6;
      iVar8 = *piVar3;
    }
    if (iVar8 == iVar2) {
      return 0;
    }
  } while( true );
}

