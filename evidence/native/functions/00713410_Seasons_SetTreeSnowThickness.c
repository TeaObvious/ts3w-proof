/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_SetTreeSnowThickness:


/* Analyst-assigned name and instruction-confirmed prototype: ECX is tree manager; one float stack
   argument, RET4. Tree manager vtableFFC848 slot+28 targets this body. Stores snow thickness
   at+1E0; the weather tick's virtual+28 call supplies applied packet thickness, consumed by
   per-tree dynamic snow-parameter interpolation. */

void __thiscall Seasons_SetTreeSnowThickness(void *this,float snowThickness)

{
                    /* Tree-manager virtual slot+0x28 target. Stores supplied snow thickness at
                       manager+0x1E0; weather frame dispatch passes applied packet thickness to this
                       slot while snow is active. The per-tree binding interpolates snow endpoints
                       using this field. */
  *(float *)((int)this + 0x1e0) = snowThickness;
  return;
}


