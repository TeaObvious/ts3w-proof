/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 native registration-table getter for ScriptCore.VideoRecorder: raw bytes use mov
   eax,[esp+4]; mov [eax],0x01163108; ret 4. Table 0x01163108..0x01163168 contains 13 eight-byte
   (function pointer, managed-name string pointer) records and null/null sentinel at 0x01163170.
   This proves the static address/name mapping; activation by the runtime loader remains a separate
   question. original PC 1.67 TS3W.exe. */

void GetNativeRegistrationTable_VideoRecorder(undefined4 *param_1)

{
  *param_1 = &PTR_ScriptCore_VideoRecorder__VideoRecorder_Pause_01163108;
  return;
}

