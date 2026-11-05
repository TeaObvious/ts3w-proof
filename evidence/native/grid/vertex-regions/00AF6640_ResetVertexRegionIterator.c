/* Resets only the iterator DWORD index to 0. Vertex and scratch bytes are retained. Physical input
   is ECX; the fastcall display does not establish a meaningful EDX parameter. Analyst-assigned
   name. */

void __fastcall ResetVertexRegionIterator(undefined4 *param_1)

{
  /* 00AF6640: Only index DWORD +0 is written. Calling this again does not rebuild or clear the borrowed scratch cell. */
  *param_1 = 0;
  return;
}
