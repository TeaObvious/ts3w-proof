/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. cdecl(UInt16*,UInt32 unitCount), EDX:EAX UInt64. Basis
   CBF29CE484222325, multiply by00000100000001B3 modulo64 BEFORE XOR zero-extended low16 result of
   imported CRT towlower for each unit. Explicit-count helper includes zero units when within count;
   only Z wrapper stops at NUL. Not UTF8/FNV1a and not invariant Unicode casing. CRT locale setup
   and non-ASCII runtime behavior remain unresolved. */

ulonglong __cdecl NameHash64_Fnv1FoldedUtf16Units(ushort *units,uint unitCount)

{
  wint_t wVar1;
  uint uVar2;
  int iVar3;
  longlong lVar4;
  
  uVar2 = 0x84222325;
  iVar3 = -0x340d631c;
  for (; unitCount != 0; unitCount = unitCount - 1) {
    wVar1 = towlower(*units);
    lVar4 = __allmul(uVar2,iVar3,0x1b3,0x100);
    iVar3 = (int)((ulonglong)lVar4 >> 0x20);
    uVar2 = (uint)wVar1 ^ (uint)lVar4;
    units = units + 1;
  }
  return CONCAT44(iVar3,uVar2);
}

