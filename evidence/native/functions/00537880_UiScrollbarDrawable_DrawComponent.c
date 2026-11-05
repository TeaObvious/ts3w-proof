/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, PC1.67 static; concrete ScrollbarDrawable primaryFBFC8C slot10, confirmed by
   original classID0F034637/2C-byte descriptor and factory role. Physical thiscall ECX drawable,
   three stack words drawContext, float4 bounds, uint32 stateWords; RET0C, void. EBP frame
   plus8-byte ESP alignment is essential: inferred C loses indirect-call stack tracking and aliases
   many vector pointers, call arguments and saved registers. Obtain renderer from50EC40 using
   context inECX and two zero stack words (helper RET8), then renderer virtual4 receivesFFFFFFFF.
   Image pointer comes from drawable+10+4*component. Unsigned component-minus1 switch emits
   only1/3/4/6;0/2/5 and out-of-range return. With image, components1/6 draw one UV quad with
   horizontal atlas frame,3 draws three slices and4 draws three track slices. State low3bits0 gives
   frame1/4 unless bit8 then3/4;1 gives0;2 gives1/2;3 gives3/4;other values leave0. Orientation80hex
   selects vertical. Quarter caps load signed image+1C or+20 and compute division by4 toward0 with
   CDQ/AND3/ADD/SAR2 before CVTSI2SS. Original draws leading/end/middle slices in that order and
   does not clamp cap to half destination length; inverted middle endpoints remain possible.
   Component3 uses frame on cross UV axis; component4 uses full cross axis. Missing image is not a
   no-op: component4 sets FFACA899 and submits fill geometry; components1/3/6 submit state-dependent
   beveled/flat geometry, with arrow primitives for1/6. Exact color literals,1/2 pixel offsets,
   binary32 two-sevenths(0x3E924925), and original arithmetic/vertex ordering remain in complete
   ASM; do not substitute current skip/short-cap heuristics or infer a GPU primitive API from an
   indirect slot. No selected draw reads copied stateWords2/3; upstream/context tint may still apply
   separately. No codec/backend or whole rendering equivalence is claimed. */

void __thiscall
UiScrollbarDrawable_DrawComponent(void *this,void *drawContext,float *bounds,uint *stateWords)

{
  float fVar1;
  float fVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  float fVar6;
  float *pfStack_46c;
  undefined4 ****ppppuStack_468;
  undefined4 ****ppppuStack_464;
  float **ppfStack_460;
  undefined4 **ppuStack_45c;
  undefined4 ***pppuStack_458;
  float *pfStack_454;
  float *pfStack_450;
  float *pfStack_44c;
  float *pfStack_448;
  float *pfStack_444;
  float *pfStack_440;
  float *pfStack_43c;
  float *pfStack_438;
  float *pfStack_434;
  float **ppfStack_430;
  undefined4 **ppuStack_42c;
  undefined4 ***pppuStack_428;
  float *pfStack_424;
  float *pfStack_420;
  undefined4 ***pppuStack_41c;
  undefined4 uVar7;
  float **ppfStack_400;
  float fStack_3fc;
  float fStack_3e8;
  float fStack_3e4;
  undefined4 **ppuStack_3d8;
  float fStack_3d4;
  float *pfStack_3cc;
  float fStack_3c8;
  float fStack_3c4;
  float fStack_3bc;
  undefined4 ***pppuStack_3b8;
  float fStack_3b4;
  float fStack_3ac;
  undefined4 **ppuStack_3a8;
  float fStack_3a4;
  float *pfStack_39c;
  undefined4 ****ppppuStack_398;
  float fStack_394;
  undefined4 ****ppppuStack_38c;
  undefined4 ***pppuStack_388;
  float fStack_384;
  undefined4 ***pppuStack_378;
  float fStack_374;
  float fStack_368;
  float fStack_364;
  float fStack_358;
  float fStack_354;
  undefined4 ***pppuStack_348;
  float fStack_344;
  undefined4 ***pppuStack_338;
  float fStack_334;
  float *pfStack_32c;
  float fStack_328;
  float fStack_324;
  float fStack_31c;
  float fStack_318;
  float fStack_314;
  float fStack_310;
  float fStack_30c;
  undefined4 ***pppuStack_308;
  float fStack_304;
  undefined4 **ppuStack_300;
  float fStack_2fc;
  undefined4 ***pppuStack_2f8;
  undefined4 ***pppuStack_2f4;
  float fStack_2f0;
  float fStack_2ec;
  undefined4 ***pppuStack_2e8;
  float fStack_2e4;
  float fStack_2e0;
  float fStack_2d8;
  float fStack_2d4;
  undefined4 ***pppuStack_2c8;
  undefined4 **ppuStack_2c4;
  float fStack_278;
  float fStack_274;
  float fStack_26c;
  float fStack_268;
  float fStack_264;
  undefined4 **ppuStack_260;
  undefined4 *puStack_25c;
  float fStack_258;
  undefined4 *puStack_254;
  undefined4 ***pppuStack_250;
  float fStack_24c;
  undefined4 **ppuStack_248;
  undefined4 *puStack_240;
  float fStack_23c;
  float fStack_234;
  undefined4 *puStack_230;
  float fStack_22c;
  undefined4 ****ppppuStack_224;
  undefined4 ****ppppuStack_220;
  float fStack_214;
  undefined4 **ppuStack_210;
  float fStack_200;
  float fStack_1fc;
  undefined4 *puStack_1e4;
  undefined4 *puStack_1e0;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1a8;
  float fStack_1a4;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  float fStack_194;
  undefined4 *puStack_190;
  undefined4 *puStack_18c;
  undefined4 uStack_188;
  float fStack_184;
  undefined4 *puStack_180;
  float fStack_17c;
  float fStack_178;
  undefined4 *puStack_174;
  float fStack_170;
  float fStack_16c;
  undefined4 uStack_168;
  float *pfStack_164;
  undefined4 *puStack_160;
  float fStack_15c;
  undefined4 *puStack_158;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  float fStack_13c;
  float *pfStack_134;
  undefined4 *puStack_130;
  int iStack_12c;
  undefined4 *puStack_128;
  undefined4 *puStack_124;
  float fStack_120;
  undefined4 *puStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float *pfStack_104;
  undefined4 uStack_100;
  undefined4 *puStack_fc;
  float fStack_f8;
  undefined4 uStack_dc;
  undefined4 *puStack_d8;
  undefined4 *puStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  undefined4 *puStack_a8;
  undefined4 uStack_a4;
  float fStack_a0;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float *pfStack_74;
  float *pfStack_70;
  undefined4 *puStack_6c;
  int iStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  undefined4 *puStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  float fStack_10;
  
  pppuStack_41c = (undefined4 ***)0x53789d;
  piVar5 = (int *)FUN_0050ec40(drawContext,0,0);
  uVar7 = 0xffffffff;
  (**(code **)(*piVar5 + 4))();
  iVar3 = *(int *)((int)this + stateWords[1] * 4 + 0x10);
  pfStack_434 = (float *)iVar3;
  pppuStack_428 = (undefined4 ***)iVar3;
  pppuStack_41c = (undefined4 ***)iVar3;
                    /* Analyst: unsigned component-minus1 switch: only1/3/4/6 paint;0/2/5
                       intentionally return, despite caller ordering all7 components. */
  switch(stateWords[1]) {
  case 1:
  case 3:
  case 6:
    if (iVar3 != 0) {
      uVar4 = *stateWords;
      puStack_18c = (float *)0x0;
                    /* Analyst: low3 state switch0/1/2/3 -> frame1/4(or3/4 if bit8)/0/1/2/3/4;
                       unknown state keeps initial0. */
      switch(uVar4 & 7) {
      case 0:
        puStack_18c = DAT_0106f8c8;
        if ((uVar4 & 8) == 0) break;
      case 3:
        puStack_18c = DAT_0103fd64;
        break;
      case 1:
        puStack_18c = (float *)0x0;
        break;
      case 2:
        puStack_18c = _DAT_00f9b5b4;
      }
      if (stateWords[1] != 3) {
        fStack_14 = (float)puStack_18c + (float)DAT_0106f8c8;
        pfStack_420 = bounds;
        uStack_18 = 0;
        fStack_10 = FLOAT_00f998f8;
        pfStack_424 = (float *)0x5381a9;
        puStack_1c = puStack_18c;
        (**(code **)(*piVar5 + 0x50))();
        return;
      }
      if ((char)uVar4 < '\0') {
                    /* Analyst: CDQ; AND EDX,3; ADD EAX,EDX; SAR EAX,2 implements signed int quarter
                       toward zero, not float divide. No short-destination cap clamp in this native
                       draw branch. */
        fStack_184 = (float)puStack_18c + (float)DAT_0106f8c8;
        puStack_180 = DAT_0106f8c8;
        puStack_174 = (undefined4 *)bounds[2];
                    /* Analyst: convert signed integer quarter to binary32 only after integer
                       division; preserve operation sequence and first/end/middle submission
                       ordering. */
        fStack_17c = *bounds;
        pfStack_420 = &fStack_17c;
        fStack_178 = bounds[1];
        fStack_170 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U))
                            >> 2) + fStack_178;
        uStack_188 = 0;
        pfStack_424 = (float *)0x537e2c;
        (**(code **)(*piVar5 + 0x50))();
        pfStack_164 = DAT_0103fd64;
        fStack_15c = FLOAT_00f998f8;
        fStack_148 = *bounds;
        pfStack_424 = (float *)&uStack_168;
        fStack_13c = bounds[3];
        fStack_144 = fStack_13c -
                     (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U))
                            >> 2);
        fStack_140 = bounds[2];
        ppuStack_42c = (undefined4 **)&fStack_148;
        ppfStack_430 = (float **)0x537ecf;
        uStack_168 = uVar7;
        (**(code **)(*piVar5 + 0x50))();
        pfStack_134 = pfStack_420;
        puStack_130 = DAT_0106f8c8;
        iStack_12c = (int)pppuStack_41c;
        puStack_128 = DAT_0103fd64;
        fStack_114 = *bounds;
        fStack_108 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U))
                            >> 2);
        fStack_110 = fStack_108 + bounds[1];
        fStack_10c = bounds[2];
        ppfStack_430 = &pfStack_134;
        pfStack_438 = &fStack_114;
        fStack_108 = bounds[3] - fStack_108;
        pfStack_43c = (float *)0x537f77;
        (**(code **)(*piVar5 + 0x50))();
        return;
      }
      fStack_d0 = (float)puStack_18c + (float)DAT_0106f8c8;
      puStack_d4 = DAT_0106f8c8;
      fStack_b8 = bounds[1];
      fStack_bc = *bounds;
      fStack_b4 = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         ) + fStack_bc;
      pfStack_420 = &fStack_bc;
      fStack_b0 = bounds[3];
      uStack_dc = 0;
      pfStack_424 = (float *)0x53800e;
      puStack_d8 = puStack_18c;
      (**(code **)(*piVar5 + 0x50))();
      puStack_a8 = DAT_0103fd64;
      fStack_a0 = FLOAT_00f998f8;
      pfStack_424 = (float *)&puStack_a8;
      fStack_80 = bounds[2];
      ppuStack_42c = (undefined4 **)&fStack_88;
      fStack_88 = fStack_80 -
                  (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         );
      fStack_84 = bounds[1];
      fStack_7c = bounds[3];
      ppfStack_430 = (float **)0x5380b2;
      uStack_a4 = uVar7;
      (**(code **)(*piVar5 + 0x50))();
      pfStack_74 = DAT_0106f8c8;
      pfStack_70 = pfStack_420;
      puStack_6c = DAT_0103fd64;
      iStack_68 = (int)pppuStack_41c;
      fStack_4c = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         );
      fStack_54 = fStack_4c + *bounds;
      fStack_50 = bounds[1];
      ppfStack_430 = &pfStack_74;
      fStack_4c = bounds[2] - fStack_4c;
      fStack_48 = bounds[3];
      pfStack_438 = &fStack_54;
      pfStack_43c = (float *)0x53815a;
      (**(code **)(*piVar5 + 0x50))();
      return;
    }
                    /* Analyst: missing1/3/6 image enters original state-dependent bevel/arrow
                       fallback; full ASM defines vertices/colors and no texture is required. */
    if ((*stateWords & 7) == 3) {
      pppuStack_41c = (undefined4 ***)0x5381d4;
      (**(code **)(*piVar5 + 4))();
      pppuStack_41c = &ppuStack_3d8;
      fStack_3d4 = bounds[3] - FLOAT_00f998f8;
      pfStack_420 = &fStack_200;
      pfStack_424 = &fStack_3c8;
      pppuStack_428 = &pppuStack_250;
      ppuStack_3d8 = (undefined4 **)(*bounds + FLOAT_00f998f8);
      fStack_3c8 = bounds[2] - FLOAT_00f998f8;
      fStack_3c4 = bounds[1] + FLOAT_00f998f8;
      ppuStack_42c = (undefined4 **)0x538261;
      pppuStack_250 = (undefined4 ***)ppuStack_3d8;
      fStack_24c = fStack_3c4;
      fStack_200 = fStack_3c8;
      fStack_1fc = fStack_3d4;
      (**(code **)(*piVar5 + 0x3c))();
      ppuStack_42c = (undefined4 ***)0xff716f64;
      ppfStack_430 = (float **)0x53826f;
      (**(code **)(*piVar5 + 4))();
      pppuStack_3b8 = (undefined4 ***)bounds[1];
      pfStack_3cc = (float *)*bounds;
      ppfStack_430 = &pfStack_3cc;
      pfStack_434 = (float *)&puStack_1e4;
      pfStack_438 = &fStack_3bc;
      pfStack_43c = (float *)&puStack_254;
      fStack_3c8 = (float)pppuStack_3b8 + FLOAT_00f998f8;
      fStack_3bc = bounds[2] - FLOAT_00f998f8;
      pfStack_440 = (float *)0x5382f5;
      puStack_254 = pfStack_3cc;
      pppuStack_250 = pppuStack_3b8;
      puStack_1e4 = (undefined4 *)fStack_3bc;
      puStack_1e0 = (undefined4 *)fStack_3c8;
      (**(code **)(*piVar5 + 0x3c))();
      fStack_3bc = *bounds;
      pppuStack_3b8 = (undefined4 ***)(bounds[3] - FLOAT_00f998f8);
      fStack_3ac = fStack_3bc + FLOAT_00f998f8;
      ppuStack_3a8 = (undefined4 **)(bounds[1] + FLOAT_00f998f8);
      pfStack_440 = &fStack_3bc;
      pfStack_444 = &fStack_214;
      pfStack_448 = &fStack_3ac;
      pfStack_44c = (float *)&puStack_254;
      pfStack_450 = (float *)0x53838b;
      puStack_254 = (undefined4 *)fStack_3bc;
      pppuStack_250 = (undefined4 ***)ppuStack_3a8;
      fStack_214 = fStack_3ac;
      ppuStack_210 = pppuStack_3b8;
      (**(code **)(*piVar5 + 0x3c))();
      pfStack_39c = (float *)bounds[2];
      pfStack_450 = &fStack_3ac;
      pfStack_454 = (float *)&puStack_1e4;
      pppuStack_458 = (undefined4 ***)&pfStack_39c;
      ppuStack_3a8 = (undefined4 **)(bounds[3] - FLOAT_00f998f8);
      ppuStack_45c = &puStack_254;
      fStack_3ac = (float)pfStack_39c - FLOAT_00f998f8;
      ppppuStack_398 = (undefined4 ****)bounds[1];
      ppfStack_460 = (float **)0x53841e;
      puStack_254 = (undefined4 *)fStack_3ac;
      pppuStack_250 = ppppuStack_398;
      puStack_1e4 = pfStack_39c;
      puStack_1e0 = ppuStack_3a8;
      (**(code **)(*piVar5 + 0x3c))();
      ppppuStack_398 = (undefined4 ****)bounds[3];
      pfStack_39c = (float *)*bounds;
      ppppuStack_38c = (undefined4 ****)bounds[2];
      ppfStack_460 = &pfStack_39c;
      ppppuStack_464 = &ppppuStack_224;
      ppppuStack_468 = &ppppuStack_38c;
      pfStack_46c = (float *)&puStack_254;
      pppuStack_388 = (undefined4 ***)((float)ppppuStack_398 - FLOAT_00f998f8);
      puStack_254 = pfStack_39c;
      pppuStack_250 = pppuStack_388;
      ppppuStack_224 = ppppuStack_38c;
      ppppuStack_220 = ppppuStack_398;
      (**(code **)(*piVar5 + 0x3c))();
    }
    else {
      pppuStack_41c = (undefined4 ***)0x5384c2;
      (**(code **)(*piVar5 + 4))();
      pppuStack_41c = &pppuStack_338;
      pfStack_420 = &fStack_1c0;
      fStack_334 = bounds[3] - DAT_0103fd88;
      pfStack_424 = &fStack_328;
      pppuStack_428 = &ppuStack_260;
      pppuStack_338 = (undefined4 ***)(*bounds + DAT_0103fd88);
      fStack_328 = bounds[2] - DAT_0103fd88;
      fStack_324 = bounds[1] + DAT_0103fd88;
      ppuStack_42c = (undefined4 **)0x538561;
      ppuStack_260 = pppuStack_338;
      puStack_25c = (undefined4 *)fStack_324;
      fStack_1c0 = fStack_328;
      fStack_1bc = fStack_334;
      (**(code **)(*piVar5 + 0x3c))();
      ppuStack_42c = (undefined4 **)0xfff1efe2;
      ppfStack_430 = (float **)0x53856f;
      (**(code **)(*piVar5 + 4))();
      fStack_318 = bounds[1];
      pfStack_32c = (float *)*bounds;
      ppfStack_430 = &pfStack_32c;
      pfStack_434 = &fStack_26c;
      pfStack_438 = &fStack_31c;
      pfStack_43c = (float *)&puStack_25c;
      fStack_328 = fStack_318 + FLOAT_00f998f8;
      fStack_31c = bounds[2] - FLOAT_00f998f8;
      pfStack_440 = (float *)0x538601;
      fStack_26c = fStack_31c;
      fStack_268 = fStack_328;
      puStack_25c = pfStack_32c;
      fStack_258 = fStack_318;
      (**(code **)(*piVar5 + 0x3c))();
      fStack_31c = *bounds;
      fStack_318 = bounds[3] - FLOAT_00f998f8;
      fStack_30c = fStack_31c + FLOAT_00f998f8;
      pfStack_440 = &fStack_31c;
      pfStack_444 = (float *)&puStack_25c;
      pfStack_448 = &fStack_30c;
      pfStack_44c = &fStack_24c;
      pppuStack_308 = (undefined4 ***)(bounds[1] + FLOAT_00f998f8);
      pfStack_450 = (float *)0x538697;
      puStack_25c = (undefined4 *)fStack_30c;
      fStack_258 = fStack_318;
      fStack_24c = fStack_31c;
      ppuStack_248 = pppuStack_308;
      (**(code **)(*piVar5 + 0x3c))();
      pfStack_450 = (float *)0xffffffff;
      pfStack_454 = (float *)0x5386a2;
      (**(code **)(*piVar5 + 4))();
      pfStack_454 = &fStack_310;
      pppuStack_458 = &pppuStack_250;
      ppuStack_45c = &ppuStack_300;
      ppfStack_460 = (float **)&puStack_240;
      fStack_310 = *bounds + FLOAT_00f998f8;
      fStack_30c = bounds[1] + DAT_0103fd88;
      ppuStack_300 = (undefined4 **)(bounds[2] - DAT_0103fd88);
      fStack_2fc = bounds[1] + FLOAT_00f998f8;
      ppppuStack_464 = (undefined4 ****)0x538744;
      pppuStack_250 = (undefined4 ***)ppuStack_300;
      fStack_24c = fStack_30c;
      puStack_240 = (undefined4 *)fStack_310;
      fStack_23c = fStack_2fc;
      (**(code **)(*piVar5 + 0x3c))();
      ppppuStack_464 = (undefined4 ****)&ppuStack_300;
      ppuStack_300 = (undefined4 **)(*bounds + FLOAT_00f998f8);
      ppppuStack_468 = (undefined4 ****)&puStack_240;
      fStack_2f0 = *bounds + DAT_0103fd88;
      pfStack_46c = &fStack_2f0;
      fStack_2fc = bounds[3] - DAT_0103fd88;
      fStack_2ec = bounds[1] + DAT_0103fd88;
      puStack_240 = (undefined4 *)fStack_2f0;
      fStack_23c = fStack_2fc;
      puStack_230 = ppuStack_300;
      fStack_22c = fStack_2ec;
      (**(code **)(*piVar5 + 0x3c))(&puStack_230);
      (**(code **)(*piVar5 + 4))(0xff716f64);
      fStack_2e4 = bounds[2];
      fStack_2f0 = bounds[3] - FLOAT_00f998f8;
      pppuStack_2f4 = (undefined4 ***)(fStack_2e4 - FLOAT_00f998f8);
      fStack_2e0 = bounds[1];
      fStack_234 = fStack_2e4;
      puStack_230 = (undefined4 *)fStack_2f0;
      ppppuStack_224 = (undefined4 ****)pppuStack_2f4;
      ppppuStack_220 = (undefined4 ****)fStack_2e0;
      (**(code **)(*piVar5 + 0x3c))(&ppppuStack_224,&fStack_2e4,&fStack_234,&pppuStack_2f4);
      ppppuStack_468 = (undefined4 ****)bounds[3];
      pfStack_46c = (float *)*bounds;
      ppppuStack_464 = (undefined4 ****)bounds[2];
      ppfStack_460 = (float **)((float)ppppuStack_468 - FLOAT_00f998f8);
      ppuStack_45c = (undefined4 **)pfStack_46c;
      pppuStack_458 = (undefined4 ***)ppfStack_460;
      ppppuStack_224 = ppppuStack_464;
      ppppuStack_220 = ppppuStack_468;
      (**(code **)(*piVar5 + 0x3c))(&ppuStack_45c,&ppppuStack_464,&ppppuStack_224,&pfStack_46c);
      (**(code **)(*piVar5 + 4))(0xffaca899);
      ppfStack_460 = (float **)(bounds[2] - DAT_0103fd88);
      ppuStack_45c = (undefined4 **)(bounds[3] - DAT_0103fd88);
      pfStack_450 = (float *)(bounds[2] - FLOAT_00f998f8);
      pfStack_43c = (float *)(bounds[1] + FLOAT_00f998f8);
      pfStack_44c = (float *)ppuStack_45c;
      pfStack_440 = pfStack_450;
      ppfStack_430 = ppfStack_460;
      ppuStack_42c = (undefined4 **)pfStack_43c;
      (**(code **)(*piVar5 + 0x3c))(&ppfStack_430,&pfStack_440,&pfStack_450,&ppfStack_460);
      fStack_3fc = bounds[3] - DAT_0103fd88;
      ppfStack_430 = (float **)(*bounds + FLOAT_00f998f8);
      ppuStack_42c = (undefined4 **)(bounds[3] - FLOAT_00f998f8);
      pfStack_420 = (float *)(bounds[2] - FLOAT_00f998f8);
      pppuStack_41c = (undefined4 ***)ppuStack_42c;
      ppfStack_400 = ppfStack_430;
      (**(code **)(*piVar5 + 0x3c))(&ppfStack_400,&stack0xfffffbf0,&pfStack_420,&ppfStack_430);
    }
    if ((stateWords[1] == 1) || (stateWords[1] == 6)) {
      (**(code **)(*piVar5 + 4))(0xff000000);
      ppuStack_45c = (undefined4 **)bounds[1];
      fVar1 = *bounds;
      fVar6 = (bounds[2] - fVar1) * DAT_00fbc93c;
      fStack_354 = (bounds[3] - (float)ppuStack_45c) * DAT_00fbc93c;
      fStack_2d8 = 0.0;
      if (ppfStack_460 == (float **)0x3) {
        fStack_2d8 = FLOAT_00f998f8;
      }
      if (stateWords[1] == 1) {
        if ((*stateWords & 0x80) != 0) {
          ppppuStack_464 = (undefined4 ****)(fVar1 + fStack_2d8 + fVar6);
          fStack_394 = (float)ppuStack_45c + fStack_2d8 + fStack_354;
          fStack_3b4 = (bounds[3] - fStack_354) + fStack_2d8;
          ppuStack_3a8 = (undefined4 **)((bounds[2] - fVar6) + fStack_2d8);
          ppppuStack_398 =
               (undefined4 ****)((bounds[2] - fVar1) * (float)_DAT_00f9b5b4 + fVar1 + fStack_2d8);
          pppuStack_3b8 = ppppuStack_464;
          fStack_3a4 = fStack_3b4;
          pppuStack_388 = ppppuStack_464;
          fStack_384 = fStack_3b4;
          (**(code **)(*piVar5 + 0x3c))(&pppuStack_388,&ppppuStack_398,&ppuStack_3a8,&pppuStack_3b8)
          ;
          return;
        }
        fVar2 = bounds[1];
        ppppuStack_464 = (undefined4 ****)(fVar1 + fStack_2d8 + fVar6);
        fStack_368 = (bounds[2] - fVar6) + fStack_2d8;
        fStack_374 = (bounds[3] - fVar2) * (float)_DAT_00f9b5b4 + fVar2 + fStack_2d8;
        fStack_364 = (bounds[3] - fStack_354) + fStack_2d8;
        fStack_354 = fVar2 + fStack_2d8 + fStack_354;
        pppuStack_378 = ppppuStack_464;
        fStack_358 = fStack_368;
        pppuStack_348 = ppppuStack_464;
        fStack_344 = fStack_374;
        (**(code **)(*piVar5 + 0x3c))(&pppuStack_348,&fStack_358,&fStack_368,&pppuStack_378);
        return;
      }
      if ((*stateWords & 0x80) != 0) {
        ppuStack_45c = (undefined4 **)bounds[2];
        ppppuStack_464 = (undefined4 ****)(fVar1 + fStack_2d8 + fVar6);
        fStack_318 = ((float)ppuStack_45c - fVar6) + fStack_2d8;
        fStack_334 = fStack_2d8 + fStack_354 + bounds[1];
        fStack_328 = ((float)ppuStack_45c - fVar1) * (float)_DAT_00f9b5b4 + fVar1 + fStack_2d8;
        fStack_324 = (bounds[3] - fStack_354) + fStack_2d8;
        pppuStack_338 = ppppuStack_464;
        fStack_314 = fStack_334;
        pppuStack_308 = ppppuStack_464;
        fStack_304 = fStack_334;
        (**(code **)(*piVar5 + 0x3c))(&pppuStack_308,&fStack_318,&fStack_328,&pppuStack_338);
        return;
      }
      ppppuStack_464 = (undefined4 ****)(fVar1 + fStack_2d8 + fVar6);
      pppuStack_2f4 = (undefined4 ***)(fStack_2d8 + fStack_354 + bounds[1]);
      fStack_2e4 = (bounds[3] - fStack_354) + fStack_2d8;
      fStack_2d4 = (bounds[3] - bounds[1]) * (float)_DAT_00f9b5b4 + fStack_2d8 + bounds[1];
      fStack_2d8 = (bounds[2] - fVar6) + fStack_2d8;
      pppuStack_2f8 = ppppuStack_464;
      pppuStack_2e8 = ppppuStack_464;
      pppuStack_2c8 = ppppuStack_464;
      ppuStack_2c4 = pppuStack_2f4;
      (**(code **)(*piVar5 + 0x3c))(&pppuStack_2c8,&fStack_2d8,&pppuStack_2e8,&pppuStack_2f8);
    }
    break;
  case 4:
    if (iVar3 == 0) {
                    /* Analyst: missing component4 image uses FFACA899 native fill fallback, not
                       skip. */
      pppuStack_41c = (undefined4 ***)0x537ca9;
      (**(code **)(*piVar5 + 4))();
      fStack_274 = bounds[3];
      fStack_278 = *bounds;
      fStack_3e8 = bounds[2];
      pppuStack_41c = (undefined4 ***)&fStack_278;
      pfStack_420 = &fStack_268;
      fStack_3e4 = bounds[1];
      pfStack_424 = &fStack_3e8;
      pppuStack_428 = (undefined4 ***)&fStack_1a8;
      ppuStack_42c = (undefined4 **)0x537d27;
      fStack_268 = fStack_3e8;
      fStack_264 = fStack_274;
      fStack_1a8 = fStack_278;
      fStack_1a4 = fStack_3e4;
      (**(code **)(*piVar5 + 0x3c))();
      return;
    }
    if ((*stateWords & 0x80) != 0) {
      fStack_c4 = bounds[2];
      uStack_19c = 0;
      uStack_198 = 0;
      fStack_194 = FLOAT_00f998f8;
      puStack_190 = DAT_0106f8c8;
      fStack_cc = *bounds;
      fStack_c8 = bounds[1];
      pfStack_420 = &fStack_cc;
      fStack_c0 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U)) >> 2
                         ) + fStack_c8;
      pfStack_424 = (float *)0x537972;
      (**(code **)(*piVar5 + 0x50))();
      fStack_178 = 0.0;
      puStack_174 = DAT_0103fd64;
      fStack_170 = FLOAT_00f998f8;
      fStack_16c = FLOAT_00f998f8;
      fStack_78 = *bounds;
      pfStack_424 = &fStack_178;
      puStack_6c = (undefined4 *)bounds[3];
      ppuStack_42c = (undefined4 **)&fStack_78;
      pfStack_74 = (float *)((float)puStack_6c -
                            (float)((int)(*(int *)(iVar3 + 0x20) +
                                         (*(int *)(iVar3 + 0x20) >> 0x1f & 3U)) >> 2));
      pfStack_70 = (float *)bounds[2];
      ppfStack_430 = (float **)0x537a0c;
      (**(code **)(*piVar5 + 0x50))();
      pfStack_164 = (float *)0x0;
      puStack_160 = DAT_0106f8c8;
      fStack_15c = FLOAT_00f998f8;
      puStack_158 = DAT_0103fd64;
      fStack_c4 = *bounds;
      fStack_b8 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U)) >> 2
                         );
      fStack_c0 = fStack_b8 + bounds[1];
      fStack_bc = bounds[2];
      ppfStack_430 = &pfStack_164;
      pfStack_438 = &fStack_c4;
      fStack_b8 = bounds[3] - fStack_b8;
      pfStack_43c = (float *)0x537ab3;
      (**(code **)(*piVar5 + 0x50))();
      return;
    }
    fStack_28 = bounds[1];
    iStack_12c = 0;
    puStack_128 = (undefined4 *)0x0;
    puStack_124 = DAT_0106f8c8;
    fStack_120 = FLOAT_00f998f8;
    fStack_2c = *bounds;
    pfStack_420 = &fStack_2c;
    fStack_24 = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2)
                + fStack_2c;
    fStack_20 = bounds[3];
    pfStack_424 = (float *)0x537b50;
    (**(code **)(*piVar5 + 0x50))();
    puStack_118 = DAT_0103fd64;
    fStack_114 = 0.0;
    pfStack_424 = (float *)&puStack_118;
    fStack_110 = FLOAT_00f998f8;
    fStack_10c = FLOAT_00f998f8;
    fStack_90 = bounds[2];
    fStack_98 = fStack_90 -
                (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2);
    fStack_94 = bounds[1];
    ppuStack_42c = (undefined4 **)&fStack_98;
    fStack_8c = bounds[3];
    ppfStack_430 = (float **)0x537beb;
    (**(code **)(*piVar5 + 0x50))();
    pfStack_104 = DAT_0106f8c8;
    uStack_100 = 0;
    puStack_fc = DAT_0103fd64;
    fStack_f8 = FLOAT_00f998f8;
    fStack_5c = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2);
    fStack_64 = fStack_5c + *bounds;
    fStack_60 = bounds[1];
    fStack_5c = bounds[2] - fStack_5c;
    fStack_58 = bounds[3];
    ppfStack_430 = &pfStack_104;
    pfStack_438 = &fStack_64;
    pfStack_43c = (float *)0x537c92;
    (**(code **)(*piVar5 + 0x50))();
    return;
  }
  return;
}

