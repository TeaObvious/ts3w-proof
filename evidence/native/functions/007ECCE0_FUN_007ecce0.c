/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX ScrollAreaWinProc, parent/horizontal/vertical three stackwords, void RET0C. Stores settings+10 then+14 before calling7EC490 with same ECX and pushed parent. This physical receiver supplies the fields omitted by7EC490 C. */

void __thiscall FUN_007ecce0(void *this,int *param_1,undefined4 param_2,undefined4 param_3)

{
  *(undefined4 *)((int)this + 0x10) = param_2;
  *(undefined4 *)((int)this + 0x14) = param_3;
  FUN_007ec490(param_1);
  return;
}
