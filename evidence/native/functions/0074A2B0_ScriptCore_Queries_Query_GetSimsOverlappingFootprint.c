/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Registered cdecl
   managed Type, full GUID, footprint hash and float simRadius. Named polygon copies supply stored
   local bounds for nonempty vertex records. Min initialization is FLT_MAX; max initialization is
   positive FLT_MIN (0x00800000 at 0x01004db8), not negative FLT_MAX. Physics range query 0x00687030
   uses mask 6, transformed combined bounds center and half-diagonal radius, without adding
   simRadius. Candidate level must equal sign-extended relative byte plus full base level. Positions
   transform to owner local XZ. Positive simRadius uses inclusive disc-to-edge distance; radius <=0
   uses strict-X point kernel. Swap-with-end removals make order unstable. Host slot +0xc0
   materializes the requested managed Type array. Missing prerequisites/no nonempty polygon yields
   NULL; valid zero hits materialize empty array. Host/lookup prototype artifacts are governed by
   original stack pushes. */

void * __cdecl
ScriptCore.Queries::Query_GetSimsOverlappingFootprint
          (void *managedType,ulonglong objectGuid,uint footprintNameHash,float simRadius)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  bool bVar3;
  void *pvVar4;
  void *this;
  float *pfVar5;
  int *piVar6;
  ulonglong *puVar7;
  float *pfVar8;
  int iVar9;
  float fVar10;
  undefined1 auVar11 [12];
  float fVar14;
  float fVar15;
  float fVar16;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  float fVar17;
  float fVar18;
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined4 in_stack_00000008;
  char local_149;
  ulonglong *local_148;
  void *local_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  int local_120;
  int local_11c;
  undefined4 local_118;
  char *local_114;
  undefined1 local_110 [4];
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float *local_100;
  float *local_fc;
  undefined4 local_f8;
  char *local_f4;
  undefined1 local_f0 [8];
  float fStack_e8;
  float fStack_e4;
  ulonglong *local_e0;
  ulonglong *local_dc;
  undefined4 local_d8;
  char *local_d4;
  uint local_d0;
  void *local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  char *local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  char *local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 local_40 [8];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  local_cc = pvVar4;
  local_144 = (void *)CollisionService_GetGlobal();
  if (((pvVar4 != (void *)0x0) && (local_144 != (void *)0x0)) &&
     (pvVar4 = ObjectRegistry_FindBorrowed
                         (pvVar4,CONCAT44((undefined4)objectGuid,in_stack_00000008)),
     pvVar4 != (void *)0x0)) {
    this = Object_GetComponentByMask(pvVar4,DAT_011e9fa8);
    local_148 = Object_GetComponentByMask(pvVar4,DAT_011ea158);
    pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011edf08);
    if (((this != (void *)0x0) && (local_148 != (void *)0x0)) && (pvVar4 != (void *)0x0)) {
      TransformComponent_GetWorldQuaternionTranslation(local_148,&local_a0);
      local_100 = (float *)0x0;
      local_fc = (float *)0x0;
      local_f8 = 0;
      local_f4 = "Scripting/QueryHost/FootprintPolygons";
      FootprintComponent_CollectNamedPolygons(this,objectGuid._4_4_,&local_100,&local_149);
      pfVar5 = local_fc;
      local_d0 = (int)local_149 +
                 (-(uint)(*(uint *)((int)pvVar4 + 0x18) != 0x7fffffff) &
                 *(uint *)((int)pvVar4 + 0x18));
      fStack_e8 = 3.4028235e+38;
      local_f0 = (undefined1  [8])0x7f7fffff7f7fffff;
      fStack_e4 = 3.4028235e+38;
      local_140 = 1.1754944e-38;
      fStack_108 = 1.1754944e-38;
      _local_110 = 0x80000000800000;
      fStack_104 = 1.1754944e-38;
      local_120 = 0;
      local_11c = 0;
      local_118 = 0;
      local_114 = "Scripting/QueryHost/ClipPolygons";
      fStack_13c = local_140;
      fStack_138 = local_140;
      fStack_134 = local_140;
      FUN_00b7c070(&local_120,(int)local_fc - (int)local_100 >> 6);
      if (local_100 != pfVar5) {
        pfVar8 = local_100 + 8;
        do {
          if (pfVar8[4] != pfVar8[5]) {
            local_140 = *pfVar8;
            fStack_13c = pfVar8[1];
            auVar20._8_4_ = local_140;
            auVar20._0_8_ = *(undefined8 *)pfVar8;
            auVar20._12_4_ = local_140;
            _local_f0 = minps(_local_f0,auVar20);
            local_130 = pfVar8[2];
            fStack_12c = pfVar8[3];
            auVar2._8_4_ = local_130;
            auVar2._0_8_ = *(undefined8 *)(pfVar8 + 2);
            auVar2._12_4_ = local_130;
            _local_110 = maxps(_local_110,auVar2);
            fStack_138 = local_140;
            fStack_134 = local_140;
            fStack_128 = local_130;
            fStack_124 = local_130;
            FUN_0074a240(&local_120);
            FUN_00629ab0((void *)(local_11c + -0x10),(int *)(pfVar8 + 4));
          }
          pfVar1 = pfVar8 + 8;
          pfVar8 = pfVar8 + 0x10;
        } while (pfVar1 != pfVar5);
      }
      if (local_120 != local_11c) {
        local_130 = ((float)local_110 + (float)local_f0._0_4_) * 0.5;
        fStack_128 = (fStack_10c + (float)local_f0._4_4_) * 0.5;
        fVar17 = ((float)local_110 - (float)local_f0._0_4_) * 0.5;
        fVar18 = (fStack_10c - (float)local_f0._4_4_) * 0.5;
        fStack_12c = 0.0;
        fVar10 = (fStack_128 * fStack_9c - fStack_98 * 0.0) + fStack_94 * local_130;
        fVar14 = (local_130 * fStack_98 - fStack_128 * local_a0) + fStack_94 * 0.0;
        fVar15 = (local_a0 * 0.0 - local_130 * fStack_9c) + fStack_94 * fStack_128;
        auVar19._8_4_ = 0x40000000;
        auVar19._0_8_ = 0x4000000040000000;
        auVar19._12_4_ = 0x40000000;
        fVar17 = fVar17 * fVar17;
        fVar18 = fVar18 * fVar18;
        local_70 = (fVar15 * fStack_9c - fVar14 * fStack_98) * 2.0 + local_130 + local_90;
        fStack_6c = (fVar10 * fStack_98 - fVar15 * local_a0) * 2.0 + 0.0 + fStack_8c;
        fStack_68 = (fVar14 * local_a0 - fVar10 * fStack_9c) * 2.0 + fStack_128 + fStack_88;
        fStack_64 = (fVar10 * local_a0 - fVar10 * local_a0) * 2.0 + local_130 + fStack_84;
        auVar12._0_4_ = fVar18 + fVar17;
        auVar12._4_4_ = fVar18 + fVar17;
        auVar12._8_4_ = fVar18 + fVar17;
        auVar12._12_4_ = fVar18 + fVar17;
        _local_110 = sqrtps(auVar12,auVar12);
        local_e0 = (ulonglong *)0x0;
        local_dc = (ulonglong *)0x0;
        local_d8 = 0;
        local_d4 = "Physics/RangeResult";
        fStack_124 = local_130;
        _local_f0 = auVar19;
        FUN_00687030(local_144,&local_70,(float)local_110,6,(int *)&local_e0,'\0');
        local_148 = local_dc;
        local_c0 = 0;
        local_bc = 0;
        local_b8 = 0;
        local_b4 = "Physics/PolygonProcessor";
        local_b0 = 0;
        auVar13._0_4_ =
             fStack_94 * fStack_94 + fStack_9c * fStack_9c +
             fStack_98 * fStack_98 + local_a0 * local_a0;
        auVar13._4_4_ = auVar13._0_4_;
        auVar13._8_4_ = auVar13._0_4_;
        auVar13._12_4_ = auVar13._0_4_;
        auVar20 = rcpps(auVar19,auVar13);
        fVar10 = ((float)local_f0._0_4_ - auVar20._0_4_ * auVar13._0_4_) * auVar20._0_4_;
        fVar14 = ((float)local_f0._4_4_ - auVar20._4_4_ * auVar13._0_4_) * auVar20._4_4_;
        fVar15 = (fStack_e8 - auVar20._8_4_ * auVar13._0_4_) * auVar20._8_4_;
        fVar17 = (fStack_e4 - auVar20._12_4_ * auVar13._0_4_) * auVar20._12_4_;
        local_144 = (void *)0x80000000;
        auVar11._0_4_ = ((float)local_f0._0_4_ - fVar10 * auVar13._0_4_) * fVar10 * -local_a0;
        auVar11._4_4_ = ((float)local_f0._4_4_ - fVar14 * auVar13._0_4_) * fVar14 * -fStack_9c;
        auVar11._8_4_ = (fStack_e8 - fVar15 * auVar13._0_4_) * fVar15 * -fStack_98;
        local_80 = (fStack_e4 - fVar17 * auVar13._0_4_) * fVar17 * fStack_94;
        fVar10 = (fStack_88 * auVar11._4_4_ - fStack_8c * auVar11._8_4_) + local_90 * local_80;
        fVar14 = (local_90 * auVar11._8_4_ - fStack_88 * auVar11._0_4_) + fStack_8c * local_80;
        fVar15 = (fStack_8c * auVar11._0_4_ - local_90 * auVar11._4_4_) + fStack_88 * local_80;
        local_20 = 0.0 - ((fVar15 * auVar11._4_4_ - fVar14 * auVar11._8_4_) * (float)local_f0._0_4_
                         + local_90);
        fStack_1c = 0.0 - ((fVar10 * auVar11._8_4_ - fVar15 * auVar11._0_4_) * (float)local_f0._4_4_
                          + fStack_8c);
        fStack_18 = 0.0 - ((fVar14 * auVar11._0_4_ - fVar10 * auVar11._4_4_) * fStack_e8 + fStack_88
                          );
        fStack_14 = 0.0 - ((fVar10 * auVar11._0_4_ - fVar10 * auVar11._0_4_) * fStack_e4 + fStack_84
                          );
        local_ac = 0;
        local_a8 = 0;
        local_a4 = "Physics/PolygonProcessor";
        fStack_108 = auVar11._0_4_;
        _local_110 = auVar11._4_8_;
        fStack_104 = auVar11._0_4_;
        puVar7 = local_e0;
        local_130 = auVar11._8_4_;
        fStack_12c = auVar11._0_4_;
        fStack_128 = auVar11._4_4_;
        fStack_124 = auVar11._0_4_;
        fStack_7c = local_80;
        fStack_78 = local_80;
        fStack_74 = local_80;
        if (local_e0 != local_dc) {
          do {
            pvVar4 = ObjectRegistry_FindBorrowed(local_cc,*puVar7);
            if (pvVar4 == (void *)0x0) {
LAB_0074a8bf:
              *(int *)puVar7 = (int)local_148[-1];
              *(undefined4 *)((int)puVar7 + 4) = *(undefined4 *)((int)local_148 + -4);
              local_148 = local_148 + -1;
            }
            else {
              local_144 = Object_GetComponentByMask(pvVar4,DAT_011ea158);
              pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011edf08);
              if (((local_144 == (void *)0x0) || (pvVar4 == (void *)0x0)) ||
                 ((-(uint)(*(uint *)((int)pvVar4 + 0x18) != 0x7fffffff) &
                  *(uint *)((int)pvVar4 + 0x18)) != local_d0)) goto LAB_0074a8bf;
              pfVar5 = TransformComponent_GetWorldPosition(local_144,local_40);
              fVar10 = *pfVar5;
              fVar14 = pfVar5[1];
              fVar15 = pfVar5[2];
              fVar17 = (fVar15 * (float)local_110 - fVar14 * local_130) + fVar10 * local_80;
              fVar18 = (fVar10 * fStack_10c - fVar15 * fStack_12c) + fVar14 * fStack_7c;
              fVar16 = (fVar14 * fStack_108 - fVar10 * fStack_128) + fVar15 * fStack_78;
              local_140 = (fVar16 * (float)local_110 - fVar18 * local_130) * (float)local_f0._0_4_ +
                          fVar10 + local_20;
              fStack_5c = (fVar17 * fStack_10c - fVar16 * fStack_12c) * (float)local_f0._4_4_ +
                          fVar14 + fStack_1c;
              fStack_13c = (fVar18 * fStack_108 - fVar17 * fStack_128) * fStack_e8 + fVar15 +
                           fStack_18;
              fStack_54 = (fVar17 * fStack_104 - fVar17 * fStack_124) * fStack_e4 + pfVar5[3] +
                          fStack_14;
              local_60 = local_140;
              fStack_58 = fStack_13c;
              local_50 = local_140;
              fStack_4c = fStack_5c;
              fStack_48 = fStack_13c;
              fStack_44 = fStack_54;
              if (0.0 < (float)footprintNameHash) {
                bVar3 = Geometry_DiscOverlapsAnyPolygon
                                  (&local_120,&local_140,(float)footprintNameHash);
              }
              else {
                bVar3 = Geometry_PointInAnyPolygon(&local_120,&local_140);
              }
              if (bVar3 == false) goto LAB_0074a8bf;
              puVar7 = puVar7 + 1;
            }
          } while (puVar7 != local_148);
        }
        puVar7 = local_148;
        piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
        iVar9 = (int)puVar7 - (int)local_e0 >> 3;
        local_c8 = 0;
        local_c4 = 0;
        puVar7 = local_e0;
        if (iVar9 == 0) {
          puVar7 = (ulonglong *)&local_c8;
        }
        pvVar4 = (void *)(**(code **)(*piVar6 + 0xc0))(managedType,puVar7,iVar9);
        FUN_007996b0((int *)&local_cc);
        if ((void *)local_f0._4_4_ != (void *)0x0) {
          Memory_FreeIfNonNull((void *)local_f0._4_4_);
        }
        FUN_00629730((int *)&fStack_12c);
        FootprintPolygonVector_Destroy((uint *)&fStack_10c);
        return pvVar4;
      }
      FUN_00629730(&local_120);
      FootprintPolygonVector_Destroy((uint *)&local_100);
    }
  }
  return (void *)0x0;
}

