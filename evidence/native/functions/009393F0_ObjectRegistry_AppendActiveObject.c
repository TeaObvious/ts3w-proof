/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Appends borrowedobject to updatevector and encodesindex
   intoobject+28; vector capacity maygrow. Invoked only when low23flags/index bits werezero. */

void __thiscall ObjectRegistry_AppendActiveObject(void *this,void *object)

{
  undefined4 *puVar1;
  
  *(int *)((int)object + 0x28) =
       *(int *)((int)object + 0x28) +
       (*(int *)((int)this + 0x11d8) - *(int *)((int)this + 0x11d4) >> 2);
  puVar1 = *(undefined4 **)((int)this + 0x11d8);
  if (puVar1 < *(undefined4 **)((int)this + 0x11dc)) {
    *(undefined4 **)((int)this + 0x11d8) = puVar1 + 1;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = object;
      return;
    }
  }
  else {
    FUN_00982420((void *)((int)this + 0x11d4),puVar1,&object);
  }
  return;
}

