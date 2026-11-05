/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. RET12 consumes uint64 GUID and output pointer. Success writes
   object and atomically increments object+4 refcount, returns AL1. FailureAL0 leaves output
   untouched; high EAX bits are not a result. */

bool __thiscall ObjectRegistry_AcquireGuid(void *this,ulonglong guid,void **outObject)

{
  void *local_8 [2];
  
  ObjectHash_FindGuid((void *)((int)this + 0x10),local_8,&guid);
  if (local_8[0] != *(void **)((int)this + 0x1034)) {
    *outObject = local_8[0];
    LOCK();
    *(int *)((int)local_8[0] + 4) = *(int *)((int)local_8[0] + 4) + 1;
    UNLOCK();
    return true;
  }
  return false;
}

