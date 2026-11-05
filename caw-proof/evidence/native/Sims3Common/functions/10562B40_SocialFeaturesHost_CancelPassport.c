/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_CancelPassport. Export
   ordinal(s): 787. Entry VA: 0x10562b40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600091B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SocialFeaturesHost_CancelPassport(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x562b40  787  SocialFeaturesHost_CancelPassport */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  if (iVar1 != 0) {
    this = (void *)FUN_107decd0(iVar1);
    if (this != (void *)0x0) {
      FUN_108286f0(this,param_1,'\x01');
    }
  }
  return;
}

