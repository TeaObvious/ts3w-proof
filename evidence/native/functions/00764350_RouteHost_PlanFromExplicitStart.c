/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Builds one64-byte start candidate from supplied native float4.
   Resolves lot/level; facing defaults zero, weight1. If RouteOption2
   UseFollowerStartOrientation(0x200) or Opposite(0x400), fetches follower start and copies facing
   only when XYZ differences are each<=2^-16. Then calls00760770 and frees temporary vector. */

int * __thiscall RouteHost_PlanFromExplicitStart(void *this,int *param_1,float *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 extraout_EDX;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined4 local_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  int local_c0 [3];
  char *local_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  float local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_38 [13];
  
  local_c0[0] = 0;
  local_c0[1] = 0;
  local_c0[2] = 0;
  local_b4 = "Routing/RoutingHost/startPoints";
  local_d4 = 0;
  local_8c = RoutePoint_ResolveLotAndLevel(param_2,&local_d4);
  local_b0 = *param_2;
  fStack_ac = param_2[1];
  fStack_a8 = param_2[2];
  fStack_a4 = param_2[3];
  fStack_c4 = 0.0;
  fStack_c8 = 0.0;
  fStack_cc = 0.0;
  local_d0 = 0.0;
  local_a0 = 0.0;
  uStack_9c = 0;
  uStack_98 = 0;
  uStack_94 = 0;
  local_90 = DAT_00f998f8;
  local_88 = 0;
  local_84 = 0;
  local_80 = 0;
  uVar1 = RoutingOptions_TestMask((void *)((int)this + 0x158),0x200,0,'\x01');
  uVar2 = RoutingOptions_TestMask((void *)((int)this + 0x158),0x400,0,'\x01');
  if (((char)uVar1 != '\0') || ((char)uVar2 != '\0')) {
    iVar3 = RouteHost_ReadFollowerStartPose(this,&local_d0,&local_70,local_38);
    if (iVar3 == 1) {
      auVar4._0_4_ = DAT_00fab218 * (local_d0 - *param_2);
      auVar4._4_4_ = DAT_00fab218 * (fStack_cc - param_2[1]);
      auVar4._8_4_ = DAT_00fab218 * (fStack_c8 - param_2[2]);
      auVar4._12_4_ = DAT_00fab218 * (fStack_c4 - param_2[3]);
      auVar5._4_4_ = fStack_cc - param_2[1];
      auVar5._0_4_ = local_d0 - *param_2;
      auVar5._8_4_ = fStack_c8 - param_2[2];
      auVar5._12_4_ = fStack_c4 - param_2[3];
      auVar5 = maxps(auVar4,auVar5);
      auVar6._4_4_ = -(uint)(auVar5._4_4_ <= DAT_0100519c);
      auVar6._0_4_ = -(uint)(auVar5._0_4_ <= DAT_0100519c);
      auVar6._8_4_ = -(uint)(auVar5._8_4_ <= DAT_0100519c);
      auVar6._12_4_ = -(uint)(auVar5._12_4_ <= DAT_0100519c);
      uVar1 = movmskps(extraout_EDX,auVar6);
      if (((byte)uVar1 & 7) == 7) {
        local_a0 = local_70;
        uStack_9c = uStack_6c;
        uStack_98 = uStack_68;
        uStack_94 = uStack_64;
      }
    }
  }
  FUN_00654980(local_c0,&local_b0);
  RouteHost_PlanFromStartCandidates(this,param_1,local_c0);
  if (local_c0[0] != 0) {
    FUN_004e44e0(local_c0[0]);
  }
  return param_1;
}

