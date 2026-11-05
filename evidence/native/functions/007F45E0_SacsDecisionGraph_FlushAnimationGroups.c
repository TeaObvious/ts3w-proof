/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX graph,one phase dword RET4. Flush+release
   group+CC via00582760 then group+D0 via00582700; clear pointers and selected-master byte+D4. For
   phase2/3 also007F41B0. IDisposable abort,4096 cap and managed callback loop are observed project
   mechanisms, not original API. */

void __thiscall SacsDecisionGraph_FlushAnimationGroups(void *this,int param_1)

{
  if (*(int *)((int)this + 0xcc) != 0) {
    FUN_00582760(*(int *)((int)this + 0xcc));
    if (*(undefined4 **)((int)this + 0xcc) != (undefined4 *)0x0) {
      (**(code **)**(undefined4 **)((int)this + 0xcc))(1);
    }
    *(undefined4 *)((int)this + 0xcc) = 0;
  }
  if (*(int *)((int)this + 0xd0) != 0) {
    FUN_00582700(*(int *)((int)this + 0xd0));
    if (*(undefined4 **)((int)this + 0xd0) != (undefined4 *)0x0) {
      (**(code **)**(undefined4 **)((int)this + 0xd0))(1);
    }
    *(undefined4 *)((int)this + 0xd0) = 0;
  }
  *(undefined1 *)((int)this + 0xd4) = 0;
  if ((1 < param_1) && (param_1 < 4)) {
    FUN_007f41b0((int)this);
  }
  return;
}

