/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetNumberOfBadges. Export
   ordinal(s): 869. Entry VA: 0x10562850. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060008EC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 SocialFeaturesHost_GetNumberOfBadges(void)

{
  int iVar1;
  undefined4 uVar2;
  
                    /* 0x562850  869  SocialFeaturesHost_GetNumberOfBadges */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  iVar1 = FUN_10571420(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_106b6a50(iVar1);
    return uVar2;
  }
  return 1;
}

