/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_DrawSkeleton. Export
   ordinal(s): 1633. Entry VA: 0x10981de0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000332. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
AnimationComponent_DrawSkeleton
          (void *param_1,float *param_2,float *param_3,void *param_4,void *param_5,uint param_6,
          uint param_7,int param_8,int param_9,int *param_10,int *param_11,int param_12)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  float fVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  char *pcStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 auStack_50 [19];
  
                    /* 0x981de0  1633  AnimationComponent_DrawSkeleton */
  iVar6 = (**(code **)(*(int *)((int)param_1 + 8) + 0x20))();
  if (iVar6 != 0) {
    iVar6 = FUN_10371690(iVar6 + 0x28);
    pcStack_c4 = "Objects/ComponentsWrap";
    FUN_10980f20(&fStack_e0,iVar6,(int *)&pcStack_c4);
    fVar5 = fStack_e0;
    FUN_103ec030((int)fStack_e0,iVar6,auStack_50);
    if (0 < iVar6) {
      puVar8 = (undefined4 *)((int)fStack_e0 + 0x20);
      puVar7 = (undefined4 *)(param_12 + 8);
      do {
        uStack_94 = puVar7[1];
        uStack_a4 = puVar7[5];
        uStack_b4 = puVar7[9];
        uVar1 = puVar7[0xd];
        uStack_98 = *puVar7;
        uStack_a8 = puVar7[4];
        uStack_b8 = puVar7[8];
        uVar2 = puVar7[0xc];
        uStack_9c = puVar7[-1];
        uStack_ac = puVar7[3];
        uStack_bc = puVar7[7];
        uVar3 = puVar7[0xb];
        uStack_a0 = puVar7[-2];
        uStack_b0 = puVar7[2];
        uStack_c0 = puVar7[6];
        uVar4 = puVar7[10];
        puVar8[-8] = uStack_a0;
        puVar8[-7] = uStack_9c;
        puVar8[-6] = uStack_98;
        puVar8[-5] = uStack_94;
        puVar8[-4] = uStack_b0;
        puVar8[-3] = uStack_ac;
        puVar8[-2] = uStack_a8;
        puVar8[-1] = uStack_a4;
        *puVar8 = uStack_c0;
        puVar8[1] = uStack_bc;
        puVar8[2] = uStack_b8;
        puVar8[3] = uStack_b4;
        puVar8[4] = uVar4;
        puVar8[5] = uVar3;
        puVar8[6] = uVar2;
        puVar8[7] = uVar1;
        puVar7 = puVar7 + 0x10;
        puVar8 = puVar8 + 0x10;
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    fStack_84 = param_3[3];
    fStack_88 = param_3[2];
    fStack_8c = param_3[1];
    fStack_90 = *param_3;
    fStack_74 = param_3[7];
    fStack_78 = param_3[6];
    fStack_7c = param_3[5];
    fStack_80 = param_3[4];
    fStack_64 = param_3[0xb];
    fStack_68 = param_3[10];
    fStack_6c = param_3[9];
    fStack_70 = param_3[8];
    fStack_d4 = param_3[0xf];
    fStack_d8 = param_3[0xe];
    fStack_dc = param_3[0xd];
    fStack_e0 = param_3[0xc];
    fStack_60 = fStack_e0;
    fStack_5c = fStack_dc;
    fStack_58 = fStack_d8;
    fStack_54 = fStack_d4;
    FUN_10733bf0(param_1,param_2,&fStack_90,param_4,param_5,param_6,param_7,param_8,param_9,param_10
                 ,param_11,(int)fVar5);
    if (fVar5 != 0.0) {
      FUN_10918e90((int)fVar5);
    }
  }
  return;
}

