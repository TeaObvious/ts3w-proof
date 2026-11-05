/* Increments only the iterator DWORD index, without saturation or bounds checks. Normal callers
   test for index 4 before another current-cell read. Analyst-assigned name. */

void __fastcall AdvanceVertexRegionIterator(int *param_1)

{
  /* 00AF6652: Unconditional DWORD increment: no four-item saturation. Do not call current-cell on an unchecked out-of-range index. */
  *param_1 = *param_1 + 1;
  return;
}
