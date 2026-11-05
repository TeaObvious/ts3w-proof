/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011636e8 (TS3W.exe).
   ScriptCore.World::World_ObjectFootprintContainsPoints [assembly=ScriptCore token=0x060007DD;
   objId: System.UInt64, footprintNameHash: System.UInt32, objIdsToCompare: System.UInt64[],
   results: System.Int32[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed registered
   contract: cdecl GUID, hash, UI8 SAFEARRAY and ref I4 SAFEARRAY. Host +0x68 exposes buffer/count.
   Each loop reads input GUID[ESI], resolves comparison object, gets transform via 0x0055e050 and
   world position via 0x00957a30. No local comparison-object null guard. Inverts source quaternion
   with RCPPS plus two Newton steps; transforms comparison world position into local XZ. Requires
   world index. Inside a lot compares signed byte effective level, outside bypasses. Appends index
   once per matching polygon with no break or deduplication. AL true iff indices exist; only then
   host +0x8c/+0xa4 replaces results. No hits preserve incoming result reference. Missing GUID args
   and host this in decompiler are artifacts. */

bool __cdecl
ScriptCore.World::World_ObjectFootprintContainsPoints
          (ulonglong objectGuid,uint footprintNameHash,void *objectGuidSafeArray,
          void *resultsSafeArrayRef)

{
  int *piVar1;
  int *piVar2;
  bool bVar3;
  void *pvVar4;
  void *this;
  void *this_00;
  int *piVar5;
  int iVar6;
  int *unaff_EBX;
  int *piVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined1 in_XMM4 [16];
  undefined1 auVar13 [16];
  bool local_133;
  char local_132;
  char local_131;
  int *local_130;
  int local_12c;
  int iStack_128;
  int local_124;
  void *local_120;
  int iStack_11c;
  undefined4 uStack_118;
  char *pcStack_114;
  int *local_110;
  int *local_10c;
  undefined4 local_108;
  char *local_104;
  int *local_100;
  void *local_fc;
  void *local_f8;
  LotXZLevel local_f4;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
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
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_133 = false;
  local_f8 = ObjectRegistry_GetGlobal();
  if ((local_f8 != (void *)0x0) &&
     (pvVar4 = ObjectRegistry_FindBorrowed(local_f8,objectGuid), pvVar4 != (void *)0x0)) {
    this = Object_GetComponentByMask(pvVar4,DAT_011e9fa8);
    this_00 = Object_GetComponentByMask(pvVar4,DAT_011ea158);
    pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011edf08);
    if ((this != (void *)0x0) && ((this_00 != (void *)0x0 && (pvVar4 != (void *)0x0)))) {
      local_110 = (int *)0x0;
      local_10c = (int *)0x0;
      local_108 = 0;
      local_104 = "World/WorldHost/ObjectFootprintContainsPoint";
      FootprintComponent_CollectNamedPolygons(this,footprintNameHash,&local_110,&local_132);
      local_131 = (-(*(int *)((int)pvVar4 + 0x18) != 0x7fffffff) &
                  (byte)*(int *)((int)pvVar4 + 0x18)) + local_132;
      local_f4.x = -1.0;
      local_f4.z = -1.0;
      local_f4.level = 0;
      local_fc = DAT_011edbc4;
      if (DAT_011edbc4 != (void *)0x0) {
        local_100 = local_10c;
        TransformComponent_GetWorldQuaternionTranslation(this_00,&local_50);
        fVar8 = fStack_44 * fStack_44 + fStack_4c * fStack_4c +
                fStack_48 * fStack_48 + local_50 * local_50;
        auVar13._4_4_ = fVar8;
        auVar13._0_4_ = fVar8;
        auVar13._8_4_ = fVar8;
        auVar13._12_4_ = fVar8;
        auVar13 = rcpps(in_XMM4,auVar13);
        fVar9 = (2.0 - auVar13._0_4_ * fVar8) * auVar13._0_4_;
        fVar10 = (2.0 - auVar13._4_4_ * fVar8) * auVar13._4_4_;
        fVar11 = (2.0 - auVar13._8_4_ * fVar8) * auVar13._8_4_;
        fVar12 = (2.0 - auVar13._12_4_ * fVar8) * auVar13._12_4_;
        pcStack_114 = (char *)0x0;
        local_130 = (int *)0x80000000;
        uStack_118 = 0x80000000;
        iStack_11c = 0x80000000;
        local_120 = (void *)0x80000000;
        fStack_8c = (2.0 - fVar9 * fVar8) * fVar9 * -local_50;
        fStack_88 = (2.0 - fVar10 * fVar8) * fVar10 * -fStack_4c;
        local_90 = (2.0 - fVar11 * fVar8) * fVar11 * -fStack_48;
        local_60 = (2.0 - fVar12 * fVar8) * fVar12 * fStack_44;
        fVar8 = (fStack_38 * fStack_88 - fStack_3c * local_90) + local_60 * local_40;
        fVar9 = (local_40 * local_90 - fStack_38 * fStack_8c) + local_60 * fStack_3c;
        fVar10 = (fStack_3c * fStack_8c - local_40 * fStack_88) + local_60 * fStack_38;
        local_20 = 0.0 - ((fVar10 * fStack_88 - fVar9 * local_90) * 2.0 + local_40);
        fStack_1c = 0.0 - ((fVar8 * local_90 - fVar10 * fStack_8c) * 2.0 + fStack_3c);
        fStack_18 = 0.0 - ((fVar9 * fStack_8c - fVar8 * fStack_88) * 2.0 + fStack_38);
        fStack_14 = 0.0 - ((fVar8 * fStack_8c - fVar8 * fStack_8c) * 2.0 + fStack_34);
        local_c0 = 2.0;
        fStack_bc = 2.0;
        fStack_b8 = 2.0;
        fStack_b4 = 2.0;
        fStack_84 = fStack_8c;
        local_70 = fStack_88;
        fStack_6c = local_90;
        fStack_68 = fStack_8c;
        fStack_64 = fStack_8c;
        fStack_5c = local_60;
        fStack_58 = local_60;
        fStack_54 = local_60;
        piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
        local_12c = 0;
        local_124 = 0;
        local_130 = piVar5;
        (**(code **)(*piVar5 + 0x68))(objectGuidSafeArray,&local_12c,&local_124);
        if ((local_12c == 0) || (local_124 == 0)) {
          FootprintPolygonVector_Destroy((uint *)&local_110);
          return false;
        }
        local_120 = (void *)0x0;
        iStack_11c = 0;
        uStack_118 = 0;
        pcStack_114 = "World/Footprint";
        iStack_128 = 0;
        if (0 < local_124) {
          do {
            iVar6 = iStack_128;
            pvVar4 = ObjectRegistry_FindBorrowed
                               (local_f8,CONCAT44(*(undefined4 *)(local_12c + 4 + iStack_128 * 8),
                                                  *(undefined4 *)(local_12c + iStack_128 * 8)));
            pvVar4 = (void *)Object_GetTransformComponentOrNull(pvVar4);
            TransformComponent_GetWorldPosition(pvVar4,&fStack_e0);
            fStack_b0 = fStack_e0;
            fStack_ac = fStack_dc;
            fStack_a8 = fStack_d8;
            fStack_a4 = fStack_d4;
            fStack_d0 = fStack_e0;
            fStack_cc = fStack_dc;
            fStack_c8 = fStack_d8;
            fStack_c4 = fStack_d4;
            pvVar4 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_fc,fStack_e0,fStack_d8);
            if ((pvVar4 == (void *)0x0) ||
               (Lot_WorldPositionToLocalLocation(pvVar4,&fStack_e0,&local_f4),
               local_131 == local_f4.level)) {
              piVar2 = local_100;
              fVar8 = (fStack_d8 * local_70 - fStack_dc * local_90) + local_60 * fStack_e0;
              fVar9 = (fStack_e0 * fStack_6c - fStack_d8 * fStack_8c) + fStack_5c * fStack_dc;
              fVar10 = (fStack_dc * fStack_68 - fStack_e0 * fStack_88) + fStack_58 * fStack_d8;
              fStack_e8 = (fVar10 * local_70 - fVar9 * local_90) * local_c0 + fStack_e0 + local_20;
              fStack_9c = (fVar8 * fStack_6c - fVar10 * fStack_8c) * fStack_bc + fStack_dc +
                          fStack_1c;
              fStack_e4 = (fVar9 * fStack_68 - fVar8 * fStack_88) * fStack_b8 + fStack_d8 +
                          fStack_18;
              fStack_94 = (fVar8 * fStack_64 - fVar8 * fStack_84) * fStack_b4 + fStack_d4 +
                          fStack_14;
              fStack_a0 = fStack_e8;
              fStack_98 = fStack_e4;
              fStack_80 = fStack_e8;
              fStack_7c = fStack_9c;
              fStack_78 = fStack_e4;
              fStack_74 = fStack_94;
              if (local_110 != local_100) {
                piVar7 = local_110 + 0xc;
                do {
                  bVar3 = Geometry_PointInPolygonCrossing
                                    (&fStack_e8,(float *)*piVar7,piVar7[1] - *piVar7 >> 3);
                  if (bVar3) {
                    Int32Vector_AppendValue(&local_120,&iStack_128);
                  }
                  piVar1 = piVar7 + 4;
                  piVar7 = piVar7 + 0x10;
                } while (piVar1 != piVar2);
                iVar6 = iStack_128;
              }
            }
            iStack_128 = iVar6 + 1;
          } while (iStack_128 < local_124);
        }
        pvVar4 = local_120;
        iVar6 = iStack_11c - (int)local_120 >> 2;
        local_133 = 0 < iVar6;
        if (local_133) {
          (**(code **)(*piVar5 + 0x8c))(resultsSafeArrayRef,iVar6);
          (**(code **)(*unaff_EBX + 0xa4))(resultsSafeArrayRef,pvVar4,0,iVar6);
        }
        if (pvVar4 != (void *)0x0) {
          Memory_FreeIfNonNull(pvVar4);
        }
      }
      FootprintPolygonVector_Destroy((uint *)&local_110);
    }
  }
  return local_133;
}

