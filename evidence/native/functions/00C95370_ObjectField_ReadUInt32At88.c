/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned neutral field getter. Physical ECX
   object/no stackwords/plainRET; MOV EAX,DWORD[ECX+88], full32-bit return. In CFIR context C955C0
   writes zero-extended unsigned widthbyte here; constructor stores0. Native placement CE1FA0
   compares this result to1. No width1..3 validation or global Fireplace-only receiver type is
   inferred. */

uint __thiscall ObjectField_ReadUInt32At88(void *this)

{
  return *(uint *)((int)this + 0x88);
}

