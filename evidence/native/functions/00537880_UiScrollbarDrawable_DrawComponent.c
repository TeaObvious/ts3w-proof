/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
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
  undefined4 **ppuStack_46c;
  undefined4 *****pppppuStack_468;
  undefined4 *****pppppuStack_464;
  float **ppfStack_460;
  undefined4 ***pppuStack_45c;
  undefined4 ****ppppuStack_458;
  undefined4 **ppuStack_454;
  float *pfStack_450;
  undefined4 **ppuStack_44c;
  float *pfStack_448;
  undefined4 **ppuStack_444;
  float *pfStack_440;
  undefined4 **ppuStack_43c;
  float *pfStack_438;
  undefined4 **ppuStack_434;
  float **ppfStack_430;
  undefined4 ***pppuStack_42c;
  undefined4 ****ppppuStack_428;
  float *pfStack_424;
  float *pfStack_420;
  undefined4 ****ppppuStack_41c;
  undefined4 uVar7;
  float **ppfStack_400;
  float fStack_3fc;
  float fStack_3e8;
  float fStack_3e4;
  undefined4 ***pppuStack_3d8;
  float fStack_3d4;
  float *pfStack_3cc;
  float fStack_3c8;
  float fStack_3c4;
  undefined4 *puStack_3bc;
  undefined4 ****ppppuStack_3b8;
  float fStack_3b4;
  undefined4 *puStack_3ac;
  undefined4 ***pppuStack_3a8;
  float fStack_3a4;
  float *pfStack_39c;
  undefined4 *****pppppuStack_398;
  float fStack_394;
  undefined4 *****pppppuStack_38c;
  undefined4 ****ppppuStack_388;
  float fStack_384;
  undefined4 ****ppppuStack_378;
  float fStack_374;
  float fStack_368;
  float fStack_364;
  float fStack_358;
  float fStack_354;
  undefined4 ****ppppuStack_348;
  float fStack_344;
  undefined4 ****ppppuStack_338;
  float fStack_334;
  float *pfStack_32c;
  float fStack_328;
  undefined4 *puStack_324;
  undefined4 *puStack_31c;
  float fStack_318;
  float fStack_314;
  undefined4 *puStack_310;
  undefined4 *puStack_30c;
  undefined4 ****ppppuStack_308;
  float fStack_304;
  undefined4 ***pppuStack_300;
  float fStack_2fc;
  undefined4 ****ppppuStack_2f8;
  undefined4 ****ppppuStack_2f4;
  undefined4 *puStack_2f0;
  float fStack_2ec;
  undefined4 ****ppppuStack_2e8;
  float fStack_2e4;
  float fStack_2e0;
  float fStack_2d8;
  float fStack_2d4;
  undefined4 ****ppppuStack_2c8;
  undefined4 ***pppuStack_2c4;
  float fStack_278;
  float fStack_274;
  undefined4 *puStack_26c;
  float fStack_268;
  float fStack_264;
  undefined4 ***pppuStack_260;
  float *pfStack_25c;
  float fStack_258;
  float *pfStack_254;
  undefined4 ****ppppuStack_250;
  float fStack_24c;
  undefined4 ***pppuStack_248;
  float *pfStack_240;
  float fStack_23c;
  float fStack_234;
  undefined4 **ppuStack_230;
  float fStack_22c;
  undefined4 *****pppppuStack_224;
  undefined4 *****pppppuStack_220;
  undefined4 *puStack_214;
  undefined4 ***pppuStack_210;
  float fStack_200;
  float fStack_1fc;
  float *pfStack_1e4;
  undefined4 **ppuStack_1e0;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1a8;
  float fStack_1a4;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  float fStack_194;
  undefined4 uStack_190;
  float fStack_18c;
  undefined4 uStack_188;
  float fStack_184;
  undefined4 uStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float fStack_170;
  float fStack_16c;
  undefined4 uStack_168;
  float *pfStack_164;
  undefined4 uStack_160;
  float fStack_15c;
  undefined4 uStack_158;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  float fStack_13c;
  float *pfStack_134;
  undefined4 uStack_130;
  int iStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  float fStack_120;
  undefined4 uStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float *pfStack_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  float fStack_f8;
  undefined4 uStack_dc;
  float fStack_d8;
  undefined4 uStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  undefined4 uStack_a8;
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
  float fStack_6c;
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
  float fStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  float fStack_10;
  
  ppppuStack_41c = (undefined4 ****)0x53789d;
  piVar5 = (int *)UiDrawContext_SelectRenderer(drawContext,0,0);
  uVar7 = 0xffffffff;
  (**(code **)(*piVar5 + 4))();
  iVar3 = *(int *)((int)this + stateWords[1] * 4 + 0x10);
  ppuStack_434 = (undefined4 **)iVar3;
  ppppuStack_428 = (undefined4 ****)iVar3;
  ppppuStack_41c = (undefined4 ****)iVar3;
                    /* Analyst: unsigned component-minus1 switch: only1/3/4/6 paint;0/2/5
                       intentionally return, despite caller ordering all7 components. */
  switch(stateWords[1]) {
  case 1:
  case 3:
  case 6:
    if (iVar3 != 0) {
      uVar4 = *stateWords;
      fStack_18c = 0.0;
                    /* Analyst: low3 state switch0/1/2/3 -> frame1/4(or3/4 if bit8)/0/1/2/3/4;
                       unknown state keeps initial0. */
      switch(uVar4 & 7) {
      case 0:
        if ((uVar4 & 8) == 0) {
          fStack_18c = 0.25;
          break;
        }
      case 3:
        fStack_18c = 0.75;
        break;
      case 1:
        fStack_18c = 0.0;
        break;
      case 2:
        fStack_18c = 0.5;
      }
      if (stateWords[1] != 3) {
        fStack_14 = fStack_18c + 0.25;
        pfStack_420 = bounds;
        uStack_18 = 0;
        fStack_10 = 1.0;
        pfStack_424 = (float *)0x5381a9;
        fStack_1c = fStack_18c;
        (**(code **)(*piVar5 + 0x50))();
        return;
      }
      if ((char)uVar4 < '\0') {
                    /* Analyst: CDQ; AND EDX,3; ADD EAX,EDX; SAR EAX,2 implements signed int quarter
                       toward zero, not float divide. No short-destination cap clamp in this native
                       draw branch. */
        fStack_184 = fStack_18c + 0.25;
        uStack_180 = 0x3e800000;
        fStack_174 = bounds[2];
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
        pfStack_164 = (float *)0x3f400000;
        fStack_15c = 1.0;
        fStack_148 = *bounds;
        pfStack_424 = (float *)&uStack_168;
        fStack_13c = bounds[3];
        fStack_144 = fStack_13c -
                     (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U))
                            >> 2);
        fStack_140 = bounds[2];
        pppuStack_42c = (undefined4 ***)&fStack_148;
        ppfStack_430 = (float **)0x537ecf;
        uStack_168 = uVar7;
        (**(code **)(*piVar5 + 0x50))();
        pfStack_134 = pfStack_420;
        uStack_130 = 0x3e800000;
        iStack_12c = (int)ppppuStack_41c;
        uStack_128 = 0x3f400000;
        fStack_114 = *bounds;
        fStack_108 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U))
                            >> 2);
        fStack_110 = fStack_108 + bounds[1];
        fStack_10c = bounds[2];
        ppfStack_430 = &pfStack_134;
        pfStack_438 = &fStack_114;
        fStack_108 = bounds[3] - fStack_108;
        ppuStack_43c = (undefined4 **)0x537f77;
        (**(code **)(*piVar5 + 0x50))();
        return;
      }
      fStack_d0 = fStack_18c + 0.25;
      uStack_d4 = 0x3e800000;
      fStack_b8 = bounds[1];
      fStack_bc = *bounds;
      fStack_b4 = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         ) + fStack_bc;
      pfStack_420 = &fStack_bc;
      fStack_b0 = bounds[3];
      uStack_dc = 0;
      pfStack_424 = (float *)0x53800e;
      fStack_d8 = fStack_18c;
      (**(code **)(*piVar5 + 0x50))();
      uStack_a8 = 0x3f400000;
      fStack_a0 = 1.0;
      pfStack_424 = (float *)&uStack_a8;
      fStack_80 = bounds[2];
      pppuStack_42c = (undefined4 ***)&fStack_88;
      fStack_88 = fStack_80 -
                  (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         );
      fStack_84 = bounds[1];
      fStack_7c = bounds[3];
      ppfStack_430 = (float **)0x5380b2;
      uStack_a4 = uVar7;
      (**(code **)(*piVar5 + 0x50))();
      pfStack_74 = (float *)0x3e800000;
      pfStack_70 = pfStack_420;
      fStack_6c = 0.75;
      iStack_68 = (int)ppppuStack_41c;
      fStack_4c = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         );
      fStack_54 = fStack_4c + *bounds;
      fStack_50 = bounds[1];
      ppfStack_430 = &pfStack_74;
      fStack_4c = bounds[2] - fStack_4c;
      fStack_48 = bounds[3];
      pfStack_438 = &fStack_54;
      ppuStack_43c = (undefined4 **)0x53815a;
      (**(code **)(*piVar5 + 0x50))();
      return;
    }
                    /* Analyst: missing1/3/6 image enters original state-dependent bevel/arrow
                       fallback; full ASM defines vertices/colors and no texture is required. */
    if ((*stateWords & 7) == 3) {
      ppppuStack_41c = (undefined4 ****)0x5381d4;
      (**(code **)(*piVar5 + 4))();
      ppppuStack_41c = &pppuStack_3d8;
      fStack_3d4 = bounds[3] - 1.0;
      pfStack_420 = &fStack_200;
      pfStack_424 = &fStack_3c8;
      ppppuStack_428 = &ppppuStack_250;
      pppuStack_3d8 = (undefined4 ***)(*bounds + 1.0);
      fStack_3c8 = bounds[2] - 1.0;
      fStack_3c4 = bounds[1] + 1.0;
      pppuStack_42c = (undefined4 ***)0x538261;
      ppppuStack_250 = (undefined4 ****)pppuStack_3d8;
      fStack_24c = fStack_3c4;
      fStack_200 = fStack_3c8;
      fStack_1fc = fStack_3d4;
      (**(code **)(*piVar5 + 0x3c))();
      pppuStack_42c = (undefined4 ***)0xff716f64;
      ppfStack_430 = (float **)0x53826f;
      (**(code **)(*piVar5 + 4))();
      ppppuStack_3b8 = (undefined4 ****)bounds[1];
      pfStack_3cc = (float *)*bounds;
      ppfStack_430 = &pfStack_3cc;
      ppuStack_434 = &pfStack_1e4;
      pfStack_438 = (float *)&puStack_3bc;
      ppuStack_43c = &pfStack_254;
      fStack_3c8 = (float)ppppuStack_3b8 + 1.0;
      puStack_3bc = (undefined4 *)(bounds[2] - 1.0);
      pfStack_440 = (float *)0x5382f5;
      pfStack_254 = pfStack_3cc;
      ppppuStack_250 = ppppuStack_3b8;
      pfStack_1e4 = (float *)puStack_3bc;
      ppuStack_1e0 = (undefined4 **)fStack_3c8;
      (**(code **)(*piVar5 + 0x3c))();
      puStack_3bc = (undefined4 *)*bounds;
      ppppuStack_3b8 = (undefined4 ****)(bounds[3] - 1.0);
      puStack_3ac = (undefined4 *)((float)puStack_3bc + 1.0);
      pppuStack_3a8 = (undefined4 ***)(bounds[1] + 1.0);
      pfStack_440 = (float *)&puStack_3bc;
      ppuStack_444 = &puStack_214;
      pfStack_448 = (float *)&puStack_3ac;
      ppuStack_44c = &pfStack_254;
      pfStack_450 = (float *)0x53838b;
      pfStack_254 = (float *)puStack_3bc;
      ppppuStack_250 = (undefined4 ****)pppuStack_3a8;
      puStack_214 = puStack_3ac;
      pppuStack_210 = ppppuStack_3b8;
      (**(code **)(*piVar5 + 0x3c))();
      pfStack_39c = (float *)bounds[2];
      pfStack_450 = (float *)&puStack_3ac;
      ppuStack_454 = &pfStack_1e4;
      ppppuStack_458 = (undefined4 ****)&pfStack_39c;
      pppuStack_3a8 = (undefined4 ***)(bounds[3] - 1.0);
      pppuStack_45c = (undefined4 ***)&pfStack_254;
      puStack_3ac = (undefined4 *)((float)pfStack_39c - 1.0);
      pppppuStack_398 = (undefined4 *****)bounds[1];
      ppfStack_460 = (float **)0x53841e;
      pfStack_254 = (float *)puStack_3ac;
      ppppuStack_250 = pppppuStack_398;
      pfStack_1e4 = pfStack_39c;
      ppuStack_1e0 = pppuStack_3a8;
      (**(code **)(*piVar5 + 0x3c))();
      pppppuStack_398 = (undefined4 *****)bounds[3];
      pfStack_39c = (float *)*bounds;
      pppppuStack_38c = (undefined4 *****)bounds[2];
      ppfStack_460 = &pfStack_39c;
      pppppuStack_464 = &pppppuStack_224;
      pppppuStack_468 = &pppppuStack_38c;
      ppuStack_46c = &pfStack_254;
      ppppuStack_388 = (undefined4 ****)((float)pppppuStack_398 - 1.0);
      pfStack_254 = pfStack_39c;
      ppppuStack_250 = ppppuStack_388;
      pppppuStack_224 = pppppuStack_38c;
      pppppuStack_220 = pppppuStack_398;
      (**(code **)(*piVar5 + 0x3c))();
    }
    else {
      ppppuStack_41c = (undefined4 ****)0x5384c2;
      (**(code **)(*piVar5 + 4))();
      ppppuStack_41c = &ppppuStack_338;
      pfStack_420 = &fStack_1c0;
      fStack_334 = bounds[3] - 2.0;
      pfStack_424 = &fStack_328;
      ppppuStack_428 = &pppuStack_260;
      ppppuStack_338 = (undefined4 ****)(*bounds + 2.0);
      fStack_328 = bounds[2] - 2.0;
      puStack_324 = (undefined4 *)(bounds[1] + 2.0);
      pppuStack_42c = (undefined4 ***)0x538561;
      pppuStack_260 = ppppuStack_338;
      pfStack_25c = (float *)puStack_324;
      fStack_1c0 = fStack_328;
      fStack_1bc = fStack_334;
      (**(code **)(*piVar5 + 0x3c))();
      pppuStack_42c = (undefined4 ***)0xfff1efe2;
      ppfStack_430 = (float **)0x53856f;
      (**(code **)(*piVar5 + 4))();
      fStack_318 = bounds[1];
      pfStack_32c = (float *)*bounds;
      ppfStack_430 = &pfStack_32c;
      ppuStack_434 = &puStack_26c;
      pfStack_438 = (float *)&puStack_31c;
      ppuStack_43c = &pfStack_25c;
      fStack_328 = fStack_318 + 1.0;
      puStack_31c = (undefined4 *)(bounds[2] - 1.0);
      pfStack_440 = (float *)0x538601;
      puStack_26c = puStack_31c;
      fStack_268 = fStack_328;
      pfStack_25c = pfStack_32c;
      fStack_258 = fStack_318;
      (**(code **)(*piVar5 + 0x3c))();
      puStack_31c = (undefined4 *)*bounds;
      fStack_318 = bounds[3] - 1.0;
      puStack_30c = (undefined4 *)((float)puStack_31c + 1.0);
      pfStack_440 = (float *)&puStack_31c;
      ppuStack_444 = &pfStack_25c;
      pfStack_448 = (float *)&puStack_30c;
      ppuStack_44c = (undefined4 **)&fStack_24c;
      ppppuStack_308 = (undefined4 ****)(bounds[1] + 1.0);
      pfStack_450 = (float *)0x538697;
      pfStack_25c = (float *)puStack_30c;
      fStack_258 = fStack_318;
      fStack_24c = (float)puStack_31c;
      pppuStack_248 = ppppuStack_308;
      (**(code **)(*piVar5 + 0x3c))();
      pfStack_450 = (float *)0xffffffff;
      ppuStack_454 = (undefined4 **)0x5386a2;
      (**(code **)(*piVar5 + 4))();
      ppuStack_454 = &puStack_310;
      ppppuStack_458 = &ppppuStack_250;
      pppuStack_45c = &pppuStack_300;
      ppfStack_460 = &pfStack_240;
      puStack_310 = (undefined4 *)(*bounds + 1.0);
      puStack_30c = (undefined4 *)(bounds[1] + 2.0);
      pppuStack_300 = (undefined4 ***)(bounds[2] - 2.0);
      fStack_2fc = bounds[1] + 1.0;
      pppppuStack_464 = (undefined4 *****)0x538744;
      ppppuStack_250 = (undefined4 ****)pppuStack_300;
      fStack_24c = (float)puStack_30c;
      pfStack_240 = (float *)puStack_310;
      fStack_23c = fStack_2fc;
      (**(code **)(*piVar5 + 0x3c))();
      pppppuStack_464 = (undefined4 *****)&pppuStack_300;
      pppuStack_300 = (undefined4 ***)(*bounds + 1.0);
      pppppuStack_468 = (undefined4 *****)&pfStack_240;
      puStack_2f0 = (undefined4 *)(*bounds + 2.0);
      ppuStack_46c = &puStack_2f0;
      fStack_2fc = bounds[3] - 2.0;
      fStack_2ec = bounds[1] + 2.0;
      pfStack_240 = (float *)puStack_2f0;
      fStack_23c = fStack_2fc;
      ppuStack_230 = pppuStack_300;
      fStack_22c = fStack_2ec;
      (**(code **)(*piVar5 + 0x3c))(&ppuStack_230);
      (**(code **)(*piVar5 + 4))(0xff716f64);
      fStack_2e4 = bounds[2];
      puStack_2f0 = (undefined4 *)(bounds[3] - 1.0);
      ppppuStack_2f4 = (undefined4 ****)(fStack_2e4 - 1.0);
      fStack_2e0 = bounds[1];
      fStack_234 = fStack_2e4;
      ppuStack_230 = (undefined4 **)puStack_2f0;
      pppppuStack_224 = (undefined4 *****)ppppuStack_2f4;
      pppppuStack_220 = (undefined4 *****)fStack_2e0;
      (**(code **)(*piVar5 + 0x3c))(&pppppuStack_224,&fStack_2e4,&fStack_234,&ppppuStack_2f4);
      pppppuStack_468 = (undefined4 *****)bounds[3];
      ppuStack_46c = (undefined4 **)*bounds;
      pppppuStack_464 = (undefined4 *****)bounds[2];
      ppfStack_460 = (float **)((float)pppppuStack_468 - 1.0);
      pppuStack_45c = (undefined4 ***)ppuStack_46c;
      ppppuStack_458 = (undefined4 ****)ppfStack_460;
      pppppuStack_224 = pppppuStack_464;
      pppppuStack_220 = pppppuStack_468;
      (**(code **)(*piVar5 + 0x3c))(&pppuStack_45c,&pppppuStack_464,&pppppuStack_224,&ppuStack_46c);
      (**(code **)(*piVar5 + 4))(0xffaca899);
      ppfStack_460 = (float **)(bounds[2] - 2.0);
      pppuStack_45c = (undefined4 ***)(bounds[3] - 2.0);
      pfStack_450 = (float *)(bounds[2] - 1.0);
      ppuStack_43c = (undefined4 **)(bounds[1] + 1.0);
      ppuStack_44c = pppuStack_45c;
      pfStack_440 = pfStack_450;
      ppfStack_430 = ppfStack_460;
      pppuStack_42c = (undefined4 ***)ppuStack_43c;
      (**(code **)(*piVar5 + 0x3c))(&ppfStack_430,&pfStack_440,&pfStack_450,&ppfStack_460);
      fStack_3fc = bounds[3] - 2.0;
      ppfStack_430 = (float **)(*bounds + 1.0);
      pppuStack_42c = (undefined4 ***)(bounds[3] - 1.0);
      pfStack_420 = (float *)(bounds[2] - 1.0);
      ppppuStack_41c = (undefined4 ****)pppuStack_42c;
      ppfStack_400 = ppfStack_430;
      (**(code **)(*piVar5 + 0x3c))
                (&ppfStack_400,(int)register0x00000010 + -0x410,&pfStack_420,&ppfStack_430);
    }
    if ((stateWords[1] == 1) || (stateWords[1] == 6)) {
      (**(code **)(*piVar5 + 4))(0xff000000);
      pppuStack_45c = (undefined4 ***)bounds[1];
      fVar1 = *bounds;
      fVar6 = (bounds[2] - fVar1) * 0.2857143;
      fStack_354 = (bounds[3] - (float)pppuStack_45c) * 0.2857143;
      fStack_3b4 = 0.0;
      fStack_368 = 0.0;
      if (ppfStack_460 == (float **)0x3) {
        fStack_3b4 = 1.0;
        fStack_368 = 1.0;
      }
      if (stateWords[1] == 1) {
        if ((*stateWords & 0x80) == 0) {
          fVar2 = bounds[1];
          pppppuStack_464 = (undefined4 *****)(fVar1 + fStack_368 + fVar6);
          fStack_368 = (bounds[2] - fVar6) + fStack_368;
          fStack_374 = (bounds[3] - fVar2) * 0.5 + fVar2 + fStack_3b4;
          fStack_364 = (bounds[3] - fStack_354) + fStack_3b4;
          fStack_354 = fVar2 + fStack_3b4 + fStack_354;
          ppppuStack_378 = pppppuStack_464;
          fStack_358 = fStack_368;
          ppppuStack_348 = pppppuStack_464;
          fStack_344 = fStack_374;
          (**(code **)(*piVar5 + 0x3c))(&ppppuStack_348,&fStack_358,&fStack_368,&ppppuStack_378);
          return;
        }
        pppppuStack_464 = (undefined4 *****)(fVar1 + fStack_368 + fVar6);
        fStack_394 = (float)pppuStack_45c + fStack_3b4 + fStack_354;
        fStack_3b4 = (bounds[3] - fStack_354) + fStack_3b4;
        pppuStack_3a8 = (undefined4 ***)((bounds[2] - fVar6) + fStack_368);
        pppppuStack_398 = (undefined4 *****)((bounds[2] - fVar1) * 0.5 + fVar1 + fStack_368);
        ppppuStack_3b8 = pppppuStack_464;
        fStack_3a4 = fStack_3b4;
        ppppuStack_388 = pppppuStack_464;
        fStack_384 = fStack_3b4;
        (**(code **)(*piVar5 + 0x3c))
                  (&ppppuStack_388,&pppppuStack_398,&pppuStack_3a8,&ppppuStack_3b8);
        return;
      }
      if ((*stateWords & 0x80) != 0) {
        pppuStack_45c = (undefined4 ***)bounds[2];
        pppppuStack_464 = (undefined4 *****)(fVar1 + fStack_368 + fVar6);
        fStack_318 = ((float)pppuStack_45c - fVar6) + fStack_368;
        fStack_334 = fStack_3b4 + fStack_354 + bounds[1];
        fStack_328 = ((float)pppuStack_45c - fVar1) * 0.5 + fVar1 + fStack_368;
        puStack_324 = (undefined4 *)((bounds[3] - fStack_354) + fStack_3b4);
        ppppuStack_338 = pppppuStack_464;
        fStack_314 = fStack_334;
        ppppuStack_308 = pppppuStack_464;
        fStack_304 = fStack_334;
        (**(code **)(*piVar5 + 0x3c))(&ppppuStack_308,&fStack_318,&fStack_328,&ppppuStack_338);
        return;
      }
      pppppuStack_464 = (undefined4 *****)(fVar1 + fStack_368 + fVar6);
      ppppuStack_2f4 = (undefined4 ****)(fStack_3b4 + fStack_354 + bounds[1]);
      fStack_2e4 = (bounds[3] - fStack_354) + fStack_3b4;
      fStack_2d4 = (bounds[3] - bounds[1]) * 0.5 + fStack_3b4 + bounds[1];
      fStack_2d8 = (bounds[2] - fVar6) + fStack_368;
      ppppuStack_2f8 = pppppuStack_464;
      ppppuStack_2e8 = pppppuStack_464;
      ppppuStack_2c8 = pppppuStack_464;
      pppuStack_2c4 = ppppuStack_2f4;
      (**(code **)(*piVar5 + 0x3c))(&ppppuStack_2c8,&fStack_2d8,&ppppuStack_2e8,&ppppuStack_2f8);
    }
    break;
  case 4:
    if (iVar3 == 0) {
                    /* Analyst: missing component4 image uses FFACA899 native fill fallback, not
                       skip. */
      ppppuStack_41c = (undefined4 ****)0x537ca9;
      (**(code **)(*piVar5 + 4))();
      fStack_274 = bounds[3];
      fStack_278 = *bounds;
      fStack_3e8 = bounds[2];
      ppppuStack_41c = (undefined4 ****)&fStack_278;
      pfStack_420 = &fStack_268;
      fStack_3e4 = bounds[1];
      pfStack_424 = &fStack_3e8;
      ppppuStack_428 = (undefined4 ****)&fStack_1a8;
      pppuStack_42c = (undefined4 ***)0x537d27;
      fStack_268 = fStack_3e8;
      fStack_264 = fStack_274;
      fStack_1a8 = fStack_278;
      fStack_1a4 = fStack_3e4;
      (**(code **)(*piVar5 + 0x3c))();
      return;
    }
    if ((*stateWords & 0x80) == 0) {
      fStack_28 = bounds[1];
      iStack_12c = 0;
      uStack_128 = 0;
      uStack_124 = 0x3e800000;
      fStack_120 = 1.0;
      fStack_2c = *bounds;
      pfStack_420 = &fStack_2c;
      fStack_24 = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         ) + fStack_2c;
      fStack_20 = bounds[3];
      pfStack_424 = (float *)0x537b50;
      (**(code **)(*piVar5 + 0x50))();
      uStack_118 = 0x3f400000;
      fStack_114 = 0.0;
      pfStack_424 = (float *)&uStack_118;
      fStack_110 = 1.0;
      fStack_10c = 1.0;
      fStack_90 = bounds[2];
      fStack_98 = fStack_90 -
                  (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         );
      fStack_94 = bounds[1];
      pppuStack_42c = (undefined4 ***)&fStack_98;
      fStack_8c = bounds[3];
      ppfStack_430 = (float **)0x537beb;
      (**(code **)(*piVar5 + 0x50))();
      pfStack_104 = (float *)0x3e800000;
      uStack_100 = 0;
      uStack_fc = 0x3f400000;
      fStack_f8 = 1.0;
      fStack_5c = (float)((int)(*(int *)(iVar3 + 0x1c) + (*(int *)(iVar3 + 0x1c) >> 0x1f & 3U)) >> 2
                         );
      fStack_64 = fStack_5c + *bounds;
      fStack_60 = bounds[1];
      fStack_5c = bounds[2] - fStack_5c;
      fStack_58 = bounds[3];
      ppfStack_430 = &pfStack_104;
      pfStack_438 = &fStack_64;
      ppuStack_43c = (undefined4 **)0x537c92;
      (**(code **)(*piVar5 + 0x50))();
      return;
    }
    fStack_c4 = bounds[2];
    uStack_19c = 0;
    uStack_198 = 0;
    fStack_194 = 1.0;
    uStack_190 = 0x3e800000;
    fStack_cc = *bounds;
    fStack_c8 = bounds[1];
    pfStack_420 = &fStack_cc;
    fStack_c0 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U)) >> 2)
                + fStack_c8;
    pfStack_424 = (float *)0x537972;
    (**(code **)(*piVar5 + 0x50))();
    fStack_178 = 0.0;
    fStack_174 = 0.75;
    fStack_170 = 1.0;
    fStack_16c = 1.0;
    fStack_78 = *bounds;
    pfStack_424 = &fStack_178;
    fStack_6c = bounds[3];
    pppuStack_42c = (undefined4 ***)&fStack_78;
    pfStack_74 = (float *)(fStack_6c -
                          (float)((int)(*(int *)(iVar3 + 0x20) +
                                       (*(int *)(iVar3 + 0x20) >> 0x1f & 3U)) >> 2));
    pfStack_70 = (float *)bounds[2];
    ppfStack_430 = (float **)0x537a0c;
    (**(code **)(*piVar5 + 0x50))();
    pfStack_164 = (float *)0x0;
    uStack_160 = 0x3e800000;
    fStack_15c = 1.0;
    uStack_158 = 0x3f400000;
    fStack_c4 = *bounds;
    fStack_b8 = (float)((int)(*(int *)(iVar3 + 0x20) + (*(int *)(iVar3 + 0x20) >> 0x1f & 3U)) >> 2);
    fStack_c0 = fStack_b8 + bounds[1];
    fStack_bc = bounds[2];
    ppfStack_430 = &pfStack_164;
    pfStack_438 = &fStack_c4;
    fStack_b8 = bounds[3] - fStack_b8;
    ppuStack_43c = (undefined4 **)0x537ab3;
    (**(code **)(*piVar5 + 0x50))();
    return;
  }
  return;
}

