/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 ECX receiver and one UInt32 stackword, RET4. Calls4E1C00, ORs the input flags
   into receiver+40, writes positive binary32zero to+64 with XORPS/MOVSS, then calls4E1CC0 and
   returns. Exact pausebit meanings, child synchronization and clear/unpause policy are not expanded
   by this body. */

void __thiscall FrameTimer_AddPauseFlagsAndClearGameDelta(void *this,uint param_1)

{
  FUN_004e1c00(this,(uint *)&DAT_00fd8cec);
  *(uint *)((int)this + 0x40) = *(uint *)((int)this + 0x40) | param_1;
  *(undefined4 *)((int)this + 100) = 0;
  FUN_004e1cc0(this);
  return;
}

