/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetPassportMessageValue.
   Export ordinal(s): 892. Entry VA: 0x10562cb0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600092F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SocialFeaturesHost_GetPassportMessageValue(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x562cb0  892  SocialFeaturesHost_GetPassportMessageValue */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_107decd0(iVar1);
  FUN_10827140(this,param_1);
  return;
}

