/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Reviewed PC 1.67 world ground-height query. Bounds are min-inclusive/max-exclusive; outside
   returns -100. When requested, first find a lot-grid owner and its requested-level floor (AE08E0).
   Optional lot-terrain sampling can compare against the collider query. If the current height
   remains within 1.5258789e-5 of the -100 sentinel, fall back to C29080. Swarm terrain collision
   calls this with level=0, tryLotFloor=true, tryLotTerrain=false. Pointer-looking local height
   values and SIMD temporaries are decompiler type artifacts; this is not a bilinear height-map-only
   query. */

float10 __thiscall
TS3W_QueryWorldGroundHeight
          (void *param_1,float gameX,float gameZ,undefined4 floorLevel,char tryLotFloor,
          char tryLotTerrain,undefined1 *outLotFloorHit,undefined1 *outLotTerrainHit)

{
  uint in_EAX;
  void *this;
  uint extraout_EAX;
  uint extraout_EAX_00;
  int iVar1;
  undefined1 uVar2;
  float10 fVar3;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar7;
  undefined1 local_1d;
  void *local_1c;
  float local_18;
  void *local_14 [4];

  local_1c = (void *)0xc2c80000;
  uVar2 = 0;
  local_1d = 0;
  if ((((gameX < *(float *)((int)param_1 + 0xb4)) || (gameZ < *(float *)((int)param_1 + 0xb8))) ||
      (*(float *)((int)param_1 + 0xbc) <= gameX)) ||
     (*(float *)((int)param_1 + 0xc4) + *(float *)((int)param_1 + 0xc0) <= gameZ))
  goto LAB_00c60dfb;
  if ((tryLotFloor == '\0') || (*(void **)((int)param_1 + 0x16c) == (void *)0x0)) {
LAB_00c60ce6:
    if (tryLotTerrain != '\0') {
      local_14[0] = (void *)0x0;
      local_18 = -1.0;
      if (*(void **)((int)param_1 + 0x5c) != (void *)0x0) {
        in_EAX = FUN_00b77f60(*(void **)((int)param_1 + 0x5c),gameX,gameZ,'\x01','\0',local_14,
                              &local_18,'\x01');
        if ((char)in_EAX != '\0') {
          fVar3 = FUN_00b73130(local_14[0],gameX,gameZ);
          local_1c = (void *)(float)fVar3;
          uVar2 = 1;
          in_EAX = extraout_EAX;
          if (*(void **)((int)param_1 + 0x54) != (void *)0x0) {
            fVar3 = FUN_00c29080(*(void **)((int)param_1 + 0x54),gameX,gameZ);
            local_14[0] = (void *)(float)fVar3;
            in_EAX = extraout_EAX_00;
            if ((float10)(float)local_1c < fVar3) {
              uVar2 = 0;
              local_1c = local_14[0];
            }
          }
        }
      }
    }
  }
  else {
    this = FUN_00c7e010(*(void **)((int)param_1 + 0x16c),gameX,gameZ);
    in_EAX = 0;
    if (this == (void *)0x0) goto LAB_00c60ce6;
    in_EAX = FUN_00ae08e0(this,gameX,gameZ,floorLevel,(float *)&local_1c);
    if ((char)in_EAX == '\0') goto LAB_00c60ce6;
    local_1d = 1;
  }
  fVar7 = (float)local_1c - -100.0;
  auVar4._0_4_ = fVar7 * -1.0;
  auVar4._4_4_ = fVar7 * -1.0;
  auVar4._8_4_ = fVar7 * -1.0;
  auVar4._12_4_ = fVar7 * -1.0;
  auVar5._4_4_ = fVar7;
  auVar5._0_4_ = fVar7;
  auVar5._8_4_ = fVar7;
  auVar5._12_4_ = fVar7;
  auVar5 = maxps(auVar4,auVar5);
  auVar6._4_4_ = -(uint)(auVar5._4_4_ <= 1.5258789e-05);
  auVar6._0_4_ = -(uint)(auVar5._0_4_ <= 1.5258789e-05);
  auVar6._8_4_ = -(uint)(auVar5._8_4_ <= 1.5258789e-05);
  auVar6._12_4_ = -(uint)(auVar5._12_4_ <= 1.5258789e-05);
  iVar1 = movmskps(in_EAX,auVar6);
  if ((iVar1 == 0xf) && (*(void **)((int)param_1 + 0x54) != (void *)0x0)) {
                    /* Fallback to collision-query ground height while the height is still the -100
                       sentinel. */
    fVar3 = FUN_00c29080(*(void **)((int)param_1 + 0x54),gameX,gameZ);
    local_1c = (void *)(float)fVar3;
  }
LAB_00c60dfb:
  if (outLotFloorHit != (undefined1 *)0x0) {
    *outLotFloorHit = local_1d;
  }
  if (outLotTerrainHit != (undefined1 *)0x0) {
    *outLotTerrainHit = uVar2;
  }
  return (float10)(float)local_1c;
}

