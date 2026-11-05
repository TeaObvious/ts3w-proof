/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_ClearOfflineTNSMessages.
   Export ordinal(s): 788. Entry VA: 0x10562380. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060008B6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void SocialFeaturesHost_ClearOfflineTNSMessages(void)

{
  int iVar1;
  
                    /* 0x562380  788  SocialFeaturesHost_ClearOfflineTNSMessages */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  iVar1 = FUN_10937a80(iVar1);
  iVar1 = FUN_10829b00(iVar1);
  if (iVar1 != 0) {
    FUN_1082d670((void *)(iVar1 + 0x160));
    return;
  }
  return;
}

