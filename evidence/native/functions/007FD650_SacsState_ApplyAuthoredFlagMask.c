/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 static: ECX state, two stack dwords, RET8.
   Masked bits0..8 applied in increasing order; bytes public+4F,
   entry+51,exit+52,loop+50,one-shot+53,hold+54,sync+4C,join+4D,explicit+4E. Setter side effects
   matter; final bit8 overwrites earlier promotion to explicit. This is not nine independent bit
   tests; helper setter full side effects require their own bodies.
   
   Analyst note (PC1.67 SACS migration contract): ECX state,two dwords RET8. Authored bits0..8 are
   conditional on mask and processed in increasing order. Entry/exit/loop/public effects inline;
   calls007FD5B0 one-shot,007FD480 hold,007FD390 join. Explicit+4E assigned from bit8 last.
   Final007FD200 packs actual resulting state flags into EAX; it is a getter, not explicit setter.
   Fresh all-mask reader path is distinct from partial mutation of existing state. */

void __thiscall SacsState_ApplyAuthoredFlagMask(void *this,uint param_1,uint param_2)

{
  byte bVar1;
  
  if ((param_1 & 1) != 0) {
    bVar1 = (byte)param_2 & 1;
    if (*(byte *)((int)this + 0x4f) != bVar1) {
      *(byte *)((int)this + 0x4f) = bVar1;
      if ((param_2 & 1) == 0) {
        *(undefined1 *)((int)this + 0x50) = 0;
        *(undefined1 *)((int)this + 0x51) = 0;
        *(undefined1 *)((int)this + 0x52) = 0;
        *(undefined1 *)((int)this + 0x53) = 0;
        *(undefined1 *)((int)this + 0x54) = 0;
      }
      else {
        *(undefined1 *)((int)this + 0x4d) = 0;
        *(undefined1 *)((int)this + 0x4e) = 1;
      }
    }
  }
  if (((param_1 & 2) != 0) &&
     (*(byte *)((int)this + 0x51) = (byte)(param_2 >> 1) & 1, (param_2 >> 1 & 1) != 0)) {
    if (*(char *)((int)this + 0x4f) != '\x01') {
      *(undefined1 *)((int)this + 0x4f) = 1;
      *(undefined1 *)((int)this + 0x4d) = 0;
      *(undefined1 *)((int)this + 0x4e) = 1;
    }
    if (*(char *)((int)this + 0x53) != '\0') {
      *(undefined1 *)((int)this + 0x53) = 0;
    }
    if (*(char *)((int)this + 0x54) != '\0') {
      *(undefined1 *)((int)this + 0x54) = 0;
    }
    *(undefined1 *)((int)this + 0x50) = 0;
  }
  if (((param_1 & 4) != 0) &&
     (*(byte *)((int)this + 0x52) = (byte)(param_2 >> 2) & 1, (param_2 >> 2 & 1) != 0)) {
    if (*(char *)((int)this + 0x4f) != '\x01') {
      *(undefined1 *)((int)this + 0x4f) = 1;
      *(undefined1 *)((int)this + 0x4d) = 0;
      *(undefined1 *)((int)this + 0x4e) = 1;
    }
    if (*(char *)((int)this + 0x53) != '\0') {
      *(undefined1 *)((int)this + 0x53) = 0;
    }
    if (*(char *)((int)this + 0x54) != '\0') {
      *(undefined1 *)((int)this + 0x54) = 0;
    }
    *(undefined1 *)((int)this + 0x50) = 0;
  }
  if (((param_1 & 8) != 0) &&
     (*(byte *)((int)this + 0x50) = (byte)(param_2 >> 3) & 1, (param_2 >> 3 & 1) != 0)) {
    if (*(char *)((int)this + 0x4f) != '\x01') {
      *(undefined1 *)((int)this + 0x4f) = 1;
      *(undefined1 *)((int)this + 0x4d) = 0;
      *(undefined1 *)((int)this + 0x4e) = 1;
    }
    if (*(char *)((int)this + 0x53) != '\0') {
      *(undefined1 *)((int)this + 0x53) = 0;
    }
    if (*(char *)((int)this + 0x54) != '\0') {
      *(undefined1 *)((int)this + 0x54) = 0;
    }
  }
  if ((param_1 & 0x10) != 0) {
    SacsState_SetOneShotFlag(this,(byte)(param_2 >> 4) & 1);
  }
  if ((param_1 & 0x20) != 0) {
    SacsState_SetHoldFlag(this,(byte)(param_2 >> 5) & 1);
  }
  if ((param_1 & 0x40) != 0) {
    bVar1 = (byte)(param_2 >> 6) & 1;
    if (((*(byte *)((int)this + 0x4c) != bVar1) &&
        (*(byte *)((int)this + 0x4c) = bVar1, (param_2 >> 6 & 1) != 0)) &&
       (*(char *)((int)this + 0x4d) != '\0')) {
      *(undefined1 *)((int)this + 0x4d) = 0;
    }
  }
  if ((char)param_1 < '\0') {
    SacsState_SetJoinFlag(this,(byte)(param_2 >> 7) & 1);
  }
  if (((param_1 & 0x100) != 0) &&
     (bVar1 = (byte)(param_2 >> 8) & 1, *(byte *)((int)this + 0x4e) != bVar1)) {
    *(byte *)((int)this + 0x4e) = bVar1;
  }
  SacsState_PackEffectiveFlags((int)this);
  return;
}

