/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_SetDevGiftToAccepted. Export
   ordinal(s): 989. Entry VA: 0x10561b70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600086E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SocialFeaturesHost_SetDevGiftToAccepted(int param_1)

{
  undefined4 *puVar1;
  void *this;
  
                    /* 0x561b70  989  SocialFeaturesHost_SetDevGiftToAccepted */
  puVar1 = (undefined4 *)FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_10379750(puVar1);
  FUN_10804570(this,param_1);
  return;
}

