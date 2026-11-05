/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetPassportGuid. Export
   ordinal(s): 884. Entry VA: 0x10562ba0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000920. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl SocialFeaturesHost_GetPassportGuid(int param_1)

{
  int iVar1;
  void *this;
  undefined8 uVar2;
  
                    /* 0x562ba0  884  SocialFeaturesHost_GetPassportGuid */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_107decd0(iVar1);
  uVar2 = FUN_108265b0(this,param_1);
  return uVar2;
}

