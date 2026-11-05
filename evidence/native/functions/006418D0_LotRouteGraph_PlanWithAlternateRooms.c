/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Numeric EAX lot-planner status. Calls0063ff00. If status5 and
   lot supplied, deduplicates rooms for goals and retries alternate room goals, including special
   <=0x10 room identities for exactly2 goals. Success0 returns early; exhausted retries retain5.
   Lower records use planar coordinates plus signed level rather than world Vector3. */

uint __thiscall
LotRouteGraph_PlanWithAlternateRooms
          (void *this,uint *param_1,int *param_2,float *param_3,float param_4,int *param_5,
          undefined4 *param_6,undefined4 *param_7,float *param_8,uint param_9,int *param_10,
          undefined4 param_11,int *param_12,undefined1 *param_13)

{
  float *pfVar1;
  int *piVar2;
  ushort uVar3;
  uint uVar4;
  int *piVar5;
  float *pfVar6;
  int local_38 [2];
  undefined4 local_30 [2];
  float local_28 [3];
  undefined1 local_1c [4];
  undefined4 **local_18;
  undefined4 **local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar2 = param_10;
  uVar4 = LotRouteGraph_PlanThroughPortals
                    (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,
                     param_10,param_11,param_12,param_13);
  if ((uVar4 == 5) && (piVar2 != (int *)0x0)) {
    local_18 = &local_18;
    local_10 = (undefined4 *)0x0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Routing/roomList";
    local_14 = local_18;
    FUN_0062f560(this,piVar2[0x12],piVar2[0x13],param_3,local_28);
    uVar3 = FUN_00624f80((int)piVar2,local_28);
    param_10 = (int *)(uint)uVar3;
    FUN_00628d30(local_1c,local_38,(ushort *)&param_10);
    pfVar1 = (float *)param_5[1];
    for (pfVar6 = (float *)*param_5; pfVar6 != pfVar1; pfVar6 = pfVar6 + 7) {
      FUN_0062f560(this,piVar2[0x12],piVar2[0x13],pfVar6,local_28);
      uVar3 = FUN_00624f80((int)piVar2,local_28);
      param_10 = (int *)(uint)uVar3;
      piVar5 = (int *)FUN_006260b0(local_1c,local_38,(ushort *)&param_10);
      if (((undefined4 ***)*piVar5 == &local_18) ||
         (((((ushort)param_10 < 0x11 || ((ushort)param_10 == 0x10)) &&
           ((param_5[1] - *param_5) / 0x1c == 2)) &&
          (((*pfVar6 != *param_3 || (pfVar6[1] != param_3[1])) || (pfVar6[2] != param_3[2])))))) {
        FUN_00628d30(local_1c,local_30,(ushort *)&param_10);
        uVar4 = LotRouteGraph_PlanThroughPortals
                          (this,param_1,param_2,pfVar6,pfVar6[6],param_5,param_6,param_7,param_8,
                           param_9,piVar2,param_11,param_12,param_13);
        if (uVar4 == 0) {
          FUN_008b19b0(local_10);
          return 0;
        }
      }
    }
    FUN_008b19b0(local_10);
    uVar4 = 5;
  }
  return uVar4;
}

