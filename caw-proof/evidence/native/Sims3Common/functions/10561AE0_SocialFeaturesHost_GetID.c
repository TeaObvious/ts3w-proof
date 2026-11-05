/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetID. Export ordinal(s): 861.
   Entry VA: 0x10561ae0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000863. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 SocialFeaturesHost_GetID(void)

{
  undefined4 *puVar1;
  int iVar2;
  
                    /* 0x561ae0  861  SocialFeaturesHost_GetID */
  puVar1 = (undefined4 *)FUN_1036f400(DAT_10c8f590);
  iVar2 = FUN_10379750(puVar1);
  return *(undefined8 *)(iVar2 + 8);
}

