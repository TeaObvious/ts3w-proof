/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x007d7a5f) */
/* Analyst PC 1.67 NGMP instruction review. ECX reader, RET8(UInt32 count,UInt32 stride). Unsigned
   MUL produces full64-bit required bytes. Get position(origin0) and cached or live UInt32 end,
   reject unsigned position>end. Then CDQ SIGN-EXTENDS position before zeroextendedEnd -
   signextendedPosition viaSUB/SBB; compare resulting64-bit availability to product unsigned. Thus
   simplification end-position is valid only below80000000. Invalid clears byte+14; true does not
   restore it. */

bool __thiscall StreamReader_CheckArrayBytes(void *this,uint count,uint stride)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = (**(code **)(**(int **)((int)this + 8) + 0x24))(*(int **)((int)this + 8),0);
  if (*(char *)((int)this + 0x15) == '\0') {
    uVar2 = (**(code **)(**(int **)((int)this + 8) + 0x1c))(*(int **)((int)this + 8));
  }
  else {
    uVar2 = *(uint *)((int)this + 0xc);
  }
                    /* CDQ sign-extends current32-bit stream position. Preserve high-bit arithmetic;
                       required array bytes came from unsigned MUL. */
  if ((uVar1 <= uVar2) &&
     ((ulonglong)count * (ulonglong)stride <=
      CONCAT44(-(uint)(uVar2 < uVar1) - ((int)uVar1 >> 0x1f),uVar2 - uVar1))) {
    return true;
  }
  *(undefined1 *)((int)this + 0x14) = 0;
  return false;
}

