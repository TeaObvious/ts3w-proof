/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst descriptive alias: FrameTimer_StoreTimeScale (not a recovered symbol and not a database rename). ECX receiver, one binary32 stackword, RET4. Calls4E1C00, MOVSS input unchanged into receiver+68, calls4E1CC0. No clamp or finite validation in this body. EC13F0 uses receiver011CED48; EC1410 reads its+68 directly.
   Existing database function comment: null
   Original instructions control ABI, signedness and order; inferred types remain qualified. */


void __thiscall FUN_00594e70(void *this,undefined4 param_1)

{
  FUN_004e1c00(this,(uint *)&DAT_00fd8cec);
  *(undefined4 *)((int)this + 0x68) = param_1;
  FUN_004e1cc0(this);
  return;
}

