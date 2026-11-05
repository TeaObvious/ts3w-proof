/* Original TS3W PC 1.67; reference identity: evidence/reference.json.
 * Actual saved Ghidra C; current full name: FrameDrawable_SelectStateRow.
 * The actual exported suffix below is unchanged, including generated ABI/types and known projection limits.
 * DB EOL comments are preserved as addressed annotations; no inline placement is inferred.
 * Save was acknowledged; no reopen test or original runtime observation is claimed.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00522C56 [EOL]: Only low3bits select cases; low values4..7 fall directly to normal row+C.
 * 00522C65 [EOL]: Mask0x08 requests checked variant; this physical mask is separate from managed state ordinal4.
 * 00522C6A [EOL]: A candidate row is present only when its styleDWORD is nonzero; color is not tested.
 * 00522C9E [EOL]: Checked highlighted fallback checks checked-normal style before unchecked highlighted.
 * 00522CC1 [EOL]: Checked active fallback checks checked-normal style before unchecked active.
 * 00522CD3 [EOL]: Unconditional normal-row fallback, without testing its style or color; EAX aliases receiver+C.
 * 00522CD6 [EOL]: Return selected interior row pointer in EAX; RET4 consumes packed-state input only.
 */



/* Analyst-assigned FrameDrawable state-row selector; original PC1.67. Existing owned
   body00522C50..00522CD8 (137bytes/46instructions), unchanged. ECX is complete FrameDrawable
   receiver; stack+4 is a packed native control-state word; EAX returns an interior8byte style/color
   row pointer and RET4 consumes that word. Input low3bits select cases0..3 via4DWORD table00522CDC;
   unsigned values4..7 select normal row+C. Mask0x08 enables checked variants and is not the managed
   ControlStates ordinal4. Ordered fallback: case0 checkedNormal+2C then normal+C; case1
   checkedDisabled+34 then disabled+14 then normal; case2 checkedHighlighted+3C then
   checkedNormal+2C then highlighted+1C then normal; case3 checkedActive+44 then checkedNormal+2C
   then active+24 then normal. Each non-normal candidate is admitted only if its firstDWORD style is
   nonzero; its color is never tested. Normal row is returned without testing its style. Input
   upperbits outside0x0F are ignored here. The returned pointer aliases receiver storage, with no
   allocation, copy, refcount or ownership transfer. Caller522DC0 consumes both row words. No
   null/bounds guards or original runtime execution observed; producer semantics of packed input
   remain a separate question. */

int __thiscall FrameDrawable_SelectStateRow(void *this,uint packedState)

{
  switch(packedState & 7) {
  case 0:
    if (((packedState & 8) != 0) && (*(int *)((int)this + 0x2c) != 0)) {
      return (int)this + 0x2c;
    }
    break;
  case 1:
    if (((packedState & 8) != 0) && (*(int *)((int)this + 0x34) != 0)) {
      return (int)this + 0x34;
    }
    if (*(int *)((int)this + 0x14) != 0) {
      return (int)this + 0x14;
    }
    break;
  case 2:
    if ((packedState & 8) != 0) {
      if (*(int *)((int)this + 0x3c) != 0) {
        return (int)this + 0x3c;
      }
      if (*(int *)((int)this + 0x2c) != 0) {
        return (int)this + 0x2c;
      }
    }
    if (*(int *)((int)this + 0x1c) != 0) {
      return (int)this + 0x1c;
    }
    break;
  case 3:
    if ((packedState & 8) != 0) {
      if (*(int *)((int)this + 0x44) != 0) {
        return (int)this + 0x44;
      }
      if (*(int *)((int)this + 0x2c) != 0) {
        return (int)this + 0x2c;
      }
    }
    if (*(int *)((int)this + 0x24) != 0) {
      return (int)this + 0x24;
    }
  }
  return (int)this + 0xc;
}

