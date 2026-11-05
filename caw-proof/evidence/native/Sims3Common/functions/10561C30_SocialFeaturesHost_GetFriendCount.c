/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetFriendCount. Export
   ordinal(s): 847. Entry VA: 0x10561c30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000879. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_GetFriendCount(undefined4 param_1)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x561c30  847  SocialFeaturesHost_GetFriendCount */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_106b6a50(iVar1);
  if (this != (void *)0x0) {
    uVar2 = FUN_10821780(this,param_1);
    return uVar2;
  }
  return 1;
}

