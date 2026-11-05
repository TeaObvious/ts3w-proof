/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_HasFriends. Export ordinal(s):
   956. Entry VA: 0x10561e50. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600088D. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 SocialFeaturesHost_HasFriends(void)

{
  undefined1 uVar1;
  int iVar2;
  
                    /* 0x561e50  956  SocialFeaturesHost_HasFriends */
  iVar2 = FUN_1036f400(DAT_10c8f590);
  iVar2 = FUN_10937a80(iVar2);
  iVar2 = FUN_10829b00(iVar2);
  if (iVar2 != 0) {
    uVar1 = FUN_10820110(iVar2 + 0xf0);
    return uVar1;
  }
  return 0;
}

