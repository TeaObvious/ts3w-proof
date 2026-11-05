/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011626a0 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeDesc [assembly=ScriptCore
   token=0x06000AB1; nucleusID: System.Int64, badgeID: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeDesc
          (int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined ***pppuVar3;
  void *pvVar4;
  undefined *puVar5;
  undefined4 unaff_ESI;
  undefined **ppuVar6;
  int unaff_retaddr;
  undefined **local_34;
  undefined1 *puStack_30;
  undefined *puStack_2c;
  char *pcStack_28;
  int aiStack_14 [2];
  int iStack_c;
  
  local_34 = (undefined **)0x0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_3);
    pcStack_28 = "Scripting/ScriptFunctions/SocialFeaturesHost";
    local_34 = (undefined **)&DAT_011c8e54;
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e55;
    pppuVar3 = FUN_004f3cc0(aiStack_14,pWVar2,0xffffffff,(char *)0x0);
    puVar5 = &DAT_011c8e55;
    ppuVar6 = (undefined **)&DAT_011c8e54;
    if (pppuVar3 != &local_34) {
      FUN_00405910(&local_34,*pppuVar3,(undefined1 *)pppuVar3[1]);
      puVar5 = puStack_2c;
      ppuVar6 = local_34;
    }
    if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
      FUN_004e44e0(aiStack_14[0]);
    }
    pWVar2 = (LPCWSTR)FUN_00a24560(unaff_retaddr,param_1,(byte *)ppuVar6);
    if (pWVar2 != (LPCWSTR)0x0) {
      pvVar4 = FUN_004f3b50(aiStack_14,pWVar2,0xffffffff,(char *)0x0);
      local_34 = &PTR_FUN_0100886c;
      puStack_2c = (undefined *)0x13000b;
      FUN_004f59c0(&local_34,0x13,9,pvVar4,0x10,1);
      if ((2 < (int)(iStack_c - aiStack_14[0] & 0xfffffffeU)) && (aiStack_14[0] != 0)) {
        FUN_004e44e0(aiStack_14[0]);
      }
      (**(code **)(*piVar1 + 0x50))(&local_34,&stack0xffffffc8);
      local_34 = &PTR_FUN_00fba6f4;
      if (((uint)puStack_2c & 4) != 0) {
        FUN_004f5760(&local_34,'\0');
      }
    }
    if ((1 < (int)puVar5 - (int)ppuVar6) && (ppuVar6 != (undefined **)0x0)) {
      FUN_004e44e0((int)ppuVar6);
    }
    return unaff_ESI;
  }
  return local_34;
}

