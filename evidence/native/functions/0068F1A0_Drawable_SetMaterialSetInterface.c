/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX drawable, retained interface pointer, RET4. Retains
   incoming atvirtual0 before releasesold+34 virtual4, then stores+34. No geometry range mutation.
    */

void __thiscall Drawable_SetMaterialSetInterface(void *this,void *materialSet)

{
  if (materialSet != (void *)0x0) {
    (*(code *)**(undefined4 **)materialSet)();
  }
  if (*(int **)((int)this + 0x34) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x34) + 4))();
  }
  *(void **)((int)this + 0x34) = materialSet;
  return;
}

