/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00771887) */
/* WARNING: Removing unreachable block (ram,0x0077188b) */
/* Verified PC 1.67 registration table at 0x01162478 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  char *allocation;
  int *piVar1;
  LPCWSTR pWVar2;
  char **ppcVar3;
  undefined4 *puVar4;
  undefined1 **ppuVar5;
  undefined4 uVar6;
  int unaff_EBX;
  char *allocation_00;
  undefined *puVar7;
  char *unaff_EDI;
  char *allocation_01;
  undefined4 unaff_retaddr;
  undefined4 auStack_60 [3];
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
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_4);
  pcStack_48 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  pcStack_54 = &DAT_011c8e54;
  puStack_50 = &DAT_011c8e54;
  puStack_4c = &DAT_011c8e55;
  ppcVar3 = Utf_ConvertWideSpanToByteStorage(&puStack_24,pWVar2,0xffffffff,(char *)0x0);
  if (ppcVar3 != &pcStack_54) {
    FUN_00405910(&pcStack_54,*ppcVar3,ppcVar3[1]);
  }
  if ((1 < iStack_1c - (int)puStack_24) && (puStack_24 != (undefined *)0x0)) {
    Memory_FreeIfNonNull(puStack_24);
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_4);
  puVar4 = Utf_ConvertWideSpanToByteStorage(&puStack_28,pWVar2,0xffffffff,(char *)0x0);
  if (puVar4 != auStack_60 + -2) {
    FUN_00405910(auStack_60 + -2,(void *)*puVar4,(undefined1 *)puVar4[1]);
  }
  if ((1 < (int)pcStack_20 - (int)puStack_28) && (puStack_28 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(puStack_28);
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_4);
  pcStack_20 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  puStack_2c = &DAT_011c8e54;
  puStack_28 = &DAT_011c8e54;
  puStack_24 = &DAT_011c8e55;
  ppuVar5 = Utf_ConvertWideSpanToByteStorage(&puStack_3c,pWVar2,0xffffffff,(char *)0x0);
  if (ppuVar5 != &puStack_2c) {
    FUN_00405910(&puStack_2c,*ppuVar5,ppuVar5[1]);
  }
  if ((1 < (int)pcStack_34 - (int)puStack_3c) && (puStack_3c != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(puStack_3c);
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(unaff_retaddr);
  pcStack_34 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  pcStack_40 = &DAT_011c8e54;
  puStack_3c = &DAT_011c8e54;
  puStack_38 = &DAT_011c8e55;
  ppcVar3 = Utf_ConvertWideSpanToByteStorage(&puStack_50,pWVar2,0xffffffff,(char *)0x0);
  allocation_00 = &DAT_011c8e54;
  if (ppcVar3 != &pcStack_40) {
    FUN_00405910(&pcStack_40,*ppcVar3,ppcVar3[1]);
    allocation_00 = pcStack_40;
  }
  if ((1 < (int)pcStack_48 - (int)puStack_50) && (puStack_50 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(puStack_50);
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_3);
  pcStack_48 = "Scripting/ScriptFunctions/SocialFeaturesHost";
  pcStack_54 = &DAT_011c8e54;
  puStack_50 = &DAT_011c8e54;
  puStack_4c = &DAT_011c8e55;
  ppcVar3 = Utf_ConvertWideSpanToByteStorage(&puStack_24,pWVar2,0xffffffff,(char *)0x0);
  puVar7 = &DAT_011c8e55;
  allocation_01 = &DAT_011c8e54;
  if (ppcVar3 != &pcStack_54) {
    FUN_00405910(&pcStack_54,*ppcVar3,ppcVar3[1]);
    puVar7 = puStack_4c;
    allocation_01 = pcStack_54;
  }
  if ((1 < iStack_1c - (int)puStack_24) && (puStack_24 != (undefined *)0x0)) {
    Memory_FreeIfNonNull(puStack_24);
  }
  allocation = pcStack_34;
  uVar6 = FUN_00a23a00(uStack_10,uStack_c,allocation_00,&DAT_011c8e54,unaff_EDI,pcStack_34,
                       allocation_01,param_3,param_4,param_5,param_6);
  if ((1 < (int)puVar7 - (int)allocation_01) && (allocation_01 != (char *)0x0)) {
    Memory_FreeIfNonNull(allocation_01);
  }
  if ((1 < (int)puStack_3c - (int)allocation_00) && (allocation_00 != (char *)0x0)) {
    Memory_FreeIfNonNull(allocation_00);
  }
  if ((1 < (int)puStack_2c - (int)allocation) && (allocation != (char *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  if ((1 < unaff_EBX - (int)unaff_EDI) && (unaff_EDI != (char *)0x0)) {
    Memory_FreeIfNonNull(unaff_EDI);
  }
  return uVar6;
}

