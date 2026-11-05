/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXallocatedgeometry, no stackwords, EAXthis pointer/plainRET. CallsbaseA7D510,
   zeros2B0/2B4/2B8, installsvtable106FB50. Originaldataat106FBE8(+98hex) isB6DD00, closing actual
   A7E2B0 virtualtilequery for puddles. Shader/material andbaseownership are separate. */

undefined * __thiscall PuddleGeometry_Construct(void *this)

{
  FUN_00a7d510(this);
  *(undefined4 *)((int)this + 0x2b0) = 0;
  *(undefined4 *)((int)this + 0x2b4) = 0;
  *(undefined ***)this = &PTR_FUN_0106fb50;
  *(undefined4 *)((int)this + 0x2b8) = 0;
  return this;
}

