/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00771bd2) */
/* WARNING: Removing unreachable block (ram,0x00771bd6) */
/* Verified PC 1.67 registration table at 0x011626b0 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeImageKey [assembly=ScriptCore
   token=0x06000AAF; nucleusID: System.Int64, badgeID: System.String;
   return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeImageKey
          (undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  LPCWSTR pWVar5;
  undefined4 *puVar6;
  undefined4 *unaff_retaddr;
  int aiStack_14 [2];
  int iStack_c;
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar4 == (int *)0x0) {
    return param_1;
  }
  pWVar5 = (LPCWSTR)(**(code **)(*piVar4 + 0x58))(param_4);
  puVar6 = FUN_004f3cc0(aiStack_14,pWVar5,0xffffffff,(char *)0x0);
  if (puVar6 != (undefined4 *)&stack0xffffffdc) {
    FUN_00405910(&stack0xffffffdc,(void *)*puVar6,(undefined1 *)puVar6[1]);
  }
  if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
    FUN_004e44e0(aiStack_14[0]);
  }
  puVar6 = FUN_00a256f0(aiStack_14,(int)param_1,param_2,&DAT_011c8e54);
  uVar1 = puVar6[1];
  *unaff_retaddr = *puVar6;
  uVar2 = puVar6[2];
  uVar3 = puVar6[3];
  unaff_retaddr[1] = uVar1;
  unaff_retaddr[2] = uVar2;
  unaff_retaddr[3] = uVar3;
  return unaff_retaddr;
}

