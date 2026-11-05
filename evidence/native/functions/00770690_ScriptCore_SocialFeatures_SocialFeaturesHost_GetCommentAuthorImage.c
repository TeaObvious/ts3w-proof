/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162438 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentAuthorImage [assembly=ScriptCore
   token=0x06000A82; nucleusID: System.Int64, postId: System.Int64, commentId: System.Int64;
   return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_SocialFeatures__SocialFeaturesHost_GetCommentAuthorImage
          (undefined4 *param_1,int param_2,int param_3,uint param_4,uint param_5,uint param_6,
          uint param_7)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 auStack_10 [4];
  
  puVar2 = FUN_00a23710(auStack_10,param_2,param_3,param_4,param_5,param_6,param_7);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  uVar1 = puVar2[3];
  param_1[2] = puVar2[2];
  param_1[3] = uVar1;
  return param_1;
}

