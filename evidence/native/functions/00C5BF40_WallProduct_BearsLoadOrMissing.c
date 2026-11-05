/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl full resourcekey pointer, plainRET ALbool. C8FA20 catalog lookup with
   default-enabled1; missing product returns AL1. Present product raw partition flags DWORD+90, SHR9
   AND AL1 -> BearsLoad200hex. No inference from collision flags or visible wall geometry. */

bool __cdecl WallProduct_BearsLoadOrMissing(undefined *productKey)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,(uint *)productKey,'\x01');
  if (iVar1 != 0) {
    return (bool)((byte)(*(uint *)(iVar1 + 0x90) >> 9) & 1);
  }
  return true;
}

