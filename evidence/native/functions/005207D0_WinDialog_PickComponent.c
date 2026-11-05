/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* PC 1.67 dialog component picker; analyst name WinDialog_PickComponent is inferred from WinDialog
   constructor/vtable/state use, not recovered original symbol. ECX=this; two binary32 stack
   coordinates; RET 8; EAX component -1 or 0..9. DWORD flags at +0x258: bit 0x20 enables border
   classification; bit 8 enables title rectangle classification. Border float fields
   +0x324/+0x328/+0x32c/+0x330 are left/top/right/bottom. With borders, width=(right-left),
   height=(bottom-top), then subtract right/bottom border. Components 2/3 left/right,4/5
   top/bottom,6/7/8/9 corners TL/TR/BL/BR. Client interior is 0 only when title bit is off; with
   title bit on, rectangle +0x284..+0x290 returns 1 inside and -1 otherwise. Native COMISS/JBE/JC
   branch order governs unordered/inverted values; do not normalize or replace with assumed
   total-order bounds. This routine does not test Moveable/Sizeable. */

undefined4 __thiscall WinDialog_PickComponent(void *this,float param_1,float param_2)

{
  float fVar1;
  float fVar2;
  
  if ((*(uint *)((int)this + 600) & 0x20) != 0) {
    fVar1 = *(float *)((int)this + 0x328);
    fVar2 = (*(float *)((int)this + 0x4c) - *(float *)((int)this + 0x44)) -
            *(float *)((int)this + 0x330);
    if (param_1 < *(float *)((int)this + 0x324)) {
      if (param_2 < fVar1) {
        return 6;
      }
      if (fVar2 <= param_2) {
        return 8;
      }
      return 2;
    }
    if ((*(float *)((int)this + 0x48) - *(float *)((int)this + 0x40)) -
        *(float *)((int)this + 0x32c) <= param_1) {
      if (param_2 < fVar1) {
        return 7;
      }
      if (fVar2 <= param_2) {
        return 9;
      }
      return 3;
    }
    if (param_2 < fVar1) {
      return 4;
    }
    if (fVar2 <= param_2) {
      return 5;
    }
  }
  if ((*(uint *)((int)this + 600) & 8) == 0) {
    return 0;
  }
  if ((((*(float *)((int)this + 0x284) <= param_1) && (*(float *)((int)this + 0x288) <= param_2)) &&
      (param_1 < *(float *)((int)this + 0x28c))) && (param_2 < *(float *)((int)this + 0x290))) {
    return 1;
  }
  return 0xffffffff;
}

