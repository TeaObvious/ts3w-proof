/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_Pick. Export ordinal(s): 2686. Entry
   VA: 0x10998c40. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004D1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence.
   
   Analyst CAW1.22.10 original camera/picking instruction contract. Complete
   body10998C40..10998EAB,620bytes;cdecl5stackwords,plainRET; returnsUInt32EAX0/1. Physical args
   signedscreenX,signedscreenY,collisionLayerword,RayCastHit48Out,tryPickWaterLOWBYTE at
   entrySP+14h. Uses global10C76170 via104DE3A0 then scene+24 camera via109A5B50; no local
   nullscene/camera guard before105C2650. Builds camera-origin/farClip segment,then only after that
   rejects missing globalcollisionservice1047DD40 or lowbytefalse from1047E270. Selected
   collisioncall has ECXservice
   plus5stackwords(origin4,endpoint4,collisionLayer,localHit,lastConstant1); whole collision
   filtering policy is not expanded here. Water branch requires nonzero tryWater AND BOTH localHit
   UInt32words at+30/+34 zero; then missing globalworld10C700C4 returns0 even after collision
   success. Uses10235540 waterheight and105C0E20 three-point plane intersection, compares XYZ
   distances viaSQRTPS/COMISS; JBE retains existinghit onless/equal/unordered, otherwise
   replacesONLY4-float hitposition. Does not synthesize a new normal/material/object field.
   Conversion10986BD0 thenREP MOVSD copies exactly12DWORDs/48bytes to external output; every false
   path leaves caller output untouched. Complete collision/plane/conversion semantics remain
   selected child static questions. */

uint __cdecl
WorldWrap_Pick(int screenX,int screenY,int collisionLayer,void *rayCastHit48Out,
              byte tryPickWaterLowByte)

{
  byte bVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  float10 fVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 local_100 [8];
  float fStack_f8;
  float fStack_f4;
  undefined1 local_f0 [8];
  float fStack_e8;
  float fStack_e4;
  float local_dc;
  float local_d8;
  float local_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_b8;
  float local_b4;
  undefined4 local_b0;
  float local_ac;
  float local_a8;
  undefined4 local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  undefined4 local_80 [4];
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  int local_50;
  int local_4c;
  undefined4 local_40 [15];
  
                    /* 0x998c40  2686  WorldWrap_Pick */
  iVar2 = FUN_104de3a0();
  pvVar3 = (void *)FUN_109a5b50(iVar2);
  CAW_BuildCameraPickSegment(pvVar3,screenX,screenY,&local_a0,&local_90);
  pvVar3 = (void *)FUN_1047dd40();
                    /* Scoped ABI evidence only: ECXcollisionservice; five pushed stackwords
                       origin,endpoint,collisionLayer,localHit,constant1; result tested inAL. No
                       global callee retyping. */
  if ((pvVar3 != (void *)0x0) &&
     (bVar1 = FUN_1047e270(pvVar3,&local_a0,&local_90,collisionLayer,local_80,1), bVar1 != 0)) {
    if ((tryPickWaterLowByte != 0) && (local_50 == 0 && local_4c == 0)) {
      if (DAT_10c700c4 == 0) {
        return 0;
      }
      local_100._4_4_ = fStack_9c;
      local_100._0_4_ = local_a0;
      fStack_f8 = fStack_98;
      fStack_f4 = fStack_94;
      local_d0 = local_90 - local_a0;
      fStack_cc = fStack_8c - fStack_9c;
      fStack_c8 = fStack_88 - fStack_98;
      fStack_c4 = fStack_84 - fStack_94;
      local_f0._4_4_ = fStack_cc;
      local_f0._0_4_ = local_d0;
      fStack_e8 = fStack_c8;
      fStack_e4 = fStack_c4;
      fVar6 = FUN_10235540(DAT_10c700c4);
      fStack_cc = (float)fVar6;
      local_a8 = (float)fVar6;
      local_b4 = (float)fVar6;
      local_d8 = 0.0;
      local_d4 = 0.0;
      local_d0 = 0.0;
      fStack_c8 = 0.0;
      local_ac = 1.0;
      local_a4 = 0;
      local_b8 = 0.0;
      local_b0 = 0x3f800000;
      local_dc = 0.0;
      uVar4 = FUN_105c0e20((float *)local_100,(float *)local_f0,&local_d0,&local_ac,&local_b8,
                           &local_dc);
      if ((char)uVar4 != '\0') {
        auVar7._0_4_ = (fStack_68 - fStack_98) * (fStack_68 - fStack_98) +
                       (fStack_6c - fStack_9c) * (fStack_6c - fStack_9c) +
                       (local_70 - local_a0) * (local_70 - local_a0);
        auVar7._4_4_ = auVar7._0_4_;
        auVar7._8_4_ = auVar7._0_4_;
        auVar7._12_4_ = auVar7._0_4_;
        _local_100 = sqrtps(auVar7,auVar7);
        auVar8._0_4_ = (local_d4 - fStack_98) * (local_d4 - fStack_98) +
                       (local_d8 - fStack_9c) * (local_d8 - fStack_9c) +
                       (local_dc - local_a0) * (local_dc - local_a0);
        auVar8._4_4_ = auVar8._0_4_;
        auVar8._8_4_ = auVar8._0_4_;
        auVar8._12_4_ = auVar8._0_4_;
        _local_f0 = sqrtps(auVar8,auVar8);
                    /* COMISS(existingDistance,waterDistance); JBE retains original hit for <= or
                       unordered. Replacement updates only four position floats. */
        if ((float)local_f0._0_4_ < (float)local_100._0_4_) {
          local_70 = local_dc;
          fStack_6c = local_d8;
          fStack_68 = local_d4;
          fStack_64 = local_dc;
        }
      }
    }
    puVar5 = (undefined4 *)FUN_10986bd0(local_40,local_80);
    for (iVar2 = 0xc; iVar2 != 0; iVar2 = iVar2 + -1) {
      *(undefined4 *)rayCastHit48Out = *puVar5;
      puVar5 = puVar5 + 1;
      rayCastHit48Out = (undefined4 *)((int)rayCastHit48Out + 4);
    }
    return 1;
  }
  return 0;
}

