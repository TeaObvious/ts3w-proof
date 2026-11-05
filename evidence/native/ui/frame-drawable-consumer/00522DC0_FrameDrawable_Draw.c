/* Original TS3W PC 1.67; reference identity: evidence/reference.json.
 * Actual saved Ghidra C; current full name: FrameDrawable_Draw.
 * The actual exported suffix below is unchanged, including generated ABI/types and known projection limits.
 * DB EOL comments are preserved as addressed annotations; no inline placement is inferred.
 * Save was acknowledged; no reopen test or original runtime observation is claimed.
 */

/* Current projection boundary: physical arguments are ECX receiver and entry ESP+4 DrawContext,
 * +8 rectangle, +C four-word context; the raw C omits one physical argument.
 * Whole HighVars piVar1 (row/receiver/Float32 coordinate) and uVar9 (raw color/Float32 coordinate) remain held.
 * dVar8 remains the observed current name. The prior requested flooredHalfSpan name was reported
 * successful but not observed; its underlying DB effect is unknown. No replay is authorized.
 * In the fourth solid-path virtual+38 call, the four physical Float32 arguments come from
 * B+40/B+3C/B+30/B+44 (B=entryESP-78hex, under caller-expected interface cleanup).
 * The apparent uVar9/piVar1 arguments there are geometry projections, not color/pointer transport.
 * Both outline loads physically use the saved complete receiver+5C, not a selected row+5C.
 * Concrete virtual target bodies/cleanup/lifetimes and runtime pixel behavior remain unproved here.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00522DC9 [EOL]: Physical stack+4 is DrawContext; rectangle and packed fourword context are stack+8 and+C. Existing C loses one physical argument.
 * 00522DD5 [EOL]: Select renderer0 with bytecontrol0; returned builder is used by subsequent virtual calls. Reuse verified50EC40 contract.
 * 00522DEE [EOL]: Read packed selector input from third physical argument context[0]; not managed storage ordinal.
 * 00522DF9 [EOL]: Read receiver Float32 extents+4C,+54,+58,+50; exact property mapping remains a separate descriptor proof.
 * 00522E58 [EOL]: Skip horizontal adjustment for COMISS <= or unordered flags if execution continues; no finite/nonnegative validation here.
 * 00522E6A [EOL]: Imported MSVCR80 floor receives Double of available-span*F32(0.5); no proportional rescale.
 * 00522E84 [EOL]: Compare original firstextent against retained x87 floor result; select narrowedF32 floor only on ordered above.
 * 00522E9E [EOL]: New opposite extent is Float32 available-span minus selected firstextent.
 * 00522EDE [EOL]: Vertical extents use the same overflow/clamp sequence; unordered flags skip it if execution continues.
 * 00522F74 [EOL]: Style9 shrinks outer rectangle by one before inner bounds; raw constants-1.0/+1.0 govern signs.
 * 00522FF4 [EOL]: Style10 shrinks the later inner outline rectangle by one; distinct from style9 outer adjustment.
 * 00523054 [EOL]: Nonzero contextword+8 emits optional fill BEFORE style dispatch; Hidden or invalid style still reaches earlier effects.
 * 0052308B [EOL]: Color is selected-row DWORD+4; style presence was selected using firstDWORD only.
 * 005230A2 [EOL]: First of four50F1E0 color-helper calls: originalcolor,alpha-onlyword,F32(0.2); helper arithmetic separately unexpanded.
 * 00523116 [EOL]: Unsigned style>10 returns through shared epilogue only after prior selection/fill/color-helper effects.
 * 0052311C [EOL]: 11DWORD table5237D0:0/2solid,1epilogue,3/4patterned,5inset,6outset,7/8twoband,9/10outline.
 * 005231F7 [EOL]: Style4 uses F32factor3; style3 retains factor1. Loop progress is not locally validated.
 * 0052360B [EOL]: Outline reads receiver+5C via saved complete receiver; decompiler piVar1[0x17] must not imply selectedrow+5C.
 * 00523628 [EOL]: Outline helper522CF0 receives computed inner rectangle and Float32 width1.0; builder backend remains separate.
 * 0052368B [EOL]: Other outline style also reads complete receiver+5C before one-unit outline helper.
 * 00523729 [EOL]: Style8 chooses alternate ordering of paired color arrays for the two helper5112F0 calls.
 * 005237CB [EOL]: One of eight RET0C exits: consume three physical stackarguments; no stable EAX semantic return proved.
 */



/* Analyst-assigned FrameDrawable drawing dispatcher; original PC1.67. Primary vtableFBD968+10
   points here. Preserve existing four disjoint owned
   ranges00522DC0..0052325C,00523260..0052330C,00523310..005233C5,005233D0..005237CD
   (2558bytes/689instructions); gaps and following11DWORD table005237D0 are not silently added.
   Physical ABI: ECX complete receiver; stack+4 DrawContext, +8 fourFloat32 rectangle bounds, +C
   fourDWORD draw context; eight exits RET0C. Current decompiler projection omits one physical
   stackargument and has aliased pointer/float locals and unaff registers; ASM/caller514640 govern
   this contract, not a guessed C repair. Calls50EC40 with DrawContext and zeros, uses returned
   builder virtual+4/+38, and passes third-context word0 to selector522C50. Reads receiver Float32
   fields+4C/+50/+54/+58. For ordered horizontal/vertical extent sum greater than span, calls
   imported MSVCR80 floor on half-span via thunkF7F7D0; retained x87 result compares with
   firstextent, chosenFloat32 firstextent leaves secondextent=span-firstextent. This is not
   proportional scaling; exceptional FP behavior remains qualified. Optional contextword+8 emits a
   fill before style dispatch, so Hidden/out-of-range style does not skip all earlier effects.
   Selected row+4 supplies color; four50F1E0 calls combine that rawword with alpha-only or
   alpha|FFFFFF words and F32 factors0.2/0.6. Unsigned style>10 and style1 use shared epilogue;
   table maps0/2 to common solid path,3/4 common patterned path,5/6 separate shaded paths,7/8 common
   two-band path,9/10 separate outline paths. Style4 selects factor3 rather than1; style8 swaps
   paired band-color arrays. Outline paths read receiver+5C, not selectedrow+5C, and call522CF0 with
   width1.0. Helper arithmetic, builder targets, exact pixel output, resource lifetime,
   notification, complete property mapping and nonfinite/zero-step behavior remain separate; static
   evidence is not runtime observation. */

void __thiscall FrameDrawable_Draw(void *this,float *param_1,uint *param_2)

{
  int *drawBuilder;
  int *piVar1;
  uint **ppuVar2;
  uint *puVar3;
  uint uVar4;
  uint *puVar5;
  int *unaff_EBP;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  float fVar6;
  float availableVerticalSpan;
  float fVar7;
  double dVar8;
  uint uVar9;
  float fVar10;
  undefined4 uStack_68;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  uint *puStack_38;
  uint *puStack_34;
  uint *puStack_30;
  uint *puStack_2c;
  uint *puStack_28;
  uint *puStack_24;
  uint *puStack_20;
  uint *puStack_1c;
  uint *puStack_18;
  uint *puStack_14;
  uint *puStack_10;
  uint *puStack_c;
  uint *puStack_8;
  undefined4 *puStack_4;
  
  drawBuilder = (int *)UiDrawContext_SelectRenderer(param_1,0,0);
  (**(code **)(*drawBuilder + 4))(0xffffffff);
  puVar3 = param_2;
  piVar1 = (int *)FrameDrawable_SelectStateRow(this,*param_2);
  puStack_34 = *(uint **)((int)this + 0x4c);
  puStack_2c = *(uint **)((int)this + 0x54);
  puStack_28 = *(uint **)((int)this + 0x58);
  puStack_30 = *(uint **)((int)this + 0x50);
  fVar7 = *param_1;
  fStack_58 = param_1[2];
  fVar6 = fStack_58 - fVar7;
  if (fVar6 < (float)puStack_2c + (float)puStack_34) {
    dVar8 = floor((double)(fVar6 * 0.5));
    param_2 = (uint *)(float)dVar8;
    ppuVar2 = &param_2;
    if ((float)puStack_34 <= (float)param_2) {
      ppuVar2 = &puStack_34;
    }
    puStack_34 = *ppuVar2;
    puStack_2c = (uint *)(fVar6 - (float)puStack_34);
  }
  fVar6 = param_1[3];
  fVar10 = param_1[1];
  availableVerticalSpan = fVar6 - fVar10;
  if (availableVerticalSpan < (float)puStack_28 + (float)puStack_30) {
    dVar8 = floor((double)(availableVerticalSpan * 0.5));
    param_2 = (uint *)(float)dVar8;
    ppuVar2 = &param_2;
    if ((float)puStack_30 <= (float)param_2) {
      ppuVar2 = &puStack_30;
    }
    puStack_30 = *ppuVar2;
    puStack_28 = (uint *)(availableVerticalSpan - (float)puStack_30);
  }
  fStack_4c = fStack_58;
  fStack_54 = fVar7;
  fStack_50 = fVar10;
  fStack_48 = fVar6;
  if (*piVar1 == 9) {
    fStack_54 = fVar7 - -1.0;
    fStack_50 = fVar10 - -1.0;
    fStack_48 = fVar6 - 1.0;
    fStack_4c = fStack_58 - 1.0;
  }
  fStack_44 = fStack_54 - (-0.0 - (float)puStack_34);
  fStack_40 = fStack_50 - (-0.0 - (float)puStack_30);
  fStack_3c = (-0.0 - (float)puStack_2c) + fStack_4c;
  puStack_38 = (uint *)((-0.0 - (float)puStack_28) + fStack_48);
  puStack_24 = (uint *)fStack_44;
  puStack_20 = (uint *)fStack_40;
  puStack_1c = (uint *)fStack_3c;
  puStack_18 = puStack_38;
  if (*piVar1 == 10) {
    puStack_20 = (uint *)(fStack_40 - -1.0);
    puStack_24 = (uint *)(fStack_44 - -1.0);
    puStack_1c = (uint *)(fStack_3c - 1.0);
    puStack_18 = (uint *)((float)puStack_38 - 1.0);
  }
  if (puVar3[2] != 0) {
    (**(code **)(*drawBuilder + 4))();
    (**(code **)(*drawBuilder + 0x38))(puStack_28,puStack_24,puStack_20,puStack_1c);
  }
  uVar9 = piVar1[1];
  puVar3 = (uint *)InterpolateArgbBytesModulo256(uVar9,uVar9 & 0xff000000,0.2);
  param_2 = (uint *)InterpolateArgbBytesModulo256(uVar9,uVar9 & 0xff000000,0.6);
  uVar4 = InterpolateArgbBytesModulo256(uVar9,uVar9 | 0xffffff,0.2);
  puVar5 = (uint *)InterpolateArgbBytesModulo256(uVar9,uVar9 | 0xffffff,0.6);
  puStack_14 = puVar5;
  puStack_10 = puVar5;
  puStack_c = puVar3;
  puStack_8 = puVar3;
  switch(*piVar1) {
  case 0:
  case 2:
    (**(code **)(*drawBuilder + 4))();
    (**(code **)(*drawBuilder + 0x38))(fStack_58,fStack_54,fStack_50,fStack_44);
    (**(code **)(*drawBuilder + 0x38))(uStack_68,fStack_4c,fVar6,fVar7);
    (**(code **)(*drawBuilder + 0x38))(unaff_EDI,fVar10,uStack_68,fVar7);
    (**(code **)(*drawBuilder + 0x38))(unaff_EBP,unaff_ESI,uVar9,piVar1);
    return;
  case 3:
  case 4:
    param_2 = (uint *)1.0;
    if (*piVar1 == 4) {
      param_2 = (uint *)0x40400000;
    }
    (**(code **)(*drawBuilder + 4))();
    fVar7 = (float)param_1 * (float)puStack_34;
    if (fStack_58 <= fStack_50) {
      puStack_4 = (undefined4 *)(fVar7 * 2.0);
      fVar6 = fStack_58;
      do {
        fVar10 = fVar6 + fVar7;
        if (fStack_50 < fVar6 + fVar7 + fVar7) {
          fVar10 = fStack_50;
        }
        (**(code **)(*drawBuilder + 0x38))(fVar6,fStack_54,fVar10,fStack_44);
        fVar6 = (float)puStack_4 + fVar6;
      } while (fVar6 <= fStack_50);
    }
    fVar7 = (float)param_1 * (float)puStack_2c;
    if (fStack_58 <= fStack_50) {
      puStack_4 = (undefined4 *)(fVar7 * 2.0);
      fVar6 = fStack_58;
      do {
        fVar10 = fVar6 + fVar7;
        if (fStack_50 < fVar6 + fVar7 + fVar7) {
          fVar10 = fStack_50;
        }
        (**(code **)(*drawBuilder + 0x38))(fVar6,fStack_3c,fVar10,fStack_4c);
        fVar6 = (float)puStack_4 + fVar6;
      } while (fVar6 <= fStack_50);
    }
    fVar6 = (float)param_1 * (float)puStack_38;
    fVar7 = fVar6 + fStack_44;
    if (fVar7 <= fStack_3c) {
      puStack_4 = (undefined4 *)(fVar6 * 2.0);
      do {
        fVar10 = fVar7 + fVar6;
        if (fStack_3c < fVar7 + fVar6 + fVar6) {
          fVar10 = fStack_3c;
        }
        (**(code **)(*drawBuilder + 0x38))(fStack_58,fVar7,fStack_48,fVar10);
        fVar7 = (float)puStack_4 + fVar7;
      } while (fVar7 <= fStack_3c);
    }
    fVar7 = (float)param_1 * (float)puStack_30;
    param_1 = (float *)(fVar7 + fStack_44);
    if ((float)param_1 <= fStack_3c) {
      puStack_4 = (undefined4 *)(fVar7 * 2.0);
      do {
        fVar6 = (float)param_1 + fVar7;
        if (fStack_3c < (float)param_1 + fVar7 + fVar7) {
          fVar6 = fStack_3c;
        }
        (**(code **)(*drawBuilder + 0x38))(fStack_40,param_1,fStack_50,fVar6);
        param_1 = (float *)((float)puStack_4 + (float)param_1);
      } while ((float)param_1 <= fStack_3c);
      return;
    }
    break;
  case 5:
    puStack_14 = param_2;
    puStack_10 = param_2;
    puStack_24 = puVar3;
    puStack_20 = puVar3;
    puStack_1c = puVar5;
    puStack_18 = puVar5;
    puStack_c = (uint *)uVar4;
    puStack_8 = (uint *)uVar4;
    (**(code **)(*drawBuilder + 4))();
    EmitRectangleRingVertexCalls(drawBuilder,&fStack_58,&fStack_48,&puStack_28,&puStack_18);
    return;
  case 6:
    puStack_1c = param_2;
    puStack_18 = param_2;
    puStack_24 = (uint *)uVar4;
    puStack_20 = (uint *)uVar4;
    (**(code **)(*drawBuilder + 4))();
    EmitRectangleRingVertexCalls(drawBuilder,&fStack_58,&fStack_48,&puStack_28,&puStack_18);
    return;
  case 7:
  case 8:
    puStack_14 = (uint *)((fStack_44 + fStack_54) * 0.5);
    puStack_c = (uint *)((fStack_3c + fStack_4c) * 0.5);
    puStack_10 = (uint *)((fStack_50 + fStack_40) * 0.5);
    puStack_8 = (uint *)(((float)puStack_38 + fStack_48) * 0.5);
    (**(code **)(*drawBuilder + 4))();
    puStack_38 = puVar5;
    puStack_34 = puVar5;
    puStack_30 = puVar3;
    puStack_2c = puVar3;
    puStack_28 = puVar3;
    puStack_20 = puVar5;
    if (*unaff_EBP == 8) {
      puStack_24 = puVar3;
      puStack_1c = puVar5;
      EmitRectangleRingVertexCalls(drawBuilder,&fStack_58,&puStack_18,&puStack_38,&puStack_38);
      EmitRectangleRingVertexCalls
                (drawBuilder,(float *)&puStack_18,&fStack_48,&puStack_28,&puStack_28);
      return;
    }
    puStack_24 = puVar3;
    puStack_1c = puVar5;
    EmitRectangleRingVertexCalls(drawBuilder,&fStack_58,&puStack_18,&puStack_28,&puStack_28);
    EmitRectangleRingVertexCalls
              (drawBuilder,(float *)&puStack_18,&fStack_48,&puStack_38,&puStack_38);
    break;
  case 9:
    puStack_1c = param_2;
    puStack_18 = param_2;
    puStack_24 = (uint *)uVar4;
    puStack_20 = (uint *)uVar4;
    (**(code **)(*drawBuilder + 4))();
    EmitRectangleRingVertexCalls(drawBuilder,&fStack_58,&fStack_48,&puStack_28,&puStack_18);
    (**(code **)(*drawBuilder + 4))(piVar1[0x17]);
    ForwardRectangleOutlineToBuilder(drawBuilder,puStack_4,0x3f800000);
    return;
  case 10:
    puStack_14 = param_2;
    puStack_10 = param_2;
    puStack_24 = puVar3;
    puStack_20 = puVar3;
    puStack_1c = puVar5;
    puStack_18 = puVar5;
    puStack_c = (uint *)uVar4;
    puStack_8 = (uint *)uVar4;
    (**(code **)(*drawBuilder + 4))();
    EmitRectangleRingVertexCalls(drawBuilder,&fStack_58,&fStack_48,&puStack_28,&puStack_18);
    (**(code **)(*drawBuilder + 4))(piVar1[0x17]);
    ForwardRectangleOutlineToBuilder(drawBuilder,&fStack_4c,0x3f800000);
    return;
  }
  return;
}

