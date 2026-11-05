/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 outside sampling and occlusion instruction contract. ECX receiver plus TWO
   physically present unused stack words; every exit RET8. Increments DWORD counter+24, signed
   CDQ/IDIV divisor+28 and skips nonzero remainder; this is CALL-COUNT cadence, not elapsed250ms.
   Missing world skips publication. Selected current-world row with signed+39C<0 publishes0. Audio
   service virtual+18 gives point index2 then index1; full point producers/eye-focus labels remain
   unexpanded. SSE squared XYZ reduction is (dzSquared+dySquared)+dxSquared. COMISS
   distanceSquared,storedThreshold then JB takes near path for ordered less OR unordered;
   equality/ordered greater publish1. Near path generates13 points centered at service index2. Per
   world lot with room manager, unexpanded86E0E0 cull precedes AB71A0 transform. Inclusive local
   bounds0..signedWidth/Depth reject unordered via COMISS/JB. Signed negative floor from AB61B0
   counts hit; otherwise nonzero AX from B482C0 counts hit. Iterates lots then points without
   per-point early break/dedup, so <=13 total hits is not proved. Final signed FILD+conditional2^32
   converts UInt32 hitcount/pointcount, x87 computes1-hitcount/pointcount, ONE FSTP binary32
   argument to virtual+38 publishes. Actual C aligned-ESP aliases are decompiler artifacts;
   instructions define values. Full cull/floor/room producers, class admission and scheduling remain
   static gaps. */

void __thiscall
AudioOutside_UpdateSampledValue(void *this,uint unusedStackWord0,uint unusedStackWord1)

{
  void *pvVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  float *pfVar5;
  short sVar6;
  float *pfVar7;
  undefined4 uVar8;
  int *piVar9;
  undefined4 *puVar10;
  float *pfVar11;
  undefined8 uVar12;
  int iStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  int *local_16c;
  undefined4 *puStack_168;
  float fStack_164;
  float fStack_160;
  int iStack_15c;
  void *pvStack_158;
  undefined4 *puStack_154;
  float fStack_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  undefined4 uStack_13c;
  float fStack_138;
  undefined4 uStack_134;
  float fStack_130;
  undefined4 uStack_12c;
  float fStack_128;
  undefined4 uStack_124;
  float fStack_120;
  undefined4 uStack_11c;
  float fStack_118;
  undefined4 uStack_114;
  float fStack_110;
  undefined4 uStack_10c;
  float fStack_108;
  undefined4 uStack_104;
  float fStack_100;
  undefined4 uStack_fc;
  float fStack_f8;
  undefined4 uStack_f4;
  float *pfStack_f0;
  float *pfStack_ec;
  undefined1 *puStack_e8;
  float afStack_e0 [52];
  undefined1 auStack_10 [12];
  
  *(int *)((int)this + 0x24) = *(int *)((int)this + 0x24) + 1;
  pvVar1 = DAT_011edbc4;
                    /* Signed IDIV by receiver+28 after DWORD increment; no local zero-divisor
                       guard. Scheduling and valid property domain need producer review. */
  piVar9 = (int *)(*(int *)((int)this + 0x24) % *(int *)((int)this + 0x28));
  if ((piVar9 == (int *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
    local_16c = this;
    uVar12 = FUN_00c5f560((int)DAT_011edbc4);
    piVar9 = FUN_00c62810(pvVar1,(int)uVar12,(int)((ulonglong)uVar12 >> 0x20),piVar9);
    if ((piVar9 != (int *)0x0) && (piVar9[0xe7] < 0)) {
      (**(code **)(*(int *)this + 0x38))(this,0.0);
      return;
    }
    piVar9 = (int *)FUN_008afe00();
    pfVar7 = (**(code **)(*piVar9 + 0x18))(piVar9,2);
    fStack_178 = pfVar7[2];
    fStack_180 = *pfVar7;
    fStack_17c = pfVar7[1];
    fStack_174 = fStack_180;
    fStack_150 = fStack_180;
    fStack_14c = fStack_17c;
    fStack_148 = fStack_178;
    fStack_144 = fStack_180;
    pfVar7 = (**(code **)(*piVar9 + 0x18))(piVar9,1);
    fStack_180 = (fStack_148 - pfVar7[2]) * (fStack_148 - pfVar7[2]) +
                 (fStack_14c - pfVar7[1]) * (fStack_14c - pfVar7[1]) +
                 (fStack_150 - *pfVar7) * (fStack_150 - *pfVar7);
                    /* JB includes unordered (NaN) in near path. Ordered >= includes equality and
                       publishes1; threshold was squared by loader86E170. */
    if (*(float *)((int)this + 0x30) <= fStack_180) {
      fStack_17c = fStack_180;
      fStack_178 = fStack_180;
      fStack_174 = fStack_180;
      (**(code **)(*(int *)this + 0x38))(this,1.0);
      return;
    }
    fStack_174 = *(float *)((int)this + 0x2c);
    pfStack_f0 = afStack_e0;
    puStack_e8 = auStack_10;
    fStack_180 = fStack_150;
    fStack_17c = fStack_14c;
    fStack_178 = fStack_148;
    pfStack_ec = pfStack_f0;
    AudioOutside_AppendThirteenSamplePoints(&fStack_150,fStack_174,&pfStack_f0);
    piVar9 = (int *)FUN_00c687a0(pvVar1,'\0');
    fStack_164 = -1.0;
    fStack_160 = -1.0;
    iStack_15c = 0;
    puVar10 = (undefined4 *)*piVar9;
    puStack_154 = (undefined4 *)piVar9[1];
    iStack_184 = 0;
    pfVar7 = pfStack_ec;
    pfVar11 = pfStack_ec;
    puStack_168 = puVar10;
    if (puVar10 != puStack_154) {
      do {
        pvVar1 = (void *)*puVar10;
        pvStack_158 = *(void **)((int)pvVar1 + 0x298);
        pfVar7 = pfVar11;
        if (pvStack_158 != (void *)0x0) {
          puStack_168 = puVar10;
          FUN_0069d730(&fStack_150,(float *)((int)pvVar1 + 0x230));
          uVar8 = FUN_0086e0e0(&fStack_180,&fStack_150);
          pfVar5 = pfStack_f0;
          if ((char)uVar8 != '\0') {
            for (; puVar10 = puStack_168, pfVar5 != pfVar11; pfVar5 = pfVar5 + 4) {
              puStack_168 = puVar10;
              Lot_WorldPositionToLocalVector(pvVar1,pfVar5,&fStack_140);
              fStack_120 = fStack_140;
              uStack_11c = uStack_13c;
              fStack_118 = fStack_138;
              uStack_114 = uStack_134;
              fStack_100 = fStack_140;
              uStack_fc = uStack_13c;
              fStack_f8 = fStack_138;
              uStack_f4 = uStack_134;
              if ((((0.0 <= fStack_140) && (fStack_140 <= (float)*(int *)((int)pvVar1 + 0x174))) &&
                  (0.0 <= fStack_138)) && (fStack_138 <= (float)*(int *)((int)pvVar1 + 0x178))) {
                iStack_15c = Lot_SelectFloorLevelBelowHeight(pvVar1,&fStack_140,'\0');
                    /* Signed floor<0 counts hit directly. Nonnegative floor requires nonzero16-bit
                       AX room result; this is not simply the project's displayed-floor InRoom
                       predicate. */
                fStack_130 = fStack_140;
                uStack_12c = uStack_13c;
                fStack_128 = fStack_138;
                uStack_124 = uStack_134;
                fStack_110 = fStack_140;
                uStack_10c = uStack_13c;
                fStack_108 = fStack_138;
                uStack_104 = uStack_134;
                fStack_164 = fStack_140;
                fStack_160 = fStack_138;
                if ((iStack_15c < 0) ||
                   (sVar6 = LotRoom_ResolveForLocalLocation(pvStack_158,&fStack_164,0,0), sVar6 != 0
                   )) {
                  iStack_184 = iStack_184 + 1;
                }
              }
              pfVar7 = pfStack_ec;
            }
          }
        }
        puVar10 = puVar10 + 1;
        pfVar11 = pfVar7;
        puStack_168 = puVar10;
      } while (puVar10 != puStack_154);
    }
                    /* UInt32 hitcount/pointcount converted by signed FILD plus2^32 correction,
                       divide/subtract remain x87 until one final FSTPfloat argument. No binary32
                       intermediate fraction store. */
    piVar9 = local_16c;
    fVar3 = (float)iStack_184;
    iVar2 = *local_16c;
    if (iStack_184 < 0) {
      fVar3 = fVar3 + 4.2949673e+09;
    }
    local_16c = (int *)((int)pfVar7 - (int)pfStack_f0 >> 4);
    fVar4 = (float)(int)local_16c;
    if ((int)local_16c < 0) {
      fVar4 = fVar4 + 4.2949673e+09;
    }
    (**(code **)(iVar2 + 0x38))(piVar9,1.0 - fVar3 / fVar4);
  }
  return;
}

