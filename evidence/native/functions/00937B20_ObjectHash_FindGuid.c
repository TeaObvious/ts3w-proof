/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Unsigned DIV by0x409 hashes low GUID word. Both words compare
   at node+8/+c; chain=node+10. Miss returns iterator{sentinel, sentinel-slot}; EAX returns output
   iterator. */

void * __thiscall ObjectHash_FindGuid(void *this,void *outIterator,ulonglong *guid)

{
  uint uVar1;
  int local_8;
  int *local_4;
  
  uVar1 = (uint)*guid % 0x409;
  local_8 = *(int *)((int)this + uVar1 * 4);
  local_4 = (int *)((int)this + uVar1 * 4);
  if (local_8 != 0) {
    do {
      if (((int)*guid == *(int *)(local_8 + 8)) &&
         (*(int *)((int)guid + 4) == *(int *)(local_8 + 0xc))) goto LAB_00937b64;
      local_8 = *(int *)(local_8 + 0x10);
    } while (local_8 != 0);
  }
  local_4 = (int *)((int)this + 0x1024);
  local_8 = *local_4;
LAB_00937b64:
  *(int *)outIterator = local_8;
  *(int **)((int)outIterator + 4) = local_4;
  return outIterator;
}

