/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX reader context, destination and element-count stack
   words/RET8. Forwards actual stream, destination, element count and context byte-order word to
   Stream_ReadUtf16UnitsEndian then accumulates low-byte status. This is a ushort bank despite the
   shared helper historical UTF16 name; it does not decode text. */

void __thiscall BlendGeometry_ReadUInt16Bank(void *this,ushort *param_1,int param_2)

{
  uint uVar1;
  
  uVar1 = Stream_ReadUtf16UnitsEndian
                    (*(int **)((int)this + 8),param_1,param_2,*(uint *)((int)this + 0x10));
  StreamReader_AccumulateStatus(this,(byte)uVar1);
  return;
}

