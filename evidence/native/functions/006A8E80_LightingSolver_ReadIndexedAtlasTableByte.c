/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX owner input, plain RET. Reads DWORD index at owner+8 then byte at FF4720+index
   into AL. The high24 EAX bits retain the index; no full-EAX Boolean normalization, bounds check,
   table-content claim, allocator initialization or child call. Analysis ABI/return metadata remains
   unchanged. */

undefined4 __fastcall LightingSolver_ReadIndexedAtlasTableByte(int param_1)

{
  return CONCAT31((int3)((uint)*(int *)(param_1 + 8) >> 8),(&DAT_00ff4720)[*(int *)(param_1 + 8)]);
}

