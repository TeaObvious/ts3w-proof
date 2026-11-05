/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetNumberOfSearchResults.
   Export ordinal(s): 877. Entry VA: 0x10561c40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600087A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 SocialFeaturesHost_GetNumberOfSearchResults(void)

{
  int iVar1;
  undefined4 uVar2;
  
                    /* 0x561c40  877  SocialFeaturesHost_GetNumberOfSearchResults */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  iVar1 = FUN_106b6a50(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_106b6a50(iVar1);
    return uVar2;
  }
  return 0;
}

