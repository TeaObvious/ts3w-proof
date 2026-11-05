/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Additional exact caller95E650 suppliesmask1/base;95E970 suppliesmask10/inheritedparent. Both use the same synchronous event18/summary producer, so direct absence of9356C0 in78D700 is not absence of transitive component events. */

/* Analyst-assigned name. PC1.67 static instruction review. Compares flags+8 masked by requestedMask
   against all-zero/all-one target from nonzero byte. On mismatch XORs the entire mask; do not
   generalize as arbitrary multibit replacement. Wall caller supplies single mask0x8 (bit3). Changed
   state emits synchronous object event24 with three stack bytes: bit0,bit2,(flags&0x39)==0x39.
   Unchanged state emits nothing. */

void __thiscall VisualState_SetOneBitFlag(void *this,uint requestedMask,byte enabledByte)

{
  uint uVar1;
  byte bStack00000009;
  undefined1 uStack0000000a;
  
  if ((*(uint *)((int)this + 8) & requestedMask) != (-(uint)(enabledByte != 0) & requestedMask)) {
                    /* XOR entire requestedMask only on mismatch. For wall caller mask8 this is a
                       one-bit set/clear transition. */
    uVar1 = *(uint *)((int)this + 8) ^ requestedMask;
    enabledByte = (byte)uVar1 & 1;
    *(uint *)((int)this + 8) = uVar1;
    bStack00000009 = (byte)(uVar1 >> 2) & 1;
    uStack0000000a = ((byte)uVar1 & 0x39) == 0x39;
                    /* Three-byte temporary summary: bit0,bit2,all-of-mask0x39. Synchronous
                       ObjectEvents_Dispatch consumes within this stack lifetime. */
    ObjectEvents_Dispatch(0x18,*(void **)((int)this + 4),&enabledByte);
  }
  return;
}

