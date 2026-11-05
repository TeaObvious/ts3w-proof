/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   SocialFeaturesHost_FriendsGetSearchResultNucleusID. Export ordinal(s): 805. Entry VA: 0x10561c90.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x0600087D. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

undefined8 __cdecl SocialFeaturesHost_FriendsGetSearchResultNucleusID(int param_1)

{
  int iVar1;
  void *this;
  undefined8 uVar2;
  
                    /* 0x561c90  805  SocialFeaturesHost_FriendsGetSearchResultNucleusID */
  iVar1 = FUN_1036f400(DAT_10c8f590);
  this = (void *)FUN_106b6a50(iVar1);
  if (this != (void *)0x0) {
    uVar2 = FUN_10821400(this,param_1);
    return uVar2;
  }
  return 0;
}

