/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Stores DWORD ordinal at component+0x2b8 and invalidates first part
   through006b71c0 when part list nonempty. No bias conversion here. */

void __thiscall RenderComponent_SetRugLayerOrdinal(void *this,uint ordinal)

{
  *(uint *)((int)this + 0x2b8) = ordinal;
  if (*(undefined4 **)((int)this + 0x1f8) != *(undefined4 **)((int)this + 0x1fc)) {
    FUN_006b71c0((void *)**(undefined4 **)((int)this + 0x1f8),'\0');
    return;
  }
  return;
}

