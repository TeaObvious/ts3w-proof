/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00864277) */
/* WARNING: Removing unreachable block (ram,0x008642e0) */
/* Verified PC 1.67 registration table at 0x011677f8 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_StartSoundArrayImpl [assembly=ScriptCore token=0x060011EA; name:
   System.String, soundNames: System.String, objIds: System.UInt64[]; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_Audio__Audio_StartSoundArrayImpl(int param_1)

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
  
  if (DAT_011d9c40 == 0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = (int *)(DAT_011d9c40 + -0x27bd0);
  }
  iVar1 = FUN_00937570();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((piVar5 != (int *)0x0) && (iVar1 != 0)) && (piVar2 != (int *)0x0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    uStack_24 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    pcStack_18 = "Audio/soundArrayName";
    FUN_0040b590(&uStack_24,psVar3);
    iVar7 = param_1;
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))();
    uStack_38 = 0;
    aiStack_34[0] = 0;
    aiStack_34[1] = 0;
    pcStack_2c = "Audio/soundNames";
    FUN_0040b590(&uStack_38,psVar3);
    puVar6 = &stack0xffffffc0;
    (**(code **)(*piVar2 + 0x68))();
    FUN_004f3df0(&uStack_24,aiStack_34);
    uVar4 = uStack_24;
    (**(code **)(*piVar5 + 0x28))();
    (**(code **)(*piVar5 + 0x44))(0xa29e8be);
    (**(code **)(*piVar5 + 0x54))(0x347537e,uVar4,0);
    uVar4 = FUN_00863d80((int)puVar6,(int)&stack0xffffffbc,(int *)&stack0xffffffac,param_1,piVar5,
                         iVar1);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar5 + 0x68))();
      if ((1 < (int)pcStack_2c - aiStack_34[0]) && (aiStack_34[0] != 0)) {
        FUN_004e44e0(aiStack_34[0]);
      }
      if ((2 < (int)(unaff_EDI - iVar7 & 0xfffffffeU)) && (iVar7 != 0)) {
        FUN_004e44e0(iVar7);
      }
      return puVar6;
    }
    (**(code **)(*piVar5 + 0x6c))();
    if ((1 < (int)pcStack_2c - aiStack_34[0]) && (aiStack_34[0] != 0)) {
      FUN_004e44e0(aiStack_34[0]);
    }
    if ((2 < (int)(unaff_EDI - iVar7 & 0xfffffffeU)) && (iVar7 != 0)) {
      FUN_004e44e0(iVar7);
    }
  }
  return (undefined1 *)0x0;
}

