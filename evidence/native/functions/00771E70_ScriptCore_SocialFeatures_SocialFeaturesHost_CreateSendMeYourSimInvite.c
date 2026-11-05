/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00771ff0) */
/* WARNING: Removing unreachable block (ram,0x00771ff4) */
/* Verified PC 1.67 registration table at 0x01162728 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_CreateSendMeYourSimInvite [assembly=ScriptCore
   token=0x06000AE6; inviteTarget: System.Int64, passportId: System.Int32, career: System.String,
   level: System.String, venue: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.SocialFeatures::SocialFeaturesHost_CreateSendMeYourSimInvite(void)

{
  char *pcVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined1 **ppuVar4;
  char **ppcVar5;
  undefined4 *puVar6;
  char *pcVar7;
  int unaff_EBP;
  undefined4 unaff_retaddr;
  undefined4 in_stack_00000010;
  int iStack_40;
  char *pcStack_38;
  undefined1 *puStack_34;
  undefined *puStack_30;
  char *pcStack_2c;
  undefined1 *puStack_24;
  undefined1 *puStack_20;
  undefined *puStack_1c;
  char *pcStack_18;
  int iStack_14;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(in_stack_00000010);
    pcStack_18 = "Scripting/ScriptFunctions/SocialFeaturesHost";
    puStack_24 = &DAT_011c8e54;
    puStack_20 = &DAT_011c8e54;
    puStack_1c = &DAT_011c8e55;
    ppuVar4 = FUN_004f3cc0(&puStack_34,pWVar3,0xffffffff,(char *)0x0);
    if (ppuVar4 != &puStack_24) {
      FUN_00405910(&puStack_24,*ppuVar4,ppuVar4[1]);
    }
    if ((1 < (int)pcStack_2c - (int)puStack_34) && (puStack_34 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puStack_34);
    }
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(in_stack_00000010);
    pcStack_2c = "Scripting/ScriptFunctions/SocialFeaturesHost";
    pcStack_38 = &DAT_011c8e54;
    puStack_34 = &DAT_011c8e54;
    puStack_30 = &DAT_011c8e55;
    ppcVar5 = FUN_004f3cc0(&stack0xffffffb8,pWVar3,0xffffffff,(char *)0x0);
    pcVar7 = &DAT_011c8e54;
    if (ppcVar5 != &pcStack_38) {
      FUN_00405910(&pcStack_38,*ppcVar5,ppcVar5[1]);
      pcVar7 = pcStack_38;
    }
    if ((1 < iStack_40 - unaff_EBP) && (unaff_EBP != 0)) {
      FUN_004e44e0(unaff_EBP);
    }
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(in_stack_00000010);
    puVar6 = FUN_004f3cc0(&puStack_1c,pWVar3,0xffffffff,(char *)0x0);
    if (puVar6 != (undefined4 *)&stack0xffffffb4) {
      FUN_00405910(&stack0xffffffb4,(void *)*puVar6,(undefined1 *)puVar6[1]);
    }
    if ((1 < iStack_14 - (int)puStack_1c) && (puStack_1c != (undefined *)0x0)) {
      FUN_004e44e0((int)puStack_1c);
    }
    pcVar1 = pcStack_2c;
    FUN_00a25140(uStack_8,uStack_4,unaff_retaddr,pcStack_2c,pcVar7,&DAT_011c8e54);
    if ((1 < (int)puStack_34 - (int)pcVar7) && (pcVar7 != (char *)0x0)) {
      FUN_004e44e0((int)pcVar7);
    }
    if ((1 < (int)puStack_24 - (int)pcVar1) && (pcVar1 != (char *)0x0)) {
      FUN_004e44e0((int)pcVar1);
    }
  }
  return;
}

