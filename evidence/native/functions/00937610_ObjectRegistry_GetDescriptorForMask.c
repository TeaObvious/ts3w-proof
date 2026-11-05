/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Finds least set bit by unsigned tests/shifts; mask0
   mapsindex32. Returns descriptor ifindex<count, elseNULL; multibit chooses lowest bit. */

void * __thiscall ObjectRegistry_GetDescriptorForMask(void *this,uint mask)

{
  int iVar1;
  
  if (mask == 0) {
    iVar1 = 0x20;
  }
  else {
    iVar1 = 1;
    if ((mask & 0xffff) == 0) {
      iVar1 = 0x11;
      mask = mask >> 0x10;
    }
    if ((char)mask == '\0') {
      iVar1 = iVar1 + 8;
      mask = mask >> 8;
    }
    if ((mask & 0xf) == 0) {
      iVar1 = iVar1 + 4;
      mask = mask >> 4;
    }
    if ((mask & 3) == 0) {
      iVar1 = iVar1 + 2;
      mask = mask >> 2;
    }
    iVar1 = iVar1 - (mask & 1);
  }
  if (iVar1 < *(int *)((int)this + 0x11c8)) {
    return *(void **)((int)this + iVar1 * 4 + 0x1044);
  }
  return (void *)0x0;
}

