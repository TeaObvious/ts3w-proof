/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 lot-bearing terrain draw-record copy constructor. Physical ECX destination, one
   source pointer; RET 04; EAX returns destination. Zero destination+0C before reading/conditionally
   retaining source material at +0C through virtual +0, then assign using the existing conditional
   retain/release sequence. Copy source+8 to destination+8: selected producer 00C81E00 populated
   this word with its incoming lot pointer. Coordinates at +0/+4 use FLD/FSTP, not an arbitrary
   bytewise copy guarantee; selected +10/+14/+18/+1C DWORDs are copied separately. Flag masks
   1,2,8,4 update only their bits at +20 and preserve other destination bits. This constructor does
   not acquire ownership of the lot pointer or establish outer vector/material teardown. */

void * __thiscall TerrainLotDrawRecord_CopyConstruct(void *this,undefined4 *param_1)

{
  int *piVar1;
  int *piVar2;
  byte bVar3;
  
  *(undefined4 *)((int)this + 0xc) = 0;
                    /* Copy lot pointer at source+8 to destination+8; no lot retain is performed
                       here. */
  *(undefined4 *)((int)this + 8) = param_1[2];
  piVar1 = (int *)param_1[3];
  piVar2 = *(int **)((int)this + 0xc);
  if (piVar1 != piVar2) {
    if (piVar1 != (int *)0x0) {
      (**(code **)*piVar1)();
    }
    *(int **)((int)this + 0xc) = piVar1;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  *(undefined4 *)((int)this + 0x18) = param_1[6];
  *(undefined4 *)((int)this + 0x10) = param_1[4];
  *(undefined4 *)((int)this + 0x14) = param_1[5];
  *(undefined4 *)((int)this + 0x1c) = param_1[7];
                    /* Coordinate copies use x87 FLD/FSTP; do not describe all record bytes as raw
                       memcpy or overwrite unselected flag bits. */
  *(undefined4 *)this = *param_1;
  *(undefined4 *)((int)this + 4) = param_1[1];
  *(byte *)((int)this + 0x20) =
       *(byte *)((int)this + 0x20) ^ (*(byte *)((int)this + 0x20) ^ *(byte *)(param_1 + 8)) & 1;
  bVar3 = (*(byte *)(param_1 + 8) ^ *(byte *)((int)this + 0x20)) & 2 ^ *(byte *)((int)this + 0x20);
  *(byte *)((int)this + 0x20) = bVar3;
  bVar3 = (*(byte *)(param_1 + 8) ^ bVar3) & 8 ^ bVar3;
  *(byte *)((int)this + 0x20) = bVar3;
  *(byte *)((int)this + 0x20) = (*(byte *)(param_1 + 8) ^ bVar3) & 4 ^ bVar3;
  return this;
}

