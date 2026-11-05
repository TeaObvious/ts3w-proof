/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Admits current job states1,2,4,5. Dependency7 or JobLink
   allocation failure retires current job; dependency6 adds no link. Otherwise inserts relation into
   job+38 dependency list and dependency+40 dependent list, then reprioritizes if needed. If
   original jobstate4 normal completion writes state5 after dependency handling. No new owning
   reference to stack context is created; caller must wait via0059aec0. Switch covers1/2/4/5; state3
   has default behavior. */

void __thiscall JobManager_AddInternalDependency(void *this,void *job,void *dependency)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  int *piVar5;
  int local_10;
  int local_c;
  LPCRITICAL_SECTION local_8;
  int local_4;
  
  local_8 = (LPCRITICAL_SECTION)((int)this + 8);
  FUN_004e1c00(local_8,(uint *)&DAT_00fda7ac);
  local_c = *(int *)((int)job + 0x24);
  switch(local_c) {
  case 1:
  case 2:
  case 4:
  case 5:
    if (*(int *)((int)dependency + 0x24) == 7) {
      JobManager_RetireInternalJob(this,job,true);
      FUN_004e1cc0(local_8);
      return;
    }
    if (*(int *)((int)dependency + 0x24) != 6) {
      piVar4 = (int *)FUN_00599de0((int)this);
      if (piVar4 == (int *)0x0) {
        JobManager_RetireInternalJob(this,job,true);
      }
      else {
        piVar4[4] = (int)dependency;
        piVar4[5] = (int)job;
        iVar2 = *(int *)((int)job + 0x3c);
        *piVar4 = (int)job + 0x38;
        piVar4[1] = iVar2;
        *(int **)((int)job + 0x3c) = piVar4;
        *(int **)piVar4[1] = piVar4;
        piVar5 = (int *)((int)dependency + 0x40);
        FUN_0059a480(&local_10,(undefined4 *)*piVar5,piVar5,(int)piVar4);
        puVar3 = *(undefined4 **)(local_10 + 4);
        piVar1 = piVar4 + 2;
        *(int **)(local_10 + 4) = piVar1;
        *puVar3 = piVar1;
        piVar4[3] = (int)puVar3;
        *piVar1 = local_10;
        local_4 = local_10;
        if (local_10 == *piVar5) {
          FUN_0059ae30((int)job);
        }
      }
    }
    if (local_c == 4) {
      *(undefined4 *)((int)job + 0x24) = 5;
    }
  }
  FUN_004e1cc0(local_8);
  return;
}

