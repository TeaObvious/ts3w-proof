/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical cdecl one aligned four-lane point pointer, lowAL Boolean result, plainRET. World+74 weather receiver must exist. C68940 uses pointX/Z and stored0.125 allowance. A nonnull lot with room manager resolves local at-floor then room via B482C0(0,1); nonzeroAX rejects. Missing lot does not reject: D6E246 pushes0,1,lot-or-null,point, restores ECX weather manager and calls D6DFF0. Thus the public RainPuddle flag query reaches its off-lot sea/noise/wetness/normal branch. Inferred C uses int/float bit aliases for point lanes and upperEAX residue; these are not original conversion/undefined-source claims. World pointer admission/manager lifetime, complete room/terrain resource producers and final gameplay remain separate. */

uint __cdecl FUN_00d6e1a0(float *param_1)

{
  void *this;
  short sVar1;
  uint in_EAX;
  void *pvVar2;
  undefined2 extraout_var;
  uint uVar3;
  LotXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (*(int *)((int)DAT_011edbc4 + 0x74) == 0) {
LAB_00d6e25a:
    return in_EAX & 0xffffff00;
  }
  local_30.x = *param_1;
  local_30.z = param_1[1];
  local_30.level = (int)param_1[2];
  fStack_24 = param_1[3];
  local_20 = local_30.x;
  fStack_1c = local_30.z;
  fStack_18 = (float)local_30.level;
  fStack_14 = fStack_24;
  pvVar2 = FUN_00c68940(DAT_011edbc4,local_30.x,(float)local_30.level,0.125);
  if ((pvVar2 != (void *)0x0) && (this = *(void **)((int)pvVar2 + 0x298), this != (void *)0x0)) {
    local_30.x = -1.0;
    local_30.z = -1.0;
    local_30.level = 0;
    Lot_WorldPositionToLocalLocationAtFloor(pvVar2,param_1,&local_30);
    sVar1 = LotRoom_ResolveForLocalLocation(this,&local_30.x,0,1);
    in_EAX = CONCAT22(extraout_var,sVar1);
    if (sVar1 != 0) goto LAB_00d6e25a;
  }
  uVar3 = Seasons_HasRainPuddleAtPoint(param_1,pvVar2,'\x01','\0');
  return uVar3;
}
