/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). Physical thiscall writer plus converted
   native object pointer (RET4). Null returns FFFFFFFFh. Candidate index derives ordered vector
   length; pointer-key map insertion returns existing index on duplicate and only new entry follows
   reference acquisition/vector append. This deduplicates converted pointer identity, not
   preconversion numeric handle identity. */

undefined4 __thiscall PersistWriter_IndexNativeObject(void *this,int *param_1)

{
  int *piVar1;
  int *piVar2;
  int *local_14;
  int local_10;
  int local_c [2];
  char local_4;
  
  piVar2 = param_1;
  if (param_1 == (int *)0x0) {
    return 0xffffffff;
  }
  local_10 = *(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2;
  param_1 = (int *)((uint)param_1 & 0xffffff00);
  local_14 = piVar2;
  UInt32PairMap_InsertUnique((void *)((int)this + 0x2c),local_c,(uint *)&local_14,(uint)param_1);
  if (local_4 != '\0') {
    param_1 = piVar2;
    (**(code **)*piVar2)();
    piVar1 = *(int **)((int)this + 0x20);
    if (piVar1 < *(int **)((int)this + 0x24)) {
      *(int **)((int)this + 0x20) = piVar1 + 1;
      if (piVar1 != (int *)0x0) {
        *piVar1 = (int)piVar2;
        (**(code **)*piVar2)();
      }
    }
    else {
      FUN_00c65ad0((void *)((int)this + 0x1c),piVar1,(int *)&param_1);
      piVar2 = param_1;
    }
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  return *(undefined4 *)(local_c[0] + 4);
}

