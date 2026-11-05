/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1056af6c) */
/* WARNING: Removing unreachable block (ram,0x1056af70) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_SaveSimFaceThumbnail. Export
   ordinal(s): 1056. Entry VA: 0x1056ae80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600038E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 ThumbnailManager_SaveSimFaceThumbnail(void)

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
  
                    /* 0x56ae80  1056  ThumbnailManager_SaveSimFaceThumbnail */
  iVar1 = DAT_10c71150;
  piVar3 = (int *)FUN_1055b120();
  if ((iVar1 != 0) && (piVar3 != (int *)0x0)) {
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(in_stack_0000001c);
    aiStack_24[0] = 0;
    aiStack_24[1] = 0;
    aiStack_24[2] = 0;
    pcStack_18 = "UI/ThumbnailManager/SaveSimFaceThumbnail/dataDirNameString";
    FUN_1006a620(aiStack_24,psVar4);
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(in_stack_0000001c);
    uStack_38 = 0;
    iStack_34 = 0;
    uStack_30 = 0;
    pcStack_2c = "UI/ThumbnailManager/SaveSimFaceThumbnail/thumbNameString";
    FUN_1006a620(&uStack_38,psVar4);
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(in_stack_0000001c);
    FUN_1006a620(&stack0xffffffb4,psVar4);
    FUN_1055dbb0(auStack_8,aiStack_24 + 2);
    uVar2 = FUN_107077a0();
    if ((2 < (int)(iStack_34 - iStack_3c & 0xfffffffeU)) && (iStack_3c != 0)) {
      FUN_10918e90(iStack_3c);
    }
    if ((2 < (int)(aiStack_24[0] - (int)pcStack_2c & 0xfffffffeU)) && (pcStack_2c != (char *)0x0)) {
      FUN_10918e90((int)pcStack_2c);
    }
    return uVar2;
  }
  return 0;
}

