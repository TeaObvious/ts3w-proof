/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetNumGiftsSentInTimeLimit;
   SocialFeaturesHost_GetTotalNumberGiftsSent. Export ordinal(s): 866; 939. Entry VA: 0x10561ba0.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06000871; ScriptCore:0x06000872. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void SocialFeaturesHost_GetNumGiftsSentInTimeLimit(void)

{
  undefined4 *puVar1;
  int iVar2;
  
                    /* 0x561ba0  866  SocialFeaturesHost_GetNumGiftsSentInTimeLimit
                       0x561ba0  939  SocialFeaturesHost_GetTotalNumberGiftsSent */
  puVar1 = (undefined4 *)FUN_1036f400(DAT_10c8f590);
  iVar2 = FUN_10379750(puVar1);
  FUN_10803eb0(iVar2);
  return;
}

