/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00771ff0) */
/* WARNING: Removing unreachable block (ram,0x00771ff4) */
/* Verified PC 1.67 registration table at 0x01162728 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_CreateSendMeYourSimInvite [assembly=ScriptCore
   token=0x06000AE6; inviteTarget: System.Int64, passportId: System.Int32, career: System.String,
   level: System.String, venue: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.SocialFeatures::SocialFeaturesHost_CreateSendMeYourSimInvite(void)

{
  char *allocation;
  int *piVar1;
  LPCWSTR pWVar2;
  undefined1 **ppuVar3;
  char **ppcVar4;
  undefined4 *puVar5;
  char *allocation_00;
  void *unaff_EBP;
  undefined4 unaff_retaddr;
  undefined4 in_stack_00000010;
  undefined4 uStack_40;
  undefined4 uStack_3c;
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
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(in_stack_00000010);
    pcStack_18 = "Scripting/ScriptFunctions/SocialFeaturesHost";
    puStack_24 = &DAT_011c8e54;
    puStack_20 = &DAT_011c8e54;
    puStack_1c = &DAT_011c8e55;
    ppuVar3 = Utf_ConvertWideSpanToByteStorage(&puStack_34,pWVar2,0xffffffff,(char *)0x0);
    if (ppuVar3 != &puStack_24) {
      FUN_00405910(&puStack_24,*ppuVar3,ppuVar3[1]);
    }
    if ((1 < (int)pcStack_2c - (int)puStack_34) && (puStack_34 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puStack_34);
    }
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(in_stack_00000010);
    pcStack_2c = "Scripting/ScriptFunctions/SocialFeaturesHost";
    pcStack_38 = &DAT_011c8e54;
    puStack_34 = &DAT_011c8e54;
    puStack_30 = &DAT_011c8e55;
    ppcVar4 = Utf_ConvertWideSpanToByteStorage
                        ((void *)((int)register0x00000010 + -0x48),pWVar2,0xffffffff,(char *)0x0);
    allocation_00 = &DAT_011c8e54;
    if (ppcVar4 != &pcStack_38) {
      FUN_00405910(&pcStack_38,*ppcVar4,ppcVar4[1]);
      allocation_00 = pcStack_38;
    }
    if ((1 < uStack_40 - (int)unaff_EBP) && (unaff_EBP != (void *)0x0)) {
      Memory_FreeIfNonNull(unaff_EBP);
    }
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(in_stack_00000010);
    puVar5 = Utf_ConvertWideSpanToByteStorage(&puStack_1c,pWVar2,0xffffffff,(char *)0x0);
    if (puVar5 != (undefined4 *)((int)register0x00000010 + -0x4c)) {
      FUN_00405910((undefined4 *)((int)register0x00000010 + -0x4c),(void *)*puVar5,
                   (undefined1 *)puVar5[1]);
    }
    if ((1 < iStack_14 - (int)puStack_1c) && (puStack_1c != (undefined *)0x0)) {
      Memory_FreeIfNonNull(puStack_1c);
    }
    allocation = pcStack_2c;
    FUN_00a25140(uStack_8,uStack_4,unaff_retaddr,pcStack_2c,allocation_00,&DAT_011c8e54);
    if ((1 < (int)puStack_34 - (int)allocation_00) && (allocation_00 != (char *)0x0)) {
      Memory_FreeIfNonNull(allocation_00);
    }
    if ((1 < (int)puStack_24 - (int)allocation) && (allocation != (char *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

