/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Floor change message construction; descriptive label, not recovered original symbol.
   ECX destination, plain RET returns same pointer. Installs vtable01065F8C and atomically exchanges refcount+4 to0. Packed cell+10 starts FF/FF/00/FF; AFBA70 initializes64bytes at+18; selected fields+5A/+5C/+60..6C/+84/+87/+88 are reset. Other fields remain untouched, not zeroed wholesale; full event ownership is the caller. */

undefined4 * __fastcall FUN_00a8b070(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_01065f8c;
  LOCK();
  param_1[1] = 0;
  UNLOCK();
  *param_1 = &PTR_FUN_01065f8c;
  *(undefined1 *)(param_1 + 4) = 0xff;
  *(undefined1 *)((int)param_1 + 0x11) = 0xff;
  *(undefined1 *)((int)param_1 + 0x12) = 0;
  *(undefined1 *)((int)param_1 + 0x13) = 0xff;
  FUN_00afba70(param_1 + 6);
  *(undefined1 *)((int)param_1 + 0x5a) = 0;
  *(undefined1 *)(param_1 + 0x17) = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  *(undefined1 *)(param_1 + 0x21) = 0;
  *(undefined1 *)((int)param_1 + 0x87) = 0;
  *(undefined1 *)(param_1 + 0x22) = 0;
  return param_1;
}
