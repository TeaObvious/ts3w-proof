/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetBadgeStatCategory. Export
   ordinal(s): 817. Entry VA: 0x10562710. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000908. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl SocialFeaturesHost_GetBadgeStatCategory(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x562710  817  SocialFeaturesHost_GetBadgeStatCategory */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_10571420(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10804d60(this,param_1);
    if (iVar1 != 0) {
      return *(undefined8 *)(iVar1 + 8);
    }
  }
  return 1;
}

