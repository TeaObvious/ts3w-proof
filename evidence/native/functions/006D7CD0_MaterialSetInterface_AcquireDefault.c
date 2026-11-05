/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX interface, out pointer, RET4, ALsuccess. If interface+4
   null writesNULL/false; otherwise retains default via virtual0 then writesout/true. No geometry
   selection. */

bool __thiscall MaterialSetInterface_AcquireDefault(void *this,void *outMaterial)

{
  if (*(undefined4 **)((int)this + 4) == (undefined4 *)0x0) {
    *(undefined4 *)outMaterial = 0;
    return false;
  }
  (**(code **)**(undefined4 **)((int)this + 4))();
  *(undefined4 *)outMaterial = *(undefined4 *)((int)this + 4);
  return true;
}

