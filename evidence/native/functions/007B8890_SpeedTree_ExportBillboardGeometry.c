/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 billboard orientation contract. ECX wrapper, one output geometry pointer, RET4.
   Writes width from extents+18, abs(abs(maxY)) height, vertical count=embedded row count minus bool
   wrapper+E2, and BORROWED atlas pointer from embedded+0C into geometry+B0/B4/B8/BC. Does not
   apply10007 or reorder/transform UVs. Sets two raw alpha fields255 and clears selected transient
   pointers. */

void __thiscall SpeedTree_ExportBillboardGeometry(void *this,int param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 0xb0) = *(undefined4 *)(*(int *)((int)this + 0x44) + 0x18);
  *(float *)(param_1 + 0xb4) = ABS(ABS(*(float *)(*(int *)((int)this + 0x44) + 0x10)));
  if (*(int *)((int)this + 0x54) != 0) {
    *(uint *)(param_1 + 0xb8) =
         *(int *)(*(int *)((int)this + 0x54) + 8) - (uint)(*(char *)((int)this + 0xe2) != '\0');
    *(undefined4 *)(param_1 + 0xbc) = *(undefined4 *)(*(int *)((int)this + 0x54) + 0xc);
  }
  uVar1 = DAT_010172f8;
  *(undefined4 *)(param_1 + 0xc0) = 0;
  *(undefined4 *)(param_1 + 200) = 0;
  *(undefined4 *)(param_1 + 0xc4) = 0;
  *(undefined4 *)(param_1 + 0xdc) = uVar1;
  *(undefined4 *)(param_1 + 0xd8) = uVar1;
  return;
}

