/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   ReceiverECX only, tailJMP9A58A0 at5AAA. Calls9A1FC0 using+38/+3C table state then zeros+40;9A3700 using+90/+94 thenzeros+98;zeros+74. Helper bodies/free/thread semantics remain separate, not a CLR lock/cache transaction. Registered9953F0 calls this receiver path. */
void __fastcall FUN_009a5a60(void *param_1)

{
  FUN_009a1fc0(*(int *)((int)param_1 + 0x38),*(uint *)((int)param_1 + 0x3c));
  *(undefined4 *)((int)param_1 + 0x40) = 0;
  FUN_009a3700(*(int *)((int)param_1 + 0x90),*(uint *)((int)param_1 + 0x94));
  *(undefined4 *)((int)param_1 + 0x98) = 0;
  *(undefined4 *)((int)param_1 + 0x74) = 0;
  FUN_009a58a0(param_1);
  return;
}

