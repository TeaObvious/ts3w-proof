/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall owner ECX,width,height stack, RET8;
   onlyAL true. Stores unsigned dimensions+8/+C; internal tile cols+10 and rows+14 are
   ((dimension-1)>>4)+1 with32-bit wrapping; total+18 IMUL product. Initializes two arrays and dirty
   extents max/min sentinels. No zero/overflow dimension admission check here. Does not by itself
   allocate ordinary paint layers or synthesize color/weights. */

bool __thiscall TerrainBlend_InitializeDimensions(void *this,uint width,uint height)

{
  int iVar1;
  int iVar2;
  
  *(uint *)((int)this + 8) = width;
  iVar2 = (width - 1 >> 4) + 1;
  iVar1 = (height - 1 >> 4) + 1;
  *(int *)((int)this + 0x14) = iVar1;
  *(int *)((int)this + 0x10) = iVar2;
  *(uint *)((int)this + 0xc) = height;
  *(int *)((int)this + 0x18) = iVar1 * iVar2;
  FUN_00c221f0((void *)((int)this + 0x2c),2);
  FUN_00c221f0((void *)((int)this + 0x3c),2);
  *(undefined4 *)((int)this + 0x50) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x4c) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x58) = 0x80000000;
  *(undefined4 *)((int)this + 0x54) = 0x80000000;
  return true;
}

