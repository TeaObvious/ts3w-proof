/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetPassportId. Export
   ordinal(s): 886. Entry VA: 0x10562b00. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000918. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_GetPassportId(int param_1)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x562b00  886  SocialFeaturesHost_GetPassportId */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  if (iVar1 != 0) {
    this = (void *)FUN_107decd0(iVar1);
    if (this != (void *)0x0) {
      uVar2 = FUN_10826300(this,param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

