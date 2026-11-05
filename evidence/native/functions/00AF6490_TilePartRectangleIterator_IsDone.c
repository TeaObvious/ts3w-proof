/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX sole argument/no stack/RET; ALBoolean. Signed byte
   currentlevel>endlevel defines done; not an int coordinate-empty check. Inferredfastcall does not
   add EDX argument. */

bool __fastcall TilePartRectangleIterator_IsDone(int param_1)

{
  return *(char *)(param_1 + 5) < *(char *)(param_1 + 8);
}

