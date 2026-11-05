/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10655a67) */
/* WARNING: Removing unreachable block (ram,0x10655ad0) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StartSoundArrayImpl. Export ordinal(s): 37.
   Entry VA: 0x106558f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000092. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 * __cdecl Audio_StartSoundArrayImpl(int param_1)

{
  int iVar1;
  int *piVar2;
  short *psVar3;
  undefined4 uVar4;
  int *piVar5;
  int unaff_EDI;
  undefined1 *puVar6;
  int iVar7;
  undefined4 uStack_38;
  int aiStack_34 [2];
  char *pcStack_2c;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  char *pcStack_18;
  
                    /* 0x6558f0  37  Audio_StartSoundArrayImpl */
  if (DAT_10c7d4a0 == 0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = (int *)(DAT_10c7d4a0 + -0x27bd0);
  }
  iVar1 = FUN_1072a1a0();
  piVar2 = (int *)FUN_1055b120();
  if (((piVar5 != (int *)0x0) && (iVar1 != 0)) && (piVar2 != (int *)0x0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    uStack_24 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    pcStack_18 = "Audio/soundArrayName";
    FUN_1006a620(&uStack_24,psVar3);
    iVar7 = param_1;
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    uStack_38 = 0;
    aiStack_34[0] = 0;
    aiStack_34[1] = 0;
    pcStack_2c = "Audio/soundNames";
    FUN_1006a620(&uStack_38,psVar3);
    puVar6 = &stack0xffffffc0;
    (**(code **)(*piVar2 + 0x68))();
    FUN_10927050(&uStack_24,aiStack_34);
    uVar4 = uStack_24;
    (**(code **)(*piVar5 + 0x28))();
    (**(code **)(*piVar5 + 0x44))(0xa29e8be);
    (**(code **)(*piVar5 + 0x54))(0x347537e,uVar4,0);
    uVar4 = FUN_10655570((int)puVar6,(int)&stack0xffffffbc,(int *)&stack0xffffffac,param_1,piVar5,
                         iVar1);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar5 + 0x68))();
      if ((1 < (int)pcStack_2c - aiStack_34[0]) && (aiStack_34[0] != 0)) {
        FUN_10918e90(aiStack_34[0]);
      }
      if ((2 < (int)(unaff_EDI - iVar7 & 0xfffffffeU)) && (iVar7 != 0)) {
        FUN_10918e90(iVar7);
      }
      return puVar6;
    }
    (**(code **)(*piVar5 + 0x6c))();
    if ((1 < (int)pcStack_2c - aiStack_34[0]) && (aiStack_34[0] != 0)) {
      FUN_10918e90(aiStack_34[0]);
    }
    if ((2 < (int)(unaff_EDI - iVar7 & 0xfffffffeU)) && (iVar7 != 0)) {
      FUN_10918e90(iVar7);
    }
  }
  return (undefined1 *)0x0;
}

