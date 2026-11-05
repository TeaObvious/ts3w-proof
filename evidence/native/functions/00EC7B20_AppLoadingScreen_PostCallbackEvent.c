/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_00ec7b20. Posts native loading callback event 10064 through object+30 service,
   using object+4 as sender and target. ECX object, RET. Physical assembly loads callback low/high
   into EAX/EDX, CL=32 before 64-bit shift helper, then stores shifted high word and original low
   word in event payload. Decompiler __aullshr argument rendering is not the physical ABI. Event
   decoding/forwarding is in EC7C00. */

void __fastcall AppLoadingScreen_PostCallbackEvent(int param_1)

{
  ulonglong uVar1;
  undefined1 local_1c [8];
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_14 = 0x10064;
  uVar1 = __aullshr(0x20,*(uint *)(param_1 + 0x2f4));
  local_10 = (undefined4)uVar1;
  local_c = *(undefined4 *)(param_1 + 0x2f0);
  (**(code **)(**(int **)(param_1 + 0x30) + 0x18))(param_1 + 4,param_1 + 4,local_1c);
  return;
}

