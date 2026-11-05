/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst descriptive alias: FrameTimer_StoreSpeedAndSetNotificationFlag (not a recovered symbol and not a database rename). ECX receiver, one Int32 stackword, RET4. Calls4E1C00, copies input to+6C, writes byte+70=1 even for equal value, calls4E1CC0. Existing594D40 reads/clears flag and can dispatch2CB180C0 with+6C; complete listener lifetime remains separate.
   Existing database function comment: null
   Original instructions control ABI, signedness and order; inferred types remain qualified. */


void __thiscall FUN_00594ea0(void *this,undefined4 param_1)

{
  FUN_004e1c00(this,(uint *)&DAT_00fd8cec);
  *(undefined4 *)((int)this + 0x6c) = param_1;
  *(undefined1 *)((int)this + 0x70) = 1;
  FUN_004e1cc0(this);
  return;
}

