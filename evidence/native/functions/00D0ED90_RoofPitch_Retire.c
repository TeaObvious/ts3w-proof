/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX tool; no local RET, tail JMP CD3510 and no local stack-input reads. Resets shared
   tool state/cursor, rolls current undoable34 back through virtual+8 when present, clears
   highlights via D0EB40(0), then tail-transfers CD3510. Original virtual/lifetime children remain
   unresolved; */

void __fastcall RoofPitch_Retire(void *param_1)

{
  thunk_FUN_00792320();
  FUN_00ccea10();
  if (*(int **)((int)param_1 + 0x34) != (int *)0x0) {
    (**(code **)(**(int **)((int)param_1 + 0x34) + 8))();
  }
  FUN_00d0eb40(param_1,0);
  FUN_00cd3510((int)param_1);
  return;
}

