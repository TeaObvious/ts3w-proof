/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x008af15d) */
/* Verified PC 1.67: loads voice tuning, including authored gain at 008AF0C7, through root-vtable
   +88=008AF8B0 into the scalar property path later used by script updates. On the ordinary radio
   voice this supports scripted replacement of authored scalar gain. Raw instruction proof:
   008AEE90_AudioVoice_LoadAuthoredProperties.asm.
   original PC 1.67 TS3W.exe. */

undefined4 __fastcall AudioVoice_LoadAuthoredProperties(int *param_1)

{
  char *pcVar1;
  undefined4 *puVar2;
  char cVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  undefined4 uVar8;
  uint uVar9;
  int iStack_110;
  int **ppiStack_10c;
  int *piStack_104;
  undefined4 uStack_100;
  int *piStack_fc;
  int iStack_f8;
  int *piStack_f4;
  int *piStack_f0;
  int *piStack_ec;
  undefined4 uStack_e8;
  int *piStack_e4;
  int iStack_e0;
  int *piStack_dc;
  undefined4 uStack_d8;
  char *pcStack_d4;
  char cStack_66;
  char cStack_5e;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  int *piStack_48;
  
  piStack_48 = (int *)0x8aeeb3;
  FUN_008a2500(param_1 + 0xd2,param_1[0xd3],param_1[0xd4]);
  param_1[0xd5] = 0;
  piStack_48 = (int *)0x8aeed3;
  FUN_008a2500(param_1 + 0x226,param_1[0x227],param_1[0x228]);
  param_1[0x229] = 0;
  (**(code **)(*param_1 + 0xac))();
  iVar4 = FUN_008afe00();
  if (iVar4 != 0) {
    param_1[0x12] = param_1[0xe];
    piVar7 = param_1 + 0x3d;
    param_1[0x13] = param_1[0xf];
    piStack_48 = (int *)0x8aef23;
    (**(code **)(param_1[0x3d] + 0x2c))();
    piStack_48 = param_1 + 0x2b6;
    uStack_4c = 0xd9ec19d6;
    uStack_50 = 0x8aef38;
    (**(code **)(*piVar7 + 0x2c))();
    uStack_50 = (int)param_1 + 0xaf;
    uStack_54 = 0xfd9003a3;
    uStack_58 = (int *)0x8aef4d;
    (**(code **)(*piVar7 + 0x24))();
    uStack_58 = param_1 + 0x2b2;
    cVar3 = (**(code **)(*piVar7 + 0x30))();
    if (cVar3 != '\0') {
      param_1[0x2b7] = param_1[0x2b7] | 0x400;
    }
    cVar3 = (**(code **)(*piVar7 + 0x24))();
    if ((cVar3 != '\0') && (uStack_58._2_1_ != '\0')) {
      param_1[0x2b7] = param_1[0x2b7] | 0x1000;
    }
    cVar3 = (**(code **)(*piVar7 + 0x24))();
    if ((cVar3 != '\0') &&
       (cStack_5e = (char)((uint)((int)&uStack_50 + 2) >> 0x10), cStack_5e != '\0')) {
      *(undefined1 *)(param_1 + 0x2b3) = 1;
    }
    cVar3 = (**(code **)(*piVar7 + 0x24))();
    if ((cVar3 != '\0') &&
       (cStack_66 = (char)((uint)((int)&uStack_58 + 2) >> 0x10), cStack_66 != '\0')) {
      *(undefined1 *)((int)param_1 + 0xacd) = 1;
    }
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    (**(code **)(*param_1 + 0x88))();
    cVar3 = (**(code **)(*piVar7 + 0x24))();
    if (cVar3 != '\0') {
      *(byte *)(param_1 + 0x34) = *(byte *)(param_1 + 0x34) | 8;
    }
    pcVar1 = (char *)((int)param_1 + 0xad);
    uStack_d8 = 0x6dd08218;
    piStack_dc = (int *)0x8af17a;
    pcStack_d4 = pcVar1;
    (**(code **)(*piVar7 + 0x24))();
    piStack_dc = param_1 + 0x2c;
    iStack_e0 = -0x45ecbe6e;
    piStack_e4 = (int *)0x8af18f;
    (**(code **)(*piVar7 + 0x24))();
    piStack_e4 = param_1 + 0xcf;
    uStack_e8 = 0xbaf7f4f9;
    piStack_ec = (int *)0x8af1a4;
    (**(code **)(*piVar7 + 0x2c))();
    piStack_ec = param_1 + 0xd0;
    piStack_f0 = (int *)0x7f28acc;
    piStack_f4 = (int *)0x8af1b9;
    (**(code **)(*piVar7 + 0x38))();
    piStack_f4 = param_1 + 0x2d;
    iStack_f8 = -0x12e0c92b;
    piStack_fc = (int *)0x8af1ce;
    (**(code **)(*piVar7 + 0x2c))();
    piStack_fc = param_1 + 0x3c;
    uStack_100 = 0x6610c2bd;
    piStack_104 = (int *)0x8af1e3;
    (**(code **)(*piVar7 + 0x2c))();
    piStack_104 = param_1 + 0x1d;
    (**(code **)(*piVar7 + 0x30))();
    if ((*(char *)((int)param_1 + 0xacd) != '\0') && (*pcVar1 != '\0')) {
      *pcVar1 = '\0';
    }
    piVar5 = (int *)FUN_008afe00();
    iStack_110 = (**(code **)(*piVar5 + 0x1e4))();
    ppiStack_10c = &piStack_f4;
    cVar3 = (**(code **)(*piVar7 + 0x1c))();
    if ((cVar3 != '\0') ||
       (cVar3 = (**(code **)(*piVar7 + 0x1c))(0x701ed91e,&piStack_fc), cVar3 != '\0')) {
      if (((*(byte *)(piStack_fc + 2) & 0x30) == 0) || ((uint)piStack_fc[6] < 2)) {
        iStack_e0 = 0;
        piStack_dc = (int *)0x0;
        uStack_d8 = 0;
        pcStack_d4 = (char *)0x0;
        cVar3 = (**(code **)(*piVar7 + 0x34))(iStack_110,&iStack_e0);
        if (cVar3 == '\0') {
          (**(code **)(*piVar7 + 0x34))(0x701ed91e,&iStack_e0);
        }
        param_1[0x12] = iStack_e0;
        param_1[0x13] = (int)piStack_dc;
        param_1[0x14] = (int)pcStack_d4;
      }
      else {
        puVar2 = (undefined4 *)param_1[0xba];
        piVar5 = param_1 + 0xba;
        if (puVar2 != (undefined4 *)0x0) {
          *piVar5 = 0;
          iVar4 = puVar2[1];
          puVar2[1] = iVar4 + -1;
          if (iVar4 + -1 == 0) {
            puVar2[1] = 1;
            (**(code **)*puVar2)(1);
          }
        }
        if ((*(ushort *)(piStack_fc + 2) & 0x30) == 0) {
          uVar9 = (uint)(*(short *)((int)piStack_fc + 10) != 0);
          if (*(short *)((int)piStack_fc + 10) == 0) {
            piVar6 = (int *)0x0;
          }
          else {
            piVar6 = piStack_fc + 4;
          }
        }
        else {
          uVar9 = piStack_fc[6];
          piVar6 = (int *)piStack_fc[4];
        }
        (**(code **)(*piStack_f0 + 0x194))(param_1[0xe],param_1[0xf],piVar6,uVar9,piVar5);
        FUN_008a36a0((void *)*piVar5,'\0');
      }
    }
    AudioCurve_LoadProperty(param_1 + 0x2b8,piVar7,0xf70317c);
    AudioCurve_LoadProperty(param_1 + 0x390,piVar7,0x9d0b38e);
    AudioCurve_LoadProperty(param_1 + 0x468,piVar7,0x173c2710);
    cVar3 = (**(code **)(*piVar7 + 0x48))(0x9bfc37ac,&piStack_ec,&uStack_e8);
    if (cVar3 != '\0') {
      param_1[0x2b7] = param_1[0x2b7] | 0x4000;
      FUN_008a9f90(param_1 + 0x540,(int)piStack_f4,iStack_f8 >> 1);
    }
    if ((param_1[0xba] != 0) && (iVar4 = FUN_008a3490(param_1[0xba]), iVar4 != 0)) {
      piVar5 = (int *)FUN_008a3530((void *)param_1[0xba],&piStack_ec);
      param_1[0x12] = *piVar5;
      param_1[0x13] = piVar5[1];
      param_1[0x14] = piVar5[2];
      param_1[0x15] = piVar5[3];
    }
    cVar3 = (**(code **)(*piVar7 + 0x4c))(0x7cb81a35,&piStack_104,&uStack_100);
    if ((cVar3 != '\0') && (iStack_110 != 0)) {
      do {
        iStack_110 = iStack_110 + -1;
        piVar5 = *ppiStack_10c;
        ppiStack_10c = ppiStack_10c + 1;
        piStack_fc = piVar5;
        (**(code **)(iRamc742ceb8 + 0x134))(piVar5,param_1 + 1);
        piVar6 = (int *)param_1[0xbd];
        if (piVar6 < (int *)param_1[0xbe]) {
          param_1[0xbd] = (int)(piVar6 + 1);
          if (piVar6 != (int *)0x0) {
            *piVar6 = (int)piVar5;
          }
        }
        else {
          FUN_00452bf0(param_1 + 0xbc,piVar6,&piStack_fc);
        }
      } while (iStack_110 != 0);
    }
    iVar4 = (**(code **)(*piVar7 + 0x40))(0x2fe09c83);
    if (iVar4 != 0) {
      piVar7 = (int *)FUN_008afe00();
      iVar4 = (**(code **)(*piVar7 + 0x110))(iVar4);
      param_1[0xcb] = iVar4;
    }
    uVar8 = (**(code **)(*param_1 + 0x84))();
    return CONCAT31((int3)((uint)uVar8 >> 8),1);
  }
  return 0;
}

