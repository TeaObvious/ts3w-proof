/* Materializes the current table-selected cell in the iterator scratch record and returns its
   borrowed pointer at +7. Shared by platform and generic deck/foundation traversal. Another call
   overwrites the same record. Analyst-assigned name. */

char * __fastcall GetVertexRegionIteratorCell(int *param_1)

{
  int iVar1;

  iVar1 = *param_1;
  /* 00AF6662: Read each coordinate table DWORD low byte at stride 4; add original vertex byte with byte wrap. X offsets: -1,0,0,-1; Z offsets: -1,-1,0,0. */
  *(char *)((int)param_1 + 7) = (&DAT_0106adf0)[iVar1 * 4] + (char)param_1[1];
  *(char *)(param_1 + 2) = (&DAT_0106ae00)[iVar1 * 4] + *(char *)((int)param_1 + 5);
  /* 00AF6681: Mask table bytes are 06,03,09,0C in index order. Level at iterator +9 is retained; no lot bounds or index check occurs here. */
  *(undefined *)((int)param_1 + 10) = (&DAT_0106ae10)[iVar1];
  /* 00AF6687: Return iterator+7 in EAX: borrowed scratch cell, not newly allocated storage. */
  return (char *)((int)param_1 + 7);
}
