/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-key default input construction; descriptive label, not recovered original symbol.
   ECX destination, plain RET. Copies four DWORDs from live011EC8A0 into first16byte slot and live011EC8D0 into each remaining16byte slot. Does not prove those live defaults are zero or immutable, nor writes outside64bytes. */

void __fastcall FUN_00afba70(undefined4 *param_1)

{
  *param_1 = DAT_011ec8a0;
  param_1[1] = DAT_011ec8a4;
  param_1[2] = DAT_011ec8a8;
  param_1[3] = DAT_011ec8ac;
  param_1[4] = DAT_011ec8d0;
  param_1[5] = DAT_011ec8d4;
  param_1[6] = DAT_011ec8d8;
  param_1[7] = DAT_011ec8dc;
  param_1[8] = DAT_011ec8d0;
  param_1[9] = DAT_011ec8d4;
  param_1[10] = DAT_011ec8d8;
  param_1[0xb] = DAT_011ec8dc;
  param_1[0xc] = DAT_011ec8d0;
  param_1[0xd] = DAT_011ec8d4;
  param_1[0xe] = DAT_011ec8d8;
  param_1[0xf] = DAT_011ec8dc;
  return;
}
