/* Initializes the shared four-cell vertex-region iterator. Used by platform AFF160 and generic
   deck/foundation AFEB00; no platform-only ownership is implied. ECX is the iterator, the packed
   vertex pointer is on stack, and RET 4 removes that one argument. Analyst-assigned name. */

void __thiscall InitializeVertexRegionIterator(void *this,undefined2 *param_1)

{
  *(undefined4 *)this = 0;
  /* 00AF6C4C: Copy packed vertex X/Z/level bytes to +4/+5/+6. The input has no consumed mask. */
  *(undefined2 *)((int)this + 4) = *param_1;
  *(undefined1 *)((int)this + 6) = *(undefined1 *)(param_1 + 1);
  /* 00AF6C5C: Scratch cell begins at +7: X/Z/mask initially FF, then level at +9 is copied from the vertex. The current-cell helper rewrites X/Z/mask only. */
  *(undefined1 *)((int)this + 7) = 0xff;
  *(undefined1 *)((int)this + 8) = 0xff;
  *(undefined1 *)((int)this + 9) = 0;
  *(undefined1 *)((int)this + 10) = 0xff;
  *(undefined1 *)((int)this + 9) = *(undefined1 *)(param_1 + 1);
  return;
}
