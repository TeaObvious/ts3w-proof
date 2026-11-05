/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX shader definition, unsigned ordinal, RET4.
   Ordinal>=techniqueCount fallsback0; storesordinal+14 andselected16-byte row+10, orNULL
   whenarray+8 null. No sample-count query or per-category state synthesis. */

void __thiscall ShaderDefinition_SelectTechniqueOrdinal(void *this,uint techniqueOrdinal)

{
  if (*(uint *)((int)this + 0xc) <= techniqueOrdinal) {
    techniqueOrdinal = 0;
  }
  *(uint *)((int)this + 0x14) = techniqueOrdinal;
  if (*(int *)((int)this + 8) == 0) {
    *(undefined4 *)((int)this + 0x10) = 0;
    return;
  }
  *(uint *)((int)this + 0x10) = techniqueOrdinal * 0x10 + *(int *)((int)this + 8);
  return;
}

