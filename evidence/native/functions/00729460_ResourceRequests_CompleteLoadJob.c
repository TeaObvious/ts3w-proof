/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX service plus jobpointer,statusWord RET8,
   ALBoolean; status compares literal4, not pointer/address4. Other status retires load andfalse.
   Completed path can reuse cached resource then factory+1C creation and+24 decode/installation;
   failures retire/false. On successfulpublication manager+5C, for eachpendingnode calls
   resource+0C(node.interface), storesreturned pointer and callsresource+0 onnonzero;
   missinginterface stores2. Client notified before nodeunlink/jobrelease/freelistreturn. Marks
   load+A1 beforeselectedcleanup. Raw field/call order verified; currentC may retain SP/unaff
   aliases from unexpanded indirect ABI, so do not read those as original inputs. Actual texture/GPU
   population belongs factory reader and renderer. */

bool __thiscall ResourceRequests_CompleteLoadJob(void *this,void *job,uint statusWord)

{
  LPCRITICAL_SECTION this_00;
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  char cVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  int unaff_EBX;
  int unaff_ESI;
  int *unaff_EDI;
  float10 fVar8;
  LPCRITICAL_SECTION p_Var9;
  int *local_8 [2];
  
  iVar1 = *(int *)((int)job + 0x10);
  if (*(char *)(iVar1 + 0x9f) != '\0') {
    LOCK();
    *(int *)((int)this + 0x7c) = *(int *)((int)this + 0x7c) + -1;
    UNLOCK();
    *(undefined1 *)(iVar1 + 0x9f) = 0;
    FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x40),(uint *)&DAT_00ffe344);
    *(int *)((int)this + 0x30) = *(int *)((int)this + 0x30) - *(int *)(iVar1 + 0x3c);
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x40));
  }
  if (statusWord != 4) {
    ResourceRequests_RetireLoad(this,*(void **)((int)job + 0x10));
    return false;
  }
  piVar5 = (int *)FUN_004afe80();
  local_8[0] = (int *)0x0;
  statusWord = 0;
  iVar6 = (**(code **)(**(int **)(iVar1 + 0x30) + 0x18))();
  if (iVar6 == 0x1cce04d) {
    *(undefined1 *)(iVar1 + 0xdd) = *(undefined1 *)(iVar1 + 0x97);
    statusWord = iVar1 + 0xc0;
    *(undefined4 *)(iVar1 + 0xe0) = *(undefined4 *)((int)job + 0x18);
  }
  if ((*(char *)(iVar1 + 0x97) != '\0') &&
     (piVar7 = (int *)(**(code **)(*piVar5 + 0x58))(iVar1 + 0x10), piVar3 = local_8[0],
     piVar7 != (int *)0x0)) {
    if (local_8[0] != (int *)0x0) {
      local_8[0] = (int *)0x0;
      (**(code **)(*piVar3 + 4))();
    }
    (**(code **)(*piVar7 + 0x18))(iVar1 + 0x10,local_8);
  }
  if ((local_8[0] == (int *)0x0) &&
     (cVar4 = (**(code **)(**(int **)(iVar1 + 0x30) + 0x1c))
                        (0,local_8,statusWord,*(undefined4 *)(iVar1 + 0x18)), cVar4 == '\0')) {
    ResourceRequests_RetireLoad(this,*(void **)((int)job + 0x10));
    if (local_8[0] != (int *)0x0) {
      (**(code **)(*local_8[0] + 4))();
    }
    return false;
  }
  cVar4 = (**(code **)(**(int **)(iVar1 + 0x30) + 0x24))
                    (*(undefined4 *)(iVar1 + 0x28),local_8[0],statusWord,
                     *(undefined4 *)(iVar1 + 0x18));
  if (cVar4 == '\0') {
    ResourceRequests_RetireLoad(this,*(void **)(unaff_EBX + 0x10));
    if (unaff_EDI != (int *)0x0) {
      (**(code **)(*unaff_EDI + 4))();
    }
    return false;
  }
  *(undefined1 *)(iVar1 + 0xa1) = 1;
  (**(code **)(*piVar5 + 0x5c))(unaff_EDI,1);
  fVar8 = FUN_00727340(iVar1);
  FUN_00727db0(this,iVar1 + 0x10,1,(float)fVar8);
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x40);
  p_Var9 = this_00;
  FUN_004e1c00(this_00,(uint *)&DAT_00ffe344);
  iVar6 = *(int *)(iVar1 + 0xbc);
  while (iVar6 != iVar1 + 0xb8) {
    puVar2 = *(undefined4 **)(iVar1 + 0xbc);
    if (puVar2[2] != 0) {
                    /* Tree texture review: Resource virtual0C receives node+0C interface word; its
                       returned EAX is assigned through node+08 slot on success, literal2 on missing
                       interface. No receipt SHA/AbsentBinding object here. */
      iVar6 = (**(code **)(*(int *)statusWord + 0xc))(puVar2[3]);
      if (iVar6 == 0) {
        *(undefined1 *)(iVar1 + 0x9e) = 1;
        *(undefined4 *)puVar2[2] = 2;
        fVar8 = FUN_00727340(iVar1);
        FUN_00727db0(this,iVar1 + 0x10,2,(float)fVar8);
      }
      else {
        (*(code *)**(undefined4 **)statusWord)();
        *(int *)puVar2[2] = iVar6;
      }
      if ((undefined4 *)puVar2[6] != (undefined4 *)0x0) {
        (*(code *)**(undefined4 **)puVar2[6])(iVar1 + 0x10,puVar2[7],iVar6);
      }
    }
    **(int **)(*(int *)(iVar1 + 0xbc) + 4) = iVar1 + 0xb8;
    *(undefined4 *)(iVar1 + 0xbc) = *(undefined4 *)(*(int *)(iVar1 + 0xbc) + 4);
    if ((void *)puVar2[5] != (void *)0x0) {
      Job_ReleaseReference((void *)puVar2[5]);
    }
    *puVar2 = *(undefined4 *)((int)this + 0x398);
    *(undefined4 **)((int)this + 0x398) = puVar2;
    this_00 = p_Var9;
    iVar6 = *(int *)(iVar1 + 0xbc);
  }
  LOCK();
  *(int *)((int)this + 0x70) = *(int *)((int)this + 0x70) + 1;
  UNLOCK();
  ResourceRequests_RetireLoad(this,*(void **)(unaff_ESI + 0x10));
  FUN_004e1cc0(this_00);
  if ((int *)statusWord != (int *)0x0) {
    (**(code **)(*(int *)statusWord + 4))();
  }
  return true;
}

