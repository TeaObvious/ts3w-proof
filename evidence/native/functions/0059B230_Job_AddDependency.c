/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Public wrapper: ECX current public handle and one stack
   public dependency handle; subtracts8 from both non-null handles and invokes0059b0a0 via current
   owner manager. RET4. Null current handle is not safe; null dependency becomes internal0 and
   deeper code dereferences its state. */

void __thiscall Job_AddDependency(void *this,void *dependency)

{
  void *dependency_00;
  
  if (dependency == (void *)0x0) {
    dependency_00 = (void *)0x0;
  }
  else {
    dependency_00 = (void *)((int)dependency + -8);
  }
  if (this != (void *)0x0) {
    JobManager_AddInternalDependency
              (*(void **)((int)this + 0x2c),(void *)((int)this + -8),dependency_00);
    return;
  }
  JobManager_AddInternalDependency(pvRam00000034,(void *)0x0,dependency_00);
  return;
}

