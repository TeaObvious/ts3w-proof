/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00771887) */
/* WARNING: Removing unreachable block (ram,0x0077188b) */
/* Verified PC 1.67 registration table at 0x01162478 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_SendGiftPost [assembly=ScriptCore token=0x06000A8A;
   targetID: System.Int64, objectParams: System.String, message: System.String, giftName:
   System.String, giftHALKey: System.String, imageKey: System.String, requiredEP: System.UInt32,
   parameter: System.Int32, type: System.Int32, defaultText: System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_SendGiftPost
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,uint param_5,
          void *param_6)

{
  char *pcVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  char **ppcVar4;
  undefined4 *puVar5;
  undefined1 **ppuVar6;
  undefined4 uVar7;
  int unaff_EBX;
  char *pcVar8;
  undefined *puVar9;
  char *unaff_EDI;
  char *pcVar10;
  undefined4 unaff_retaddr;
  char *pcStack_54;
  undefined1 *puStack_50;
  undefined *puStack_4c;
  char *pcStack_48;
  char *pcStack_40;
  undefined1 *puStack_3c;
  undefined *puStack_38;
  char *pcStack_34;
  undefined1 *puStack_2c;
  undefined1 *puStack_28;
  undefined *puStack_24;
  char *pcStack_20;
  int iStack_1c;
  uint uStack_10;
  uint uStack_c;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_4);
  pcStack_48 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  pcStack_54 = &DAT_011c8e54;
  puStack_50 = &DAT_011c8e54;
  puStack_4c = &DAT_011c8e55;
  ppcVar4 = FUN_004f3cc0(&puStack_24,pWVar3,0xffffffff,(char *)0x0);
  if (ppcVar4 != &pcStack_54) {
    FUN_00405910(&pcStack_54,*ppcVar4,ppcVar4[1]);
  }
  if ((1 < iStack_1c - (int)puStack_24) && (puStack_24 != (undefined *)0x0)) {
    FUN_004e44e0((int)puStack_24);
  }
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_4);
  puVar5 = FUN_004f3cc0(&puStack_28,pWVar3,0xffffffff,(char *)0x0);
  if (puVar5 != (undefined4 *)&stack0xffffff98) {
    FUN_00405910(&stack0xffffff98,(void *)*puVar5,(undefined1 *)puVar5[1]);
  }
  if ((1 < (int)pcStack_20 - (int)puStack_28) && (puStack_28 != (undefined1 *)0x0)) {
    FUN_004e44e0((int)puStack_28);
  }
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_4);
  pcStack_20 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  puStack_2c = &DAT_011c8e54;
  puStack_28 = &DAT_011c8e54;
  puStack_24 = &DAT_011c8e55;
  ppuVar6 = FUN_004f3cc0(&puStack_3c,pWVar3,0xffffffff,(char *)0x0);
  if (ppuVar6 != &puStack_2c) {
    FUN_00405910(&puStack_2c,*ppuVar6,ppuVar6[1]);
  }
  if ((1 < (int)pcStack_34 - (int)puStack_3c) && (puStack_3c != (undefined1 *)0x0)) {
    FUN_004e44e0((int)puStack_3c);
  }
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(unaff_retaddr);
  pcStack_34 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  pcStack_40 = &DAT_011c8e54;
  puStack_3c = &DAT_011c8e54;
  puStack_38 = &DAT_011c8e55;
  ppcVar4 = FUN_004f3cc0(&puStack_50,pWVar3,0xffffffff,(char *)0x0);
  pcVar8 = &DAT_011c8e54;
  if (ppcVar4 != &pcStack_40) {
    FUN_00405910(&pcStack_40,*ppcVar4,ppcVar4[1]);
    pcVar8 = pcStack_40;
  }
  if ((1 < (int)pcStack_48 - (int)puStack_50) && (puStack_50 != (undefined1 *)0x0)) {
    FUN_004e44e0((int)puStack_50);
  }
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_3);
  pcStack_48 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  pcStack_54 = &DAT_011c8e54;
  puStack_50 = &DAT_011c8e54;
  puStack_4c = &DAT_011c8e55;
  ppcVar4 = FUN_004f3cc0(&puStack_24,pWVar3,0xffffffff,(char *)0x0);
  puVar9 = &DAT_011c8e55;
  pcVar10 = &DAT_011c8e54;
  if (ppcVar4 != &pcStack_54) {
    FUN_00405910(&pcStack_54,*ppcVar4,ppcVar4[1]);
    puVar9 = puStack_4c;
    pcVar10 = pcStack_54;
  }
  if ((1 < iStack_1c - (int)puStack_24) && (puStack_24 != (undefined *)0x0)) {
    FUN_004e44e0((int)puStack_24);
  }
  pcVar1 = pcStack_34;
  uVar7 = FUN_00a23a00(uStack_10,uStack_c,pcVar8,&DAT_011c8e54,unaff_EDI,pcStack_34,pcVar10,param_3,
                       param_4,param_5,param_6);
  if ((1 < (int)puVar9 - (int)pcVar10) && (pcVar10 != (char *)0x0)) {
    FUN_004e44e0((int)pcVar10);
  }
  if ((1 < (int)puStack_3c - (int)pcVar8) && (pcVar8 != (char *)0x0)) {
    FUN_004e44e0((int)pcVar8);
  }
  if ((1 < (int)puStack_2c - (int)pcVar1) && (pcVar1 != (char *)0x0)) {
    FUN_004e44e0((int)pcVar1);
  }
  if ((1 < unaff_EBX - (int)unaff_EDI) && (unaff_EDI != (char *)0x0)) {
    FUN_004e44e0((int)unaff_EDI);
  }
  return uVar7;
}

