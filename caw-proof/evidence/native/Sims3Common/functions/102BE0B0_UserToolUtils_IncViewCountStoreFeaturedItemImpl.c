/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_IncViewCountStoreFeaturedItemImpl.
   Export ordinal(s): 1213. Entry VA: 0x102be0b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AA0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UserToolUtils_IncViewCountStoreFeaturedItemImpl(uint param_1,uint param_2)

{
  uint uVar1;
  
                    /* 0x2be0b0  1213  UserToolUtils_IncViewCountStoreFeaturedItemImpl */
  uVar1 = FUN_10265b20(DAT_10c70534,param_1,param_2);
  if (uVar1 != 0) {
    FUN_102723b0(uVar1);
    return;
  }
  return;
}

