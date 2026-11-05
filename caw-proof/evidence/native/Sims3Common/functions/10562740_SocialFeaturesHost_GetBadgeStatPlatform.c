/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetBadgeStatPlatform. Export
   ordinal(s): 821. Entry VA: 0x10562740. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600090B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_GetBadgeStatPlatform(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x562740  821  SocialFeaturesHost_GetBadgeStatPlatform */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_10571420(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10804d60(this,param_1);
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 0x18);
    }
  }
  return 0;
}

