/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00778f0c) */
/* WARNING: Removing unreachable block (ram,0x00778f10) */
/* Verified PC 1.67 registration table at 0x01162b60 (original PC 1.67 TS3W.exe).
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
  int iStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  char *pcStack_2c;
  int aiStack_24 [3];
  char *pcStack_18;
  undefined1 auStack_8 [8];
  
  iVar1 = DAT_011eec30;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 != 0) && (piVar3 != (int *)0x0)) {
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
    FUN_0040b590(&stack0xffffffb4,psVar4);
    FUN_0076c0e0(auStack_8,aiStack_24 + 2);
    uVar2 = FUN_00d4ae70();
    if ((2 < (int)(iStack_34 - iStack_3c & 0xfffffffeU)) && (iStack_3c != 0)) {
      FUN_004e44e0(iStack_3c);
    }
    if ((2 < (int)(aiStack_24[0] - (int)pcStack_2c & 0xfffffffeU)) && (pcStack_2c != (char *)0x0)) {
      FUN_004e44e0((int)pcStack_2c);
    }
    return uVar2;
  }
  return 0;
}

