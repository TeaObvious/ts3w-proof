/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 walker clear resets current/pending state and related fields, sets walker byte +0x71,
   force-clears callbacks through 0x008006A0, then clears +0x71. Called by SetActor(null) and
   replacing initial placement in the bounded prior trace.
   
   Analyst role/contract. Original walker reset, distinct from driver release: complete body clears
   per-actor state/request/status and pumps forced callback cleanup. Actual listener/controller and
   graph cleanup are its explicit children. Current TaskCompletionSource cancellation and
   duration-only clip retirement are project adaptation; do not infer concurrent reset or complete
   original saved task-stack restoration. */

void __fastcall SACS_ClearWalker_800c70(void *param_1)

{
  *(undefined4 *)((int)param_1 + 0x24) = 0;
  *(undefined1 *)((int)param_1 + 0xc) = 0;
  *(undefined4 *)((int)param_1 + 0x10) = 0;
  *(undefined4 *)((int)param_1 + 0x14) = 0;
  *(undefined4 *)((int)param_1 + 0x18) = 0;
  *(undefined4 *)((int)param_1 + 0x1c) = 0;
  *(undefined4 *)((int)param_1 + 0x20) = 0x40;
  *(undefined4 *)((int)param_1 + 0x28) = 0;
  FUN_00aa07d0((int)param_1 + 0x2c);
  *(undefined1 *)((int)param_1 + 0x68) = 0;
  LOCK();
  *(undefined4 *)((int)param_1 + 0x6c) = 0;
  UNLOCK();
  *(undefined1 *)((int)param_1 + 0x72) = 0;
  *(undefined1 *)((int)param_1 + 0x73) = 0;
  *(undefined1 *)((int)param_1 + 0x70) = 0;
  *(undefined1 *)((int)param_1 + 0x74) = 0;
  *(undefined1 *)((int)param_1 + 0x71) = 1;
  SACS_ForceClearWalkerCallbacks_8006a0(param_1,1);
  *(undefined1 *)((int)param_1 + 0x71) = 0;
  return;
}

