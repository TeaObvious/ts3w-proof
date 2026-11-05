/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00771e48) */
/* WARNING: Removing unreachable block (ram,0x00771e4c) */
/* Verified PC 1.67 registration table at 0x01162570 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeGrayImageKey [assembly=ScriptCore
   token=0x06000AC0; badgeID: System.String; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeGrayImageKey
          (undefined4 *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  LPCWSTR pWVar4;
  undefined4 *puVar5;
  undefined4 *unaff_retaddr;
  int aiStack_14 [2];
  int iStack_c;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar3 == (int *)0x0) {
    return param_1;
  }
  pWVar4 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(param_2);
  puVar5 = FUN_004f3cc0(aiStack_14,pWVar4,0xffffffff,(char *)0x0);
  if (puVar5 != (undefined4 *)&stack0xffffffdc) {
    FUN_00405910(&stack0xffffffdc,(void *)*puVar5,(undefined1 *)puVar5[1]);
  }
  if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
    FUN_004e44e0(aiStack_14[0]);
  }
  puVar5 = FUN_00a258f0(aiStack_14,&DAT_011c8e54);
  uVar1 = puVar5[1];
  *unaff_retaddr = *puVar5;
  uVar2 = puVar5[2];
  unaff_retaddr[1] = uVar1;
  uVar1 = puVar5[3];
  unaff_retaddr[2] = uVar2;
  unaff_retaddr[3] = uVar1;
  return unaff_retaddr;
}

