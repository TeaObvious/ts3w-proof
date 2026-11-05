/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Constructs precipitation models for a cell instance. Type1 rain46C1BA,2
   hailF4CA97,3/4 snowB863FB,5 bewitching886989,6 revivingBE8014. Type4 creates5 model instances,
   other nonzero types1. MODL resource type01661233; group supplied by caller. Type0 hides/releases
   models. */

void __thiscall
Seasons_CreatePrecipitationCellModels
          (void *this,int *param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  void *this_00;
  uint uVar1;
  int *piVar2;
  int *this_01;
  int iVar3;
  uint local_20;
  undefined4 local_18;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  *(int **)((int)this + 0x1c) = param_1;
  *(int *)((int)this + 0x20) = param_2;
  *(int *)((int)this + 0x40) = param_5;
  if (param_2 == 0) {
    FUN_00d65990((int)this);
    FUN_00d4d2a0((uint *)((int)this + 8));
    return;
  }
  local_18 = 0;
  switch(param_2) {
  case 1:
    local_18 = 0x46c1ba;
    break;
  case 2:
    local_18 = 0xf4ca97;
    break;
  case 3:
  case 4:
    local_18 = 0xb863fb;
    break;
  case 5:
    local_18 = 0x886989;
    break;
  case 6:
    local_18 = 0xbe8014;
  }
  FUN_00d4d2a0((uint *)((int)this + 8));
  local_20 = 0;
  iVar3 = (uint)(*(int *)((int)this + 0x20) == 4) * 4 + 1;
  param_2 = iVar3;
  if (iVar3 != 0) {
    do {
      local_10 = local_18;
      this_01 = (int *)0x0;
      param_1 = (int *)0x0;
      local_c = 0;
      local_8 = 0x1661233;
      local_4 = param_3;
      this_00 = (void *)FUN_004e4520(0x2d0,0x10,0,"Renderer/Weather/Precipitation",0);
      if (this_00 != (void *)0x0) {
        uVar1 = iVar3 * param_5;
        piVar2 = RenderComponent_InitializeSceneModel
                           (this_00,uVar1 + local_20 + 0xe79159f0,
                            ((int)uVar1 >> 0x1f) + ((int)local_20 >> 0x1f) +
                            (uint)CARRY4(uVar1,local_20) + 0x3dbb0044 +
                            (uint)(0x186ea60f < uVar1 + local_20));
        if (piVar2 != (int *)0x0) {
          (**(code **)*piVar2)();
          this_01 = piVar2;
          param_1 = piVar2;
        }
        iVar3 = param_2;
      }
      FUN_006f46f0(this_01,&local_10,0,0,0);
      (**(code **)(*this_01 + 0x50))(param_4);
      (**(code **)(*this_01 + 0x34))(0x2000088,0x2000080);
      FUN_006fab20(this_01,0x25,'\x01');
      piVar2 = *(int **)((int)this + 0xc);
      if (piVar2 < *(int **)((int)this + 0x10)) {
        *(int **)((int)this + 0xc) = piVar2 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = (int)this_01;
          (**(code **)*this_01)();
        }
      }
      else {
        FUN_00c65ad0((uint *)((int)this + 8),piVar2,(int *)&param_1);
        this_01 = param_1;
      }
      if (this_01 != (int *)0x0) {
        (**(code **)(*this_01 + 4))();
      }
      local_20 = local_20 + 1;
    } while ((int)local_20 < iVar3);
  }
  return;
}

