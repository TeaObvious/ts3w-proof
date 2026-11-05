/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 native registration-table getter for ScriptCore.NameGuidMapService: raw bytes
   use mov eax,[esp+4]; mov [eax],0x011613d8; ret 4. Table 0x011613d8..0x011613e0 contains 2
   eight-byte (function pointer, managed-name string pointer) records and null/null sentinel at
   0x011613e8. This proves the static address/name mapping; activation by the runtime loader remains
   a separate question. original PC 1.67 TS3W.exe. */

void GetNativeRegistrationTable_NameGuidMapService(undefined4 *param_1)

{
  *param_1 = &PTR_NameGuidMapService_GetGuidByNameHash_011613d8;
  return;
}

