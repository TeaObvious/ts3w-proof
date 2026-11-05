/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e40 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetTerrainProductListByCategoryImpl [assembly=ScriptCore
   token=0x06000BEF; category: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UserToolUtils__UserToolUtils_GetTerrainProductListByCategoryImpl(int param_1)

{
  undefined4 uVar1;
  int aiStack_10 [3];
  char *pcStack_4;
  
  if (DAT_011ee034 != (void *)0x0) {
    aiStack_10[0] = 0;
    aiStack_10[1] = 0;
    aiStack_10[2] = 0;
    pcStack_4 = "World/Catalog/ProductVector";
    FUN_00c905a0(DAT_011ee034,param_1,aiStack_10);
    uVar1 = FUN_00cea820(aiStack_10,0x12,0);
    if (aiStack_10[0] != 0) {
      FUN_004e44e0(aiStack_10[0]);
    }
    return uVar1;
  }
  return 0;
}

