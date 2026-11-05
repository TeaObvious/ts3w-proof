/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 native registration-table getter for ScriptCore.Slots: raw bytes use mov
   eax,[esp+4]; mov [eax],0x011620a0; ret 4. Table 0x011620a0..0x01162118 contains 16 eight-byte
   (function pointer, managed-name string pointer) records and null/null sentinel at 0x01162120.
   This proves the static address/name mapping; activation by the runtime loader remains a separate
   question. original PC 1.67 TS3W.exe. */

void GetNativeRegistrationTable_Slots(undefined4 *param_1)

{
  *param_1 = &PTR_ScriptCore_Slots__Slots_EnableSlotImpl_011620a0;
  return;
}

