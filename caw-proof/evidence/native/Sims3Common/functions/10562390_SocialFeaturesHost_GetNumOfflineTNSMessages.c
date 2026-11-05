/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetNumOfflineTNSMessages.
   Export ordinal(s): 867. Entry VA: 0x10562390. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060008B7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 SocialFeaturesHost_GetNumOfflineTNSMessages(void)

{
  int iVar1;
  undefined4 uVar2;
  
                    /* 0x562390  867  SocialFeaturesHost_GetNumOfflineTNSMessages */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  iVar1 = FUN_10937a80(iVar1);
  iVar1 = FUN_10829b00(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_1082af20(iVar1 + 0x160);
    return uVar2;
  }
  return 0;
}

