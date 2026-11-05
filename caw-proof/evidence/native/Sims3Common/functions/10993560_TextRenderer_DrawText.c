/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: TextRenderer_DrawText. Export ordinal(s): 2474.
   Entry VA: 0x10993560. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000605. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
TextRenderer_DrawText(void *param_1,short *param_2,float param_3,float param_4,float param_5)

{
  short sVar1;
  undefined1 auVar2 [16];
  int *piVar3;
  void *this;
  int iVar4;
  short *psVar5;
  float fVar6;
  float fVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  int iStack_2d8;
  int iStack_2d4;
  int iStack_2d0;
  int iStack_2cc;
  undefined1 auStack_2c8 [16];
  float fStack_2b8;
  float fStack_2b4;
  float fStack_2b0;
  float fStack_2ac;
  undefined4 auStack_2a0 [6];
  undefined2 local_288 [256];
  undefined4 local_88;
  undefined4 uStack_7c;
  undefined4 local_44;
  
                    /* 0x993560  2474  TextRenderer_DrawText */
  if (param_1 != (void *)0x0) {
    FUN_108957d0(local_288);
    local_88 = DAT_10b976ac;
    local_44 = 1;
    piVar3 = FUN_108848d0('\x01');
    piVar3 = (int *)(**(code **)(*piVar3 + 0x20))(local_288,0,0,0xffff,0xffffffff,1);
    this = (void *)FUN_104094c0();
    FUN_1040b140(this,&iStack_2d8);
    iVar4 = FUN_104de3a0();
    iVar4 = FUN_109a5b50(iVar4);
    fStack_2b8 = param_4 * *(float *)(iVar4 + 0x140) + param_3 * *(float *)(iVar4 + 0x130) +
                 param_5 * *(float *)(iVar4 + 0x150) + DAT_10acb0d4 * *(float *)(iVar4 + 0x160);
    fStack_2b4 = param_4 * *(float *)(iVar4 + 0x144) + param_3 * *(float *)(iVar4 + 0x134) +
                 param_5 * *(float *)(iVar4 + 0x154) + DAT_10acb0d4 * *(float *)(iVar4 + 0x164);
    fStack_2b0 = param_4 * *(float *)(iVar4 + 0x148) + param_3 * *(float *)(iVar4 + 0x138) +
                 param_5 * *(float *)(iVar4 + 0x158) + DAT_10acb0d4 * *(float *)(iVar4 + 0x168);
    fStack_2ac = param_4 * *(float *)(iVar4 + 0x14c) + param_3 * *(float *)(iVar4 + 0x13c) +
                 param_5 * *(float *)(iVar4 + 0x15c) + DAT_10acb0d4 * *(float *)(iVar4 + 0x16c);
    auVar8._4_4_ = fStack_2b8;
    auVar8._0_4_ = fStack_2b8;
    auVar8._8_4_ = fStack_2b8;
    auVar8._12_4_ = fStack_2b8;
    auVar9._4_4_ = fStack_2ac;
    auVar9._0_4_ = fStack_2ac;
    auVar9._8_4_ = fStack_2ac;
    auVar9._12_4_ = fStack_2ac;
    auVar9 = divps(auVar8,auVar9);
    auVar10._4_4_ = fStack_2b4;
    auVar10._0_4_ = fStack_2b4;
    auVar10._8_4_ = fStack_2b4;
    auVar10._12_4_ = fStack_2b4;
    auVar2._4_4_ = fStack_2ac;
    auVar2._0_4_ = fStack_2ac;
    auVar2._8_4_ = fStack_2ac;
    auVar2._12_4_ = fStack_2ac;
    auStack_2c8 = divps(auVar10,auVar2);
    fVar6 = (auVar9._0_4_ * _DAT_10b310ec + _DAT_10b310ec) * (float)(iStack_2d0 - iStack_2d8);
    fVar7 = (DAT_10acb0d4 - ((float)auStack_2c8._0_4_ * _DAT_10b310ec + _DAT_10b310ec)) *
            (float)(iStack_2cc - iStack_2d4);
    uStack_7c = 0xff000000;
    psVar5 = param_2;
    do {
      sVar1 = *psVar5;
      psVar5 = psVar5 + 1;
    } while (sVar1 != 0);
    FUN_10489120(param_1,(uint)param_2,(int)psVar5 - (int)(param_2 + 1) >> 1,fVar6 + DAT_10acb0d4,
                 fVar7 + DAT_10acb0d4,piVar3,auStack_2a0);
    uStack_7c = 0xffffffff;
    psVar5 = param_2;
    do {
      sVar1 = *psVar5;
      psVar5 = psVar5 + 1;
    } while (sVar1 != 0);
    FUN_10489120(param_1,(uint)param_2,(int)psVar5 - (int)(param_2 + 1) >> 1,fVar6,fVar7,piVar3,
                 auStack_2a0);
  }
  return;
}

