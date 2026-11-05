/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetPassportMessageType. Export
   ordinal(s): 891. Entry VA: 0x10562ca0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600092E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SocialFeaturesHost_GetPassportMessageType(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x562ca0  891  SocialFeaturesHost_GetPassportMessageType */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_107decd0(iVar1);
  FUN_108270e0(this,param_1);
  return;
}

