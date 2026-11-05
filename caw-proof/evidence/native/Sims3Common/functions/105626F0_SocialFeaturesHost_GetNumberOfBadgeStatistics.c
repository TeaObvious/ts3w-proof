/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetNumberOfBadgeStatistics.
   Export ordinal(s): 868. Entry VA: 0x105626f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000906. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 SocialFeaturesHost_GetNumberOfBadgeStatistics(void)

{
  int iVar1;
  undefined4 uVar2;
  
                    /* 0x5626f0  868  SocialFeaturesHost_GetNumberOfBadgeStatistics */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  iVar1 = FUN_10571420(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_1058e220(iVar1);
    return uVar2;
  }
  return 1;
}

