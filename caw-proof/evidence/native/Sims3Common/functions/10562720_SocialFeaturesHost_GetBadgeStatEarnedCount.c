/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetBadgeStatEarnedCount.
   Export ordinal(s): 819. Entry VA: 0x10562720. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000909. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_GetBadgeStatEarnedCount(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x562720  819  SocialFeaturesHost_GetBadgeStatEarnedCount */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_10571420(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10804d60(this,param_1);
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 0x10);
    }
  }
  return 1;
}

