/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_00595240. ECX object, reads DWORD flags at +4, returns full EAX and plain
   RET. Scan known product bits20 down through2; bit1 produces2, otherwise return base flag1.
   Unknown bits21..31 and bit0 do not affect selection. This is highest known installed flag
   selection, not arbitrary32bit Log2. */

int __fastcall InstalledProducts_SelectHighestKnownFlag(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 4);
  if ((uVar1 >> 0x14 & 1) != 0) {
    return 0x100000;
  }
  if ((uVar1 >> 0x13 & 1) != 0) {
    return 0x80000;
  }
  if ((uVar1 >> 0x12 & 1) != 0) {
    return 0x40000;
  }
  if ((uVar1 >> 0x11 & 1) != 0) {
    return 0x20000;
  }
  if ((uVar1 >> 0x10 & 1) != 0) {
    return 0x10000;
  }
  if ((uVar1 >> 0xf & 1) != 0) {
    return 0x8000;
  }
  if ((uVar1 >> 0xe & 1) != 0) {
    return 0x4000;
  }
  if ((uVar1 >> 0xd & 1) != 0) {
    return 0x2000;
  }
  if ((uVar1 >> 0xc & 1) != 0) {
    return 0x1000;
  }
  if ((uVar1 >> 0xb & 1) != 0) {
    return 0x800;
  }
  if ((uVar1 >> 10 & 1) != 0) {
    return 0x400;
  }
  if ((uVar1 >> 9 & 1) != 0) {
    return 0x200;
  }
  if ((uVar1 >> 8 & 1) != 0) {
    return 0x100;
  }
  if ((uVar1 >> 7 & 1) != 0) {
    return 0x80;
  }
  if ((uVar1 >> 6 & 1) != 0) {
    return 0x40;
  }
  if ((uVar1 >> 5 & 1) != 0) {
    return 0x20;
  }
  if ((uVar1 >> 4 & 1) != 0) {
    return 0x10;
  }
  if ((uVar1 >> 3 & 1) != 0) {
    return 8;
  }
  if ((uVar1 >> 2 & 1) != 0) {
    return 4;
  }
  return ((uVar1 >> 1 & 1) != 0) + 1;
}

