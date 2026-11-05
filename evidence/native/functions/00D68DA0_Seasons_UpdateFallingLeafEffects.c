/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Falling-leaf effect tick: fall-set active; loss magnitude
   beyondFLT_EPSILON and distance from1 beyond2^-16; elapsed renderer interval25/3sec. Physics
   range100m selects trees; records with crown data within100m roll chance<=1/3 and dispatch crown
   effect placement. RNG state belongs to this field, not a process-wide sequence.
   
   Analyst PC1.67 weather snapshot instruction contract. Existing analyst name preserved;
   ECXfieldowner,no stackargs RET. Copy pending settings viaD699D0, require fallSetbyte.
   TwoMAXPS/CMPLEPS gates reject magnitude(loss)<=2^-23 and magnitude(loss-1)<=2^-16; NOT0<loss<1.
   NaNcomparisonmask0 passesbothgates; negative,>1 andinfinite inputsare notboundedhere. Time check
   usesstoredintervalFLOAT32bits41055555(initial8.333333015441895), not exact25/3;
   comparesfield+8+intervalwithglobalrendererclock and advancesfieldtimebeforecamera/rangequery.
   Original initialradiusfloat100/chancefloat3EAAAAAB(~1/3); tree records/crownvalidity/distance
   tested; RNGbelongsfield+0C. Retained childplacementhelperunexpanded.
   Nofinite/admission/completeeffectparity guarantee. */

void __thiscall Seasons_UpdateFallingLeafEffects(void *this)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  void *pvVar3;
  undefined4 uVar4;
  undefined4 extraout_ECX;
  int iVar5;
  undefined4 extraout_EDX;
  uint uVar6;
  float *pfVar7;
  float10 fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  uint local_c0;
  void *local_b4;
  int local_b0;
  undefined4 local_ac;
  char *local_a8;
  void *local_a4;
  PCWeatherSettings local_a0;
  float local_40;
  float fStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  float local_20;
  
  if ((DAT_011edbc4 != 0) && (*(void **)(DAT_011edbc4 + 0x74) != (void *)0x0)) {
    local_a0.precipitationStrength = 1.0;
    local_a0.precipitationType = 0;
    local_a0.frostAmount = 0.0;
    local_a0.currentSeason = 0;
    local_a0.sunriseOffset = 0.0;
    local_a0.sunsetOffset = 0.0;
    local_a0.snowThickness = 0.0;
    local_a0.snowRoadDepth = 0.0;
    local_a0.wetAmount = 0.0;
    local_a0.isSnowMelting = 0;
    local_a0.treeLeafLoss = 0.0;
    local_a0.useFallSet = 1;
    local_a0.treeFallColor = 0.0;
    local_a0.heatShimmerDistance = -1.0;
    local_a0.precipitationFog = 0.0;
    local_a0.pondFreeze = 0.0;
    local_a0.worldLeaves = 0.0;
    local_a0.cloudinessTarget = 0.0;
    local_a0.windStrength = 0.0;
    local_a0.normalFog = 0.0;
    WeatherSettings_CopyPending(*(void **)(DAT_011edbc4 + 0x74),&local_a0);
    if (local_a0.useFallSet != 0) {
      auVar12._0_4_ = local_a0.treeLeafLoss * -1.0;
      auVar12._4_4_ = local_a0.treeLeafLoss * -1.0;
      auVar12._8_4_ = local_a0.treeLeafLoss * -1.0;
      auVar12._12_4_ = local_a0.treeLeafLoss * -1.0;
      auVar13._4_4_ = local_a0.treeLeafLoss;
      auVar13._0_4_ = local_a0.treeLeafLoss;
      auVar13._8_4_ = local_a0.treeLeafLoss;
      auVar13._12_4_ = local_a0.treeLeafLoss;
      auVar13 = maxps(auVar12,auVar13);
                    /* CMPLEPS inclusiveepsilon; NaN mask0 is NOT allF, therefore proceeds. No
                       lower/upper0..1 bound. */
      auVar14._4_4_ = -(uint)(auVar13._4_4_ <= 1.1920929e-07);
      auVar14._0_4_ = -(uint)(auVar13._0_4_ <= 1.1920929e-07);
      auVar14._8_4_ = -(uint)(auVar13._8_4_ <= 1.1920929e-07);
      auVar14._12_4_ = -(uint)(auVar13._12_4_ <= 1.1920929e-07);
      iVar5 = movmskps(extraout_ECX,auVar14);
      if (iVar5 != 0xf) {
        fVar11 = local_a0.treeLeafLoss - 1.0;
        auVar9._0_4_ = fVar11 * -1.0;
        auVar9._4_4_ = fVar11 * -1.0;
        auVar9._8_4_ = fVar11 * -1.0;
        auVar9._12_4_ = fVar11 * -1.0;
        auVar2._4_4_ = fVar11;
        auVar2._0_4_ = fVar11;
        auVar2._8_4_ = fVar11;
        auVar2._12_4_ = fVar11;
        auVar13 = maxps(auVar9,auVar2);
        auVar10._4_4_ = -(uint)(auVar13._4_4_ <= 1.5258789e-05);
        auVar10._0_4_ = -(uint)(auVar13._0_4_ <= 1.5258789e-05);
        auVar10._8_4_ = -(uint)(auVar13._8_4_ <= 1.5258789e-05);
        auVar10._12_4_ = -(uint)(auVar13._12_4_ <= 1.5258789e-05);
        iVar5 = movmskps(extraout_EDX,auVar10);
        if ((iVar5 != 0xf) && (*(float *)((int)this + 8) + FLOAT_01192d70 <= DAT_011ceda8)) {
          *(float *)((int)this + 8) = DAT_011ceda8;
          iVar5 = FUN_007cef40();
          if (iVar5 != 0) {
            local_40 = *(float *)(iVar5 + 0x60);
            fStack_3c = *(float *)(iVar5 + 100);
            fStack_38 = *(float *)(iVar5 + 0x68);
            uStack_34 = *(undefined4 *)(iVar5 + 0x6c);
            pvVar3 = (void *)CollisionService_GetGlobal();
            local_b4 = (void *)0x0;
            local_b0 = 0;
            local_ac = 0;
            local_a8 = "Physics/RangeResult";
            FUN_00687030(pvVar3,&local_40,FLOAT_01192d30,4,(int *)&local_b4,'\0');
            local_a4 = ObjectRegistry_GetGlobal();
            uVar6 = local_b0 - (int)local_b4 >> 3;
            local_c0 = 0;
            if (uVar6 != 0) {
              do {
                pvVar3 = ObjectRegistry_FindBorrowed
                                   (local_a4,CONCAT44(*(undefined4 *)
                                                       ((int)local_b4 + local_c0 * 8 + 4),
                                                      *(undefined4 *)((int)local_b4 + local_c0 * 8))
                                   );
                if (((pvVar3 != (void *)0x0) && (iVar5 = FUN_00789260(pvVar3), iVar5 != 0)) &&
                   (uVar4 = TreeComponent_HasLeafDropPoints(iVar5), (char)uVar4 != '\0')) {
                  pfVar1 = *(float **)(*(int *)(iVar5 + 8) + 0xc);
                  for (pfVar7 = *(float **)(*(int *)(iVar5 + 8) + 8); pfVar7 != pfVar1;
                      pfVar7 = pfVar7 + 0x14) {
                    local_30 = (pfVar7[2] - fStack_38) * (pfVar7[2] - fStack_38) +
                               (pfVar7[1] - fStack_3c) * (pfVar7[1] - fStack_3c) +
                               (*pfVar7 - local_40) * (*pfVar7 - local_40);
                    local_20 = FLOAT_01192d30 * FLOAT_01192d30;
                    if ((local_30 <= local_20) &&
                       (fVar8 = TreeVariation_DrawUniform((int *)((int)this + 0xc)),
                       fVar8 <= (float10)FLOAT_01192d74)) {
                      FUN_00d68cf0(this,iVar5,pfVar7);
                    }
                  }
                }
                local_c0 = local_c0 + 1;
              } while (local_c0 < uVar6);
            }
            if (local_b4 != (void *)0x0) {
              Memory_FreeIfNonNull(local_b4);
            }
          }
        }
      }
    }
  }
  return;
}

