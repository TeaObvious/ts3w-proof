/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_GetSystemWallPostAuthorImage.
   Export ordinal(s): 932. Entry VA: 0x10562540. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060008CC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
SocialFeaturesHost_GetSystemWallPostAuthorImage
          (undefined4 *param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_10 [4];
  
                    /* 0x562540  932  SocialFeaturesHost_GetSystemWallPostAuthorImage */
  puVar2 = FUN_1080ed30(local_10,param_2,param_3,param_4,param_5);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  uVar1 = puVar2[3];
  param_1[2] = puVar2[2];
  param_1[3] = uVar1;
  return param_1;
}

