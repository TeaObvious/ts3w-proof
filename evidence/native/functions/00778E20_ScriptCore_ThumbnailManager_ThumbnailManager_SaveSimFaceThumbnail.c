/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00778f0c) */
/* WARNING: Removing unreachable block (ram,0x00778f10) */
/* Verified PC 1.67 registration table at 0x01162b60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_SaveSimFaceThumbnail [assembly=ScriptCore
   token=0x0600018A; key: Sims3.SimIFace.ResourceKey, groupId: System.UInt32, size: System.UInt32,
   dataDirName: System.String, thumbName: System.String, xmlReportData: System.String;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore.ThumbnailManager::ThumbnailManager_SaveSimFaceThumbnail(void)

{
  int iVar1;
  undefined1 uVar2;
  int *piVar3;
  short *psVar4;
  undefined4 in_stack_0000001c;
  undefined1 auStack_3e [2];
  void *pvStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  char *pcStack_2c;
  int aiStack_24 [3];
  char *pcStack_18;
  undefined1 auStack_8 [8];
  
  iVar1 = DAT_011eec30;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 == 0) || (piVar3 == (int *)0x0)) {
    return 0;
  }
  psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(in_stack_0000001c);
  aiStack_24[0] = 0;
  aiStack_24[1] = 0;
  aiStack_24[2] = 0;
  pcStack_18 = "UI/ThumbnailManager/SaveSimFaceThumbnail/dataDirNameString";
  FUN_0040b590(aiStack_24,psVar4);
  psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(in_stack_0000001c);
  uStack_38 = 0;
  iStack_34 = 0;
  uStack_30 = 0;
  pcStack_2c = "UI/ThumbnailManager/SaveSimFaceThumbnail/thumbNameString";
  FUN_0040b590(&uStack_38,psVar4);
  psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(in_stack_0000001c);
  FUN_0040b590(auStack_3e + -0xe,psVar4);
  UIResourceKey_CopyManagedToNative(auStack_8,aiStack_24 + 2);
  uVar2 = FUN_00d4ae70();
  if ((2 < (int)(iStack_34 - (int)pvStack_3c & 0xfffffffeU)) && (pvStack_3c != (void *)0x0)) {
    Memory_FreeIfNonNull(pvStack_3c);
  }
  if ((2 < (int)(aiStack_24[0] - (int)pcStack_2c & 0xfffffffeU)) && (pcStack_2c != (char *)0x0)) {
    Memory_FreeIfNonNull(pcStack_2c);
  }
  return uVar2;
}

