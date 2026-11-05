/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl two pointers. Reverses the two three-byte endpoints
   into a six-byte temporary and invokes C45F20; does not independently classify wall direction. */

void __cdecl WallLocator_QueryOtherAdjacentTile(undefined2 *param_1,undefined2 *param_2)

{
  undefined2 local_8;
  undefined1 local_6;
  undefined2 local_5;
  undefined1 local_3;
  
  local_8 = *(undefined2 *)((int)param_1 + 3);
  local_6 = *(undefined1 *)((int)param_1 + 5);
  local_5 = *param_1;
  local_3 = *(undefined1 *)(param_1 + 1);
  WallLocator_QueryFirstAdjacentTile((char *)&local_8,param_2);
  return;
}

