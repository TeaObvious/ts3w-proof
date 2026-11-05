/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX service and one slotpointer RET4, AL.
   Lock40; bit0-tagged slot addresses node|1, load pointer is *(slotValue+F)=node+10. Retains load,
   marks9A, may promote/erase queued job, retains load+A8 job, releaseslock. If job exists maywait
   event atload48 with500 thenpriority500 and Job_WaitUntilTerminal. Afterwards tests
   nonzero/low2bits0 slot, releases load/job. This is explicit settle/wait path, skipped by7154F0's
   proxy arguments; selected submit may still do immediate work before it. Iterator by-value aliases
   are decompiler representations, not new data layouts. */

bool __thiscall ResourceRequests_SettleSlot(void *this,uint *slot)

{
  undefined4 *puVar1;
  void *this_00;
  undefined4 *puVar2;
  undefined4 *puVar3;
  char cVar4;
  bool bVar5;
  int *piVar6;
  void *pvVar7;
  int *piVar8;
  undefined4 auStack_10 [4];
  
  pvVar7 = (void *)0x0;
  piVar6 = (int *)0x0;
  cVar4 = '\0';
  FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x40),(uint *)&DAT_00ffe344);
  if ((*slot & 1) != 0) {
    piVar6 = *(int **)(*slot + 0xf);
    if (piVar6 == (int *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      (**(code **)*piVar6)();
      *(undefined1 *)((int)piVar6 + 0x9a) = 1;
      if ((*(char *)((int)piVar6 + 0x99) != '\0') &&
         (*(int *)((int)this + 0xc) != *(int *)((int)this + 0x1c))) {
        FUN_00727c30(this,piVar6[0x29],500);
        puVar3 = *(undefined4 **)((int)this + 0xc);
        puVar1 = *(undefined4 **)((int)this + 0x14);
        piVar8 = *(int **)((int)this + 0x18);
        puVar2 = *(undefined4 **)((int)this + 0x10);
        while (puVar3 != *(undefined4 **)((int)this + 0x1c)) {
          pvVar7 = (void *)*puVar3;
          if ((void *)piVar6[0x29] == pvVar7) {
            FUN_00728e50((void *)((int)this + 4),auStack_10,(int)puVar3,(int)puVar2,(int)puVar1,
                         piVar8);
            Job_ReleaseReference(pvVar7);
            break;
          }
          puVar3 = puVar3 + 2;
          if (puVar3 == puVar1) {
            puVar3 = (undefined4 *)piVar8[1];
            piVar8 = piVar8 + 1;
            puVar1 = puVar3 + 0x40;
            puVar2 = puVar3;
          }
        }
      }
      this_00 = (void *)piVar6[0x2a];
      pvVar7 = (void *)0x0;
      if (this_00 != (void *)0x0) {
        Job_AddReference(this_00);
        pvVar7 = this_00;
      }
      cVar4 = *(char *)((int)piVar6 + 0x9b);
    }
  }
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x40));
  if (pvVar7 != (void *)0x0) {
    if (cVar4 != '\0') {
      FUN_00401230(piVar6 + 0x12,500);
    }
    FUN_0059b1e0(pvVar7,500);
    Job_WaitUntilTerminal(pvVar7);
  }
  if (((*slot & 3) == 0) && (*slot != 0)) {
    bVar5 = true;
  }
  else {
    bVar5 = false;
  }
  if (piVar6 != (int *)0x0) {
    (**(code **)(*piVar6 + 4))();
  }
  if (pvVar7 != (void *)0x0) {
    Job_ReleaseReference(pvVar7);
  }
  return bVar5;
}

