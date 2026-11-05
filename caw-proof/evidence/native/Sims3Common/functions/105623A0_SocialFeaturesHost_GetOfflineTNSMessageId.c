/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetOfflineTNSMessageId. Export
   ordinal(s): 881. Entry VA: 0x105623a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060008B8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 SocialFeaturesHost_GetOfflineTNSMessageId(void)

{
  int iVar1;
  undefined8 uVar2;
  
                    /* 0x5623a0  881  SocialFeaturesHost_GetOfflineTNSMessageId */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  iVar1 = FUN_10937a80(iVar1);
  iVar1 = FUN_10829b00(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_1051dda0();
    return uVar2;
  }
  return 0;
}

