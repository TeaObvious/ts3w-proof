/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsThumbnailValidStatic. Export
   ordinal(s): 2676. Entry VA: 0x10998360. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600051B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl WorldWrap_IsThumbnailValidStatic(LPCWSTR param_1)

{
  undefined4 uVar1;
  undefined4 local_a0 [26];
  int local_38;
  
                    /* 0x998360  2676  WorldWrap_IsThumbnailValidStatic */
  FUN_1039c030(local_a0);
  uVar1 = FUN_10998290(param_1,local_a0,1);
  if ((char)uVar1 == '\0') {
    FUN_1039c0f0(local_a0);
    return false;
  }
  FUN_1039c0f0(local_a0);
  return local_38 != 0;
}

