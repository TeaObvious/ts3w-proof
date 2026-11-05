/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete28byte wrapper identity-output method: ECX wrapper,
   two stack DWORDs/RET8. First is output pointer, second capacity/control tested as fullDWORD
   nonzero. Writes wrapper+4 to output only if both nonzero; always returns fullEAX1.
   Vtable0101C63C+4 points here. Neither zero capacity nor null output yieldsfalse. No output-size
   validation beyond that nonzero test is present; followingINT3 are not owned. */

uint __thiscall UiCustomControlFactory_WriteIdentity(void *this,void *outIdentity,uint capacityWord)

{
  if ((outIdentity != (void *)0x0) && (capacityWord != 0)) {
    *(undefined4 *)outIdentity = *(undefined4 *)((int)this + 4);
  }
  return 1;
}

