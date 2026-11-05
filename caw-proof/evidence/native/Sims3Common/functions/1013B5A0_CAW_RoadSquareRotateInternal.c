/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 internal road-square rotation method reached from RoadSquareWrap_Rotate at
   0x1098C780. The first pointer is the ECX this value. It checks a byte lock flag, invokes a
   boundary/update helper, adds deltaRadians to a stored float at +0x40, calls virtual slot +0x44,
   and may invoke the boundary helper when the moving flag is false. Ghidra's char/offset
   presentation is a decompiler interpretation; raw instruction offsets govern field claims. */

void __thiscall CAW_RoadSquareRotateInternal(void *this,float param_1,char param_2)

{
  void *this_00;
  code *pcVar1;
  
  if (*(char *)((int)this + 0x24) == '\0') {
    this_00 = *(void **)(DAT_10c700c4 + 0x5c);
    if (*(char *)((int)this + 0xc) == '\0') {
      FUN_10140ff0(this_00,(float *)((int)this + 0x10));
    }
    pcVar1 = *(code **)(*(int *)this + 0x44);
    *(char *)((int)this + 0xc) = param_2;
    *(float *)((int)this + 0x40) = param_1 + *(float *)((int)this + 0x40);
    (*pcVar1)();
    if (param_2 == '\0') {
      FUN_10140ff0(this_00,(float *)((int)this + 0x10));
    }
  }
  return;
}

