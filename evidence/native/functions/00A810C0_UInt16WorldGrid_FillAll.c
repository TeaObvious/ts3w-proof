/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+ushortvalue pointer RET4 void. Copy ushort value to EVERY actual vector element
   from begin10 to end14, not a selected live-lot projection. Caller legacy AC91D0 usesFFFF for all
   masks with flag-grid dimensions. */

void __thiscall UInt16WorldGrid_FillAll(void *this,ushort *value)

{
  ushort uVar1;
  ushort *puVar2;
  ushort *puVar3;
  
  puVar2 = *(ushort **)((int)this + 0x14);
  uVar1 = *value;
  for (puVar3 = *(ushort **)((int)this + 0x10); puVar3 != puVar2; puVar3 = puVar3 + 1) {
    *puVar3 = uVar1;
  }
  return;
}

