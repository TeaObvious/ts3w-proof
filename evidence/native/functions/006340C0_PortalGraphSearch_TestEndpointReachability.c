/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: original PC 1.67 portal contract. Uses original portal-check cache and per-follower
   local footprint planning. Accepts underlying result0/1 or0xd; failure/no path object returns AL0.
   Static endpoint check participates in crossing permission. */

bool __thiscall
PortalGraphSearch_TestEndpointReachability
          (void *this,void *routeContext,ulonglong lotId,TS3WPortalXZLevel *position)

{
  void *this_00;
  uint uVar1;
  int iVar2;
  undefined **local_64;
  uint local_60 [2];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 *local_40;
  uint local_3c;
  undefined4 local_38;
  float local_34;
  undefined4 local_30;
  undefined4 local_2c;
  char *local_28;
  undefined4 local_20;
  void *local_1c;
  undefined ***local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  local_58 = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_20 = *(undefined4 *)((int)routeContext + 0x40);
  local_18 = &local_64;
  local_34 = 1.0;
  local_64 = &PTR_LAB_00fecfd0;
  local_30 = 0x40000000;
  local_28 = "Routing/PortalCheckCache";
  local_3c = 1;
  local_40 = &DAT_0114d900;
  local_38 = 0;
  local_2c = 0;
  local_14 = 0;
  local_10 = 0x10000;
  local_c = 0;
  local_8 = 0;
  local_1c = this;
  this_00 = FUN_006328f0(this,(uint)lotId,lotId._4_4_,&position->x);
  if (this_00 == (void *)0x0) {
    FUN_009d67f0((int)local_40,local_3c);
    local_38 = 0;
    if (1 < local_3c) {
      Memory_FreeIfNonNull(local_40);
    }
    return false;
  }
  *(int *)((int)this_00 + 0x28) = *(int *)((int)this_00 + 0x28) + 1;
  uVar1 = FUN_0066b8d0(this_00,local_60);
  if ((uVar1 < 2) || (routeContext._0_1_ = false, uVar1 == 0xd)) {
    routeContext._0_1_ = true;
  }
  iVar2 = *(int *)((int)this_00 + 0x28) + -1;
  *(int *)((int)this_00 + 0x28) = iVar2;
  if (iVar2 == 0) {
    *(undefined4 *)((int)this_00 + 0x28) = 1;
    (*(code *)**(undefined4 **)((int)this_00 + 0x24))(1);
  }
  FUN_009d67f0((int)local_40,local_3c);
  local_38 = 0;
  if (1 < local_3c) {
    Memory_FreeIfNonNull(local_40);
  }
  return routeContext._0_1_;
}

