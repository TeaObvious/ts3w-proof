/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   OnlineFeaturesHost_GetNumberOfCustomMemoriesShared. Export ordinal(s): 499. Entry VA: 0x105379c0.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x060005A3. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

undefined4 OnlineFeaturesHost_GetNumberOfCustomMemoriesShared(void)

{
  undefined4 uVar1;
  
                    /* 0x5379c0  499  OnlineFeaturesHost_GetNumberOfCustomMemoriesShared */
  EnterCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
  if ((DAT_10c78880 != 0) && (*(int *)(DAT_10c78880 + 0x30) == 2)) {
    uVar1 = *(undefined4 *)(DAT_10c78880 + 0x28);
    LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
    return uVar1;
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
  return 0;
}

