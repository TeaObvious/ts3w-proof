/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX allocator, stack+4/+8 raw output pointers, RET8. Uses counters+0/+4,
   offsets+8/+10, limits+C/+14, strides+18/+1C. Low32 next-coordinate calculations compare unsigned
   to limits; first wraps row then second may reset both counters. Writes raw32 current X/Y and
   increments x. No child call, failure/status or uniqueness/nonzero guarantee. Stored analysis
   return metadata is preserved. */

void __thiscall FloorAtlas_WriteNextWrappedOrigin(void *this,int *param_1,int *param_2)

{
  if (*(uint *)((int)this + 0xc) <
      (uint)((*(int *)this + 1) * *(int *)((int)this + 0x18) + *(int *)((int)this + 8))) {
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + 1;
    *(undefined4 *)this = 0;
  }
  if (*(uint *)((int)this + 0x14) <
      (uint)((*(int *)((int)this + 4) + 1) * *(int *)((int)this + 0x1c) + *(int *)((int)this + 0x10)
            )) {
    *(undefined4 *)((int)this + 4) = 0;
    *(undefined4 *)this = 0;
  }
  *param_1 = *(int *)this * *(int *)((int)this + 0x18) + *(int *)((int)this + 8);
  *param_2 = *(int *)((int)this + 0x1c) * *(int *)((int)this + 4) + *(int *)((int)this + 0x10);
  *(int *)this = *(int *)this + 1;
  return;
}

