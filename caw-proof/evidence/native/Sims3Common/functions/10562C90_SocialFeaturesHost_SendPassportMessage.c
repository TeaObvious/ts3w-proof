/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_SendPassportMessage. Export
   ordinal(s): 986. Entry VA: 0x10562c90. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600092C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SocialFeaturesHost_SendPassportMessage(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x562c90  986  SocialFeaturesHost_SendPassportMessage */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_107decd0(iVar1);
  FUN_10828c70(this,param_1,param_2,param_3);
  return;
}

