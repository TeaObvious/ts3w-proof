/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_UpdateSoundArrayImpl. Export ordinal(s):
   47. Entry VA: 0x10655af0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000093. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl Audio_UpdateSoundArrayImpl(undefined4 param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  short *psVar3;
  undefined4 uVar4;
  int *unaff_ESI;
  int *piVar5;
  int unaff_EDI;
  undefined4 uStack_18;
  undefined4 uStack_14;
  int iStack_10;
  undefined4 uStack_c;
  char *pcStack_8;
  
                    /* 0x655af0  47  Audio_UpdateSoundArrayImpl */
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
    uStack_14 = 0;
    iStack_10 = 0;
    uStack_c = 0;
    pcStack_8 = "Audio/soundNames";
    FUN_1006a620(&uStack_14,psVar3);
    uStack_18 = 0;
    (**(code **)(*piVar2 + 0x68))(param_2,&stack0xffffffe4,&uStack_18);
    (**(code **)(*piVar5 + 0x44))(0xa29e8e6);
    uVar4 = FUN_10655570(iStack_10,unaff_EDI,(int *)&stack0xffffffdc,param_2,piVar5,iVar1);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar5 + 0x68))();
      if ((2 < (int)(-(int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (int *)0x0)) {
        unaff_ESI = (int *)FUN_10918e90((int)unaff_ESI);
      }
      return CONCAT31((int3)((uint)unaff_ESI >> 8),1);
    }
    (**(code **)(*piVar5 + 0x6c))();
    piVar2 = unaff_ESI;
    if ((2 < (int)(-(int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (int *)0x0)) {
      piVar2 = (int *)FUN_10918e90((int)unaff_ESI);
    }
  }
  return (uint)piVar2 & 0xffffff00;
}

