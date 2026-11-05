/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Requestedzero uses generator; nonzero duplicate returns zero;
   otherwise retains requested64 value. ECX registry, RET8, result EDX:EAX. */

ulonglong __thiscall ObjectRegistry_SelectUnusedGuid(void *this,ulonglong requestedGuid)

{
  ulonglong uVar1;
  int local_8 [2];
  
  uVar1 = requestedGuid;
  if (requestedGuid == 0) {
    uVar1 = ObjectRegistry_GenerateUnusedGuid(this);
    return uVar1;
  }
  ObjectHash_FindGuid((void *)((int)this + 0x10),local_8,&requestedGuid);
  if ((local_8[0] != *(int *)((int)this + 0x1034)) && (local_8[0] != 0)) {
    return 0;
  }
  return uVar1;
}

