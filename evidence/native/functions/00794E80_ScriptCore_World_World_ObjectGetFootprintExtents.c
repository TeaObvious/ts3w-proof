/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636d8 (TS3W.exe).
   ScriptCore.World::World_ObjectGetFootprintExtents [assembly=ScriptCore token=0x060007DB; objId:
   System.UInt64, footprintNameHash: System.UInt32, v0: Sims3.SimIFace.Vector2&, v1:
   Sims3.SimIFace.Vector2&, level: System.SByte&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed registered
   contract: 64-bit GUID in two stack words, cdecl, AL bool. Requires footprint, transform and level
   components. Deep-collects named polygons. Output signed level is low byte of (component+0x18
   except 0x7fffffff =>0) + last matching record relative level. Rotates all (x,0,z) vertices by
   world quaternion and translates them; reduces world XZ bounds. Valid component path writes
   outputs even for empty geometry: +/-FLT_MAX and possibly 0x80 level, then false. Earlier
   missing-component exits preserve managed initialized zeros. */

bool __cdecl
ScriptCore.World::World_ObjectGetFootprintExtents
          (ulonglong objectGuid,uint footprintNameHash,float *outMinXZ,float *outMaxXZ,
          char *outLevel)

{
  undefined4 *puVar1;
  undefined1 auVar2 [16];
  undefined4 uVar3;
  void *pvVar4;
  void *this;
  void *this_00;
  float *pfVar5;
  undefined4 *puVar6;
  bool bVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  char local_71;
  undefined4 *local_70;
  undefined4 *local_6c;
  undefined4 local_68;
  char *local_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined1 local_50 [16];
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  if ((pvVar4 != (void *)0x0) &&
     (pvVar4 = ObjectRegistry_FindBorrowed(pvVar4,objectGuid), pvVar4 != (void *)0x0)) {
    this = Object_GetComponentByMask(pvVar4,DAT_011e9fa8);
    this_00 = Object_GetComponentByMask(pvVar4,DAT_011ea158);
    pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011edf08);
    if ((this != (void *)0x0) && ((this_00 != (void *)0x0 && (pvVar4 != (void *)0x0)))) {
      TransformComponent_GetWorldQuaternionTranslation(this_00,&local_30);
      local_70 = (undefined4 *)0x0;
      local_6c = (undefined4 *)0x0;
      local_68 = 0;
      local_64 = "Objects/FootprintComponent/FootprintFlags";
      FootprintComponent_CollectNamedPolygons(this,footprintNameHash,&local_70,&local_71);
      local_60 = DAT_01011890;
      uVar3 = DAT_00fccba4;
      *outLevel = (-(*(int *)((int)pvVar4 + 0x18) != 0x7fffffff) &
                  (byte)*(int *)((int)pvVar4 + 0x18)) + local_71;
      local_50._4_4_ = uVar3;
      local_50._0_4_ = uVar3;
      local_50._8_4_ = uVar3;
      local_50._12_4_ = uVar3;
      uStack_5c = local_60;
      uStack_58 = local_60;
      uStack_54 = local_60;
      if (local_70 != local_6c) {
        puVar6 = local_70 + 0xc;
        do {
          pfVar5 = (float *)*puVar6;
          while (pfVar5 != (float *)puVar6[1]) {
            fVar12 = pfVar5[1];
            fVar13 = *pfVar5;
            fVar8 = (fVar12 * fStack_2c - fStack_28 * 0.0) + fStack_24 * fVar13;
            fVar10 = (fVar13 * fStack_28 - fVar12 * local_30) + fStack_24 * 0.0;
            fVar11 = (local_30 * 0.0 - fVar13 * fStack_2c) + fStack_24 * fVar12;
            fVar9 = (fVar11 * fStack_2c - fVar10 * fStack_28) * DAT_0103fd88 + fVar13 + local_20;
            fVar11 = (fVar8 * fStack_28 - fVar11 * local_30) * DAT_0103fd88 + 0.0 + fStack_1c;
            fVar12 = (fVar10 * local_30 - fVar8 * fStack_2c) * DAT_0103fd88 + fVar12 + fStack_18;
            fVar13 = (fVar8 * local_30 - fVar8 * local_30) * DAT_0103fd88 + fVar13 + fStack_14;
            auVar14._4_4_ = uStack_5c;
            auVar14._0_4_ = local_60;
            auVar14._8_4_ = uStack_58;
            auVar14._12_4_ = uStack_54;
            pfVar5 = pfVar5 + 2;
            auVar15._4_4_ = fVar11;
            auVar15._0_4_ = fVar9;
            auVar15._8_4_ = fVar12;
            auVar15._12_4_ = fVar13;
            auVar15 = minps(auVar14,auVar15);
            local_60 = auVar15._0_4_;
            uStack_5c = auVar15._4_4_;
            uStack_58 = auVar15._8_4_;
            uStack_54 = auVar15._12_4_;
            auVar2._4_4_ = fVar11;
            auVar2._0_4_ = fVar9;
            auVar2._8_4_ = fVar12;
            auVar2._12_4_ = fVar13;
            local_50 = maxps(local_50,auVar2);
          }
          puVar1 = puVar6 + 4;
          puVar6 = puVar6 + 0x10;
        } while (puVar1 != local_6c);
      }
      local_40 = local_60;
      uStack_3c = uStack_5c;
      uStack_38 = uStack_58;
      uStack_34 = uStack_54;
      FUN_0076bf50(outMinXZ,local_60,uStack_58);
      local_40 = local_50._0_4_;
      uStack_3c = local_50._4_4_;
      uStack_38 = local_50._8_4_;
      uStack_34 = local_50._12_4_;
      FUN_0076bf50(outMaxXZ,local_50._0_4_,local_50._8_4_);
      bVar7 = local_70 != local_6c;
      FootprintPolygonVector_Destroy((uint *)&local_70);
      return bVar7;
    }
  }
  return false;
}

