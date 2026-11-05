/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetSharingInfoStatus. Export
   ordinal(s): 502. Entry VA: 0x10537930. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600059E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 OnlineFeaturesHost_GetSharingInfoStatus(void)

{
  undefined4 uVar1;
  
                    /* 0x537930  502  OnlineFeaturesHost_GetSharingInfoStatus */
  EnterCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
  if (DAT_10c78880 != 0) {
    uVar1 = *(undefined4 *)(DAT_10c78880 + 0x30);
    LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
    return uVar1;
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
  return 0;
}

