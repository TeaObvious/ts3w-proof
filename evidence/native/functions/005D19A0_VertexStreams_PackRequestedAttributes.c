/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 character UV stream contract. Generic requested-attribute stream packer; analyst
   name does not claim all branches semantically reviewed. ABI is13physical stackwords, RET34
   (stdcall); incoming ECX is not a receiver. Destination stride uses low16; returned byte pointer
   is start+vertexCount*stride in32-bit arithmetic. Source virtual slots34/38/20/24/2C/30/54 have
   ECX receiver and respective0/0/0/1/1/0/1stack arguments; slot2C result is AL. Correct per-call
   overrides eliminate fake stack/local aliases. Requested DWORD-vector is destructively popped from
   front. Selected attribute ID3 is UV, jump target5D1E1F; complete selection/other attribute
   semantics remain open. UV per lane: finite valid CVTTSS2SI domain x>1 -> x-trunc(x); x<0 ->
   x-trunc(x)+1; exact+1 preserved, negative integers become1. COMISS/JBE unordered comparisons skip
   wrapping for NaN; there is no finite/range validation here. Huge/infinite conversion behavior is
   not ordinary modulo. Only FIRST processed matched UV batch uses atlas scale then offset (separate
   SSE float operations); later UV batches wrap/pack without atlas. Atlas offset/scale arguments
   each have16-byte MOVAPS reads, so caller storage/alignment matters despite onlyXY use. Multiply
   by original float65535.0, storeFLOAT32, FLD then FISTP DWORD under AMBIENT x87 rounding mode; no
   local FLDCW. Add integerFFFF8000 and storelow16. Do NOT simplify to unconditional round-to-even
   without caller FP-state evidence. Missing UV fallback writes8000,8000; full fallback admission
   and GPU decode consumer unexpanded. Other normal/color/weight/remap branches remain outside this
   selected review. Selected position branch is qualified below.
   
   Analyst PC1.67 selected requested-position ID1 branch at005D1BF7: finite ordinary input selects
   max(abs(X),abs(Y),abs(Z)), calls imported ceil on promoted binary32, converts through F7F620 then
   retains LOW16. TEST AX zero writes XYZ=0,W=1. Otherwise MOVSX ECX,AX; EAX=00007FFD; CDQ/IDIV ECX;
   quotient low16 becomes signed scale by MOVSX. XYZ multiply and +binary32 0.5 (00F9B5B4=3F000000)
   use x87, spill binary64, call imported floor thunkF7F7D0 and conversionF7F620; stores retain
   low16, with no saturation. Negative halfway uses floor(v*scale+0.5), not away-from-zero; x87
   precision remains ambient, not arbitrary Float32 regrouping. No tolerance subtraction,
   minimum-one ceiling, nonfinite guard or positive-scale fallback occurs in this branch. Source
   bounds publication uses original position values after packing. Complete selected
   production-to-roof caller and shader decode joins remain unestablished; this generic
   source-interface packer must not be labelled a verified roof emitter solely from shared
   constant7FFD. */

byte * VertexStreams_PackRequestedAttributes
                 (void *source,void *requestedAttributes,ushort destinationStride,
                 byte *destinationStart,byte *firstBounds,float *bounds,void *indexRemap,
                 uint weightLaneCount,float *atlasOffset,float *atlasScale,byte *positionOffsetOut,
                 void **auxiliaryCursor,byte narrowIndexFlag)

{
  uint *_Src;
  ushort uVar1;
  uint *_Dst;
  uint uVar2;
  short sVar3;
  float fVar4;
  float fVar5;
  bool bVar6;
  byte bVar7;
  short sVar8;
  uint uVar9;
  float *pfVar10;
  float *pfVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  undefined4 *puVar14;
  int iVar15;
  float *pfVar16;
  undefined4 *puVar17;
  byte *_Dst_00;
  uint uVar18;
  byte *pbVar19;
  float fVar20;
  float fVar21;
  double dVar22;
  uint uStack_e0;
  int iStack_d8;
  int iStack_d4;
  int iStack_cc;
  float fStack_c8;
  int iStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  int iStack_b4;
  uint uStack_b0;
  int iStack_ac;
  uint uStack_a8;
  int iStack_a4;
  int iStack_a0;
  uint uStack_9c;
  byte *pbStack_98;
  uint uStack_94;
  int iStack_90;
  int iStack_8c;
  int iStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  byte *pbStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  longlong lStack_60;
  longlong lStack_58;
  longlong lStack_50;
  longlong lStack_48;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  uStack_a8 = (**(code **)(*(int *)source + 0x34))(source);
  pbStack_70 = (**(code **)(*(int *)source + 0x38))(source);
  pbStack_98 = destinationStart;
  uStack_94 = (**(code **)(*(int *)source + 0x20))(source);
  *positionOffsetOut = 0;
  iStack_cc = 0;
  iStack_b4 = 0;
  iStack_ac = 0;
  iStack_a4 = 0;
  uVar1 = 0;
  bVar6 = true;
  if (*(int *)requestedAttributes != *(int *)((int)requestedAttributes + 4)) {
    do {
      _Dst = *(uint **)requestedAttributes;
      uVar2 = *_Dst;
      _Src = _Dst + 1;
      if (_Src < *(uint **)((int)requestedAttributes + 4)) {
        memmove(_Dst,_Src,(int)*(uint **)((int)requestedAttributes + 4) - (int)_Src);
      }
      *(int *)((int)requestedAttributes + 4) = *(int *)((int)requestedAttributes + 4) + -4;
      _Dst_00 = pbStack_98 + uVar1;
      uVar18 = 0;
      iVar15 = 0;
      uStack_e0 = 0;
      iStack_c4 = 0;
      iStack_d8 = 0;
      iStack_d4 = 0;
      if (uStack_94 != 0) {
        do {
          uVar9 = (**(code **)(*(int *)source + 0x24))(source,uVar18);
          if (uVar9 == uVar2) {
            if (uVar2 == 3) {
              if ((uStack_e0 != iStack_cc) &&
                 (uVar9 = (**(code **)(*(int *)source + 0x24))(source,uVar18 + 1), uVar9 == 3)) {
                bVar7 = (**(code **)(*(int *)source + 0x2c))(source,uVar18);
                iVar15 = iVar15 + (uint)bVar7;
                uStack_e0 = uStack_e0 + 1;
                goto LAB_005d1b45;
              }
              iStack_cc = iStack_cc + 1;
            }
            else if (uVar2 == 1) {
              if (iStack_c4 != iStack_b4) {
                bVar7 = (**(code **)(*(int *)source + 0x2c))(source,uVar18);
                iVar15 = iVar15 + (uint)bVar7;
                iStack_c4 = iStack_c4 + 1;
                goto LAB_005d1b45;
              }
              iStack_b4 = iStack_b4 + 1;
              *positionOffsetOut = (byte)iVar15;
            }
            else if (uVar2 == 2) {
              if (iStack_d8 != iStack_ac) {
                bVar7 = (**(code **)(*(int *)source + 0x2c))(source,uVar18);
                iVar15 = iVar15 + (uint)bVar7;
                iStack_d8 = iStack_d8 + 1;
                goto LAB_005d1b45;
              }
              iStack_ac = iStack_ac + 1;
            }
            else if (uVar2 == 7) {
              if (iStack_d4 != iStack_a4) {
                bVar7 = (**(code **)(*(int *)source + 0x2c))(source,uVar18);
                iVar15 = iVar15 + (uint)bVar7;
                iStack_d4 = iStack_d4 + 1;
                goto LAB_005d1b45;
              }
              iStack_a4 = iStack_a4 + 1;
            }
            pfVar16 = (float *)(pbStack_70 + iVar15);
            uStack_b0 = (**(code **)(*(int *)source + 0x30))(source);
            if (uStack_a8 != 0) {
              uStack_9c = uStack_a8;
              do {
                switch(uVar2) {
                case 1:
                  fVar20 = *pfVar16;
                  fStack_bc = pfVar16[2];
                  fVar21 = pfVar16[1];
                  pfVar10 = &fStack_c0;
                  fStack_c0 = ABS(fVar21);
                  fStack_c8 = ABS(fVar20);
                  if (ABS(fVar21) <= ABS(fVar20)) {
                    pfVar10 = &fStack_c8;
                  }
                  fStack_c0 = ABS(pfVar16[2]);
                  fStack_b8 = *pfVar10;
                  pfVar11 = &fStack_b8;
                  if (*pfVar10 <= fStack_c0) {
                    pfVar11 = &fStack_c0;
                  }
                  dVar22 = ceil((double)*pfVar11);
                  iVar15 = Compiler_TruncateX87ToLowInt32((float10)dVar22);
                  if ((short)iVar15 == 0) {
                    sVar8 = 0;
                    _Dst_00[2] = 0;
                    _Dst_00[3] = 0;
                    _Dst_00[0] = 0;
                    _Dst_00[1] = 0;
                    _Dst_00[6] = 1;
                    _Dst_00[7] = 0;
                  }
                  else {
                    sVar3 = (short)(0x7ffd / (longlong)(int)(short)iVar15);
                    fStack_c8 = (float)(int)sVar3;
                    fStack_b8 = (float)(int)fStack_c8;
                    dVar22 = floor((double)(fStack_b8 * fVar20 + 0.5));
                    iVar15 = Compiler_TruncateX87ToLowInt32((float10)dVar22);
                    *(short *)_Dst_00 = (short)iVar15;
                    dVar22 = floor((double)(fStack_b8 * fVar21 + 0.5));
                    iVar15 = Compiler_TruncateX87ToLowInt32((float10)dVar22);
                    *(short *)(_Dst_00 + 2) = (short)iVar15;
                    dVar22 = floor((double)(fStack_b8 * fStack_bc + 0.5));
                    iVar15 = Compiler_TruncateX87ToLowInt32((float10)dVar22);
                    sVar8 = (short)iVar15;
                    *(short *)(_Dst_00 + 6) = sVar3;
                  }
                  *(short *)(_Dst_00 + 4) = sVar8;
                  if (iStack_c4 == 0) {
                    if (*firstBounds == 0) {
                      FUN_0068bee0(bounds,fVar20,fVar21,fStack_bc);
                    }
                    else {
                      fStack_38 = fStack_bc;
                      *firstBounds = 0;
                      *bounds = fVar20;
                      bounds[1] = fVar21;
                      bounds[2] = fStack_bc;
                      bounds[3] = fVar20;
                      bounds[4] = fVar20;
                      bounds[5] = fVar21;
                      bounds[6] = fStack_bc;
                      bounds[7] = fVar20;
                      fStack_40 = fVar20;
                      fStack_3c = fVar21;
                      fStack_34 = fVar20;
                    }
                  }
                  break;
                case 2:
                  _Dst_00[3] = 0x80;
                  _Dst_00[2] = (byte)(int)((*pfVar16 + 1.0) * 0.5 * 255.0);
                  _Dst_00[1] = (byte)(int)((pfVar16[1] + 1.0) * 0.5 * 255.0);
                  *_Dst_00 = (byte)(int)((pfVar16[2] + 1.0) * 0.5 * 255.0);
                  break;
                case 3:
                    /* Requested attribute ID3 UV branch. COMISS/JBE predicates preserve exact+1 and
                       skip NaN wrap; CVTTSS2SI truncation only within its valid Int32 domain. */
                  fVar20 = *pfVar16;
                  if (fVar20 <= 1.0) {
                    if (fVar20 < 0.0) {
                      fVar20 = (fVar20 - (float)(int)fVar20) + 1.0;
                    }
                  }
                  else {
                    fVar20 = fVar20 - (float)(int)fVar20;
                  }
                  fVar21 = pfVar16[1];
                  if (fVar21 <= 1.0) {
                    if (fVar21 < 0.0) {
                      fVar21 = (fVar21 - (float)(int)fVar21) + 1.0;
                    }
                  }
                  else {
                    fVar21 = fVar21 - (float)(int)fVar21;
                  }
                    /* One local byte selects atlas only for first processed matched UV batch. Reset
                       after matched ID3 completes at5D1DA2; missing-attribute fallback jumps past
                       reset. */
                  if (bVar6) {
                    fVar4 = *atlasScale;
                    fVar5 = *atlasOffset;
                    fStack_80 = (fVar5 + fVar4 * fVar20) * 65535.0;
                    fStack_2c = (fVar5 + fVar4 * fVar20) * 65535.0;
                    fStack_28 = (fVar5 + fVar4 * fVar20) * 65535.0;
                    fStack_24 = (fVar5 + fVar4 * fVar20) * 65535.0;
                    /* FISTP DWORD consumes storedFLOAT32 product and AMBIENT x87 rounding mode. No
                       local rounding-mode setup; integer biasFFFF8000 thenlow16 store. */
                    iStack_90 = (int)ROUND(fStack_80);
                    *(short *)_Dst_00 = (short)iStack_90 + -0x8000;
                    fVar20 = atlasScale[1];
                    fVar4 = atlasOffset[1];
                    fStack_7c = (fVar4 + fVar20 * fVar21) * 65535.0;
                    fStack_1c = (fVar4 + fVar20 * fVar21) * 65535.0;
                    fStack_18 = (fVar4 + fVar20 * fVar21) * 65535.0;
                    fStack_14 = (fVar4 + fVar20 * fVar21) * 65535.0;
                    iStack_8c = (int)ROUND(fStack_7c);
                    *(short *)(_Dst_00 + 2) = (short)iStack_8c + -0x8000;
                    fStack_30 = fStack_80;
                    fStack_20 = fStack_7c;
                  }
                  else {
                    fStack_64 = fVar20 * 65535.0;
                    /* Later matched UV batch: wrapped coordinate*65535.0, no atlas. Same
                       FISTP/bias/low16 contract. */
                    iStack_88 = (int)ROUND(fStack_64);
                    fStack_68 = fVar21 * 65535.0;
                    *(short *)_Dst_00 = (short)iStack_88 + -0x8000;
                    iStack_a0 = (int)ROUND(fStack_68);
                    *(short *)(_Dst_00 + 2) = (short)iStack_a0 + -0x8000;
                  }
                  break;
                case 4:
                  puVar17 = (undefined4 *)((int)indexRemap + 4);
                  fStack_c8 = (float)((int)pfVar16 - (int)_Dst_00);
                  uStack_e0 = 0;
                  pbVar19 = _Dst_00;
                  do {
                    uVar18 = (**(code **)(*(int *)source + 0x54))(source,pbVar19[(int)fStack_c8]);
                    puVar12 = *(undefined4 **)((int)indexRemap + 0xc);
                    puVar14 = puVar17;
                    if (*(undefined4 **)((int)indexRemap + 0xc) == (undefined4 *)0x0) {
LAB_005d1feb:
                      puVar14 = puVar17;
                    }
                    else {
                      do {
                        if ((uint)puVar12[4] < uVar18) {
                          puVar13 = (undefined4 *)*puVar12;
                        }
                        else {
                          puVar13 = (undefined4 *)puVar12[1];
                          puVar14 = puVar12;
                        }
                        puVar12 = puVar13;
                      } while (puVar13 != (undefined4 *)0x0);
                      if ((puVar14 == puVar17) || (uVar18 < (uint)puVar14[4])) goto LAB_005d1feb;
                    }
                    if (narrowIndexFlag == 0) {
                      *(undefined2 *)(_Dst_00 + uStack_e0 * 2) = *(undefined2 *)(puVar14 + 5);
                    }
                    else {
                      *pbVar19 = *(byte *)(puVar14 + 5);
                    }
                    uStack_e0 = uStack_e0 + 1;
                    pbVar19 = pbVar19 + 1;
                  } while (uStack_e0 < 4);
                  break;
                case 5:
                  fStack_84 = *pfVar16 * 255.001;
                  lStack_60._0_1_ = (byte)(longlong)ROUND(fStack_84);
                  _Dst_00[2] = (byte)lStack_60;
                  if (1 < (int)weightLaneCount) {
                    fStack_78 = pfVar16[1] * 255.001;
                    lStack_48 = (longlong)ROUND(fStack_78);
                    _Dst_00[1] = (byte)lStack_48;
                    lStack_60._0_1_ = (byte)lStack_60 + (byte)lStack_48;
                  }
                  if (2 < (int)weightLaneCount) {
                    fStack_74 = pfVar16[2] * 255.001;
                    lStack_50 = (longlong)ROUND(fStack_74);
                    *_Dst_00 = (byte)lStack_50;
                    lStack_60._0_1_ = (byte)lStack_60 + (byte)lStack_50;
                  }
                  if (3 < (int)weightLaneCount) {
                    fStack_6c = pfVar16[3] * 255.001;
                    lStack_58 = (longlong)ROUND(fStack_6c);
                    _Dst_00[3] = (byte)lStack_58;
                    lStack_60._0_1_ = (byte)lStack_60 + (byte)lStack_58;
                  }
                  _Dst_00[2] = _Dst_00[2] + (-1 - (byte)lStack_60);
                  lStack_60 = (longlong)ROUND(fStack_84);
                  break;
                case 6:
                  _Dst_00[3] = 0x80;
                  _Dst_00[2] = (byte)(int)((*pfVar16 + 1.0) * 0.5 * 255.0);
                  _Dst_00[1] = (byte)(int)((pfVar16[1] + 1.0) * 0.5 * 255.0);
                  *_Dst_00 = (byte)(int)((pfVar16[2] + 1.0) * 0.5 * 255.0);
                  break;
                case 7:
                  _Dst_00[3] = *(byte *)((int)pfVar16 + 3);
                  _Dst_00[2] = *(byte *)((int)pfVar16 + 2);
                  _Dst_00[1] = *(byte *)((int)pfVar16 + 1);
                  *_Dst_00 = *(byte *)pfVar16;
                  break;
                case 10:
                  *(undefined2 *)*auxiliaryCursor = *(undefined2 *)pfVar16;
                  *auxiliaryCursor = (void *)((int)*auxiliaryCursor + 2);
                }
                pfVar16 = (float *)((int)pfVar16 + uStack_b0);
                _Dst_00 = _Dst_00 + destinationStride;
                uStack_9c = uStack_9c - 1;
              } while (uStack_9c != 0);
            }
            if (uVar2 == 3) {
              bVar6 = false;
            }
            goto LAB_005d2227;
          }
          bVar7 = (**(code **)(*(int *)source + 0x2c))(source,uVar18);
          iVar15 = iVar15 + (uint)bVar7;
LAB_005d1b45:
          uVar18 = uVar18 + 1;
        } while (uVar18 < uStack_94);
      }
      if (uStack_a8 != 0) {
        uStack_b0 = uVar2 - 1;
        uVar18 = uStack_a8;
        do {
          switch(uStack_b0) {
          case 0:
            _Dst_00[0] = 0;
            _Dst_00[1] = 0;
            _Dst_00[2] = 0;
            _Dst_00[3] = 0;
            _Dst_00[4] = 0;
            _Dst_00[5] = 0;
            _Dst_00[6] = 1;
            _Dst_00[7] = 0;
            break;
          case 1:
            _Dst_00[2] = 0x80;
            iVar15 = iStack_d8;
            goto LAB_005d21a2;
          case 2:
            _Dst_00[0] = 0;
            _Dst_00[1] = 0x80;
            _Dst_00[2] = 0;
            _Dst_00[3] = 0x80;
            break;
          case 3:
            memset(_Dst_00,0,(2 - (uint)(narrowIndexFlag != 0)) * 4);
            break;
          case 4:
            _Dst_00[2] = 0;
            _Dst_00[1] = 0;
            *_Dst_00 = 0;
            _Dst_00[3] = 0;
            break;
          case 5:
            _Dst_00[2] = 0x80;
            _Dst_00[1] = 0xff;
            *_Dst_00 = 0x80;
            _Dst_00[3] = 0x80;
            break;
          case 6:
            _Dst_00[2] = 0;
            iVar15 = iStack_d4;
LAB_005d21a2:
            _Dst_00[1] = 0x80;
            *_Dst_00 = (-(iVar15 != 0) & 0x81U) - 1;
            _Dst_00[3] = 0x80;
            break;
          case 9:
            *(undefined2 *)*auxiliaryCursor = 0xffff;
            *auxiliaryCursor = (void *)((int)*auxiliaryCursor + 2);
          }
          _Dst_00 = _Dst_00 + destinationStride;
          uVar18 = uVar18 - 1;
        } while (uVar18 != 0);
      }
LAB_005d2227:
      switch(uVar2) {
      case 1:
        uVar1 = uVar1 + 8;
        break;
      case 2:
      case 3:
      case 5:
      case 6:
      case 7:
        uVar1 = uVar1 + 4;
        break;
      case 4:
        uVar1 = uVar1 + (2 - (ushort)(narrowIndexFlag != 0)) * 4;
      }
    } while (*(int *)requestedAttributes != *(int *)((int)requestedAttributes + 4));
  }
  return pbStack_98 + destinationStride * uStack_a8;
}

