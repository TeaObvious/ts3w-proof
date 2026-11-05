/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst descriptive alias: FrameTimer_ClearPauseFlags (not a recovered symbol and not a database rename). ECX receiver, one UInt32 stackword, RET4. Calls4E1C00 then receiver+40 &= ~flags, then4E1CC0. EC13D0 supplies bit1. Child synchronization/initialization and other flag producers remain separate.
   Existing database function comment: null
   Original instructions control ABI, signedness and order; inferred types remain qualified. */


void __thiscall FUN_00594e40(void *this,uint param_1)

{
  FUN_004e1c00(this,(uint *)&DAT_00fd8cec);
  *(uint *)((int)this + 0x40) = *(uint *)((int)this + 0x40) & ~param_1;
  FUN_004e1cc0(this);
  return;
}

