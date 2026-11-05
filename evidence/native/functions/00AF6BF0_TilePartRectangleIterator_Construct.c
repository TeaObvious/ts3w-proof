/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX receiver plus2stackDWORDs/RET8. Copies start/end
   packed3byte x,z,level, current=start and mask1. No immutable snapshot/lifetime or range
   validation beyond these copies. */

void __thiscall
TilePartRectangleIterator_Construct(void *this,undefined2 *param_1,undefined2 *param_2)

{
  *(undefined2 *)this = *param_1;
  *(undefined1 *)((int)this + 2) = *(undefined1 *)(param_1 + 1);
  *(undefined2 *)((int)this + 3) = *param_2;
  *(undefined1 *)((int)this + 5) = *(undefined1 *)(param_2 + 1);
  *(undefined1 *)((int)this + 6) = 0xff;
  *(undefined1 *)((int)this + 7) = 0xff;
  *(undefined1 *)((int)this + 8) = 0;
  *(undefined1 *)((int)this + 9) = 0xff;
  *(undefined2 *)((int)this + 6) = *(undefined2 *)this;
  *(undefined1 *)((int)this + 8) = *(undefined1 *)((int)this + 2);
  *(undefined1 *)((int)this + 9) = 1;
  return;
}

