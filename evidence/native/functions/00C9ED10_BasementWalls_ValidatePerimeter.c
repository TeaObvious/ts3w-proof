/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 static instructions/callers: cdecl three words, low AL bool. Validates each six-byte wall
   locator through D49790, ignores its error79 only, forwards other error and stops. Preserves
   native style/context lifetime. Floating-looking 1.69557e-43 in decompilation is integer error79
   bit-pattern, not a floating tolerance. */

bool __cdecl BasementWalls_ValidatePerimeter(undefined4 param_1,int *param_2,void *param_3)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  bool bVar4;
  uint *puVar5;
  int *piVar6;
  int local_13c;
  int local_138;
  undefined **local_130;
  undefined4 local_12c;
  undefined4 local_128;
  undefined1 local_124;
  int *local_120;
  int *local_11c;
  int *local_118;
  undefined4 local_114;
  char *local_110;
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined1 local_d8;
  undefined1 local_d0 [12];
  undefined4 *local_c4;
  undefined4 *local_a8;
  undefined4 *local_8c;
  undefined4 *local_70;
  float local_50 [19];
  
  puVar5 = (uint *)BasementProducts_GetWallKey();
  local_12c = 0;
  local_130 = &PTR_FUN_0106be30;
  local_128 = 0;
  local_124 = 0;
  local_120 = (int *)0x0;
  local_11c = (int *)0x0;
  local_118 = (int *)0x0;
  local_114 = 0;
  local_110 = "Lot/tPatterDesignModeData";
  local_108 = 0;
  local_104 = 0;
  local_100 = 0;
  local_fc = 0;
  local_f8 = 0;
  local_f4 = 0;
  local_f0 = 0;
  local_ec = 0;
  local_e8 = 0;
  local_e4 = 0;
  local_e0 = 0;
  local_dc = 0;
  local_d8 = 1;
  Camera_SetProjectionMode(&local_130,param_1);
  iVar2 = (param_2[1] - *param_2) / 6;
  local_138 = 0;
  if (0 < iVar2) {
    local_13c = 0;
    do {
      iVar1 = *param_2;
      FUN_00ad7740((int)local_d0);
      bVar4 = WallPlacement_ValidateProduct
                        (&local_130,(char *)(iVar1 + local_13c),puVar5,local_d0,1);
      if (!bVar4) {
        FUN_00ad7520(local_d0,local_50);
        if (local_50[0] != 1.69557e-43) {
          if (param_3 != (void *)0x0) {
            FUN_00ad8570(param_3,local_50);
          }
          FUN_00ad70d0((int)local_50);
          FUN_00a527c0(local_70);
          FUN_00a527c0(local_8c);
          FUN_00a527c0(local_a8);
          FUN_00a52780(local_c4);
          piVar3 = local_118;
          local_130 = &PTR_FUN_0106be30;
          for (piVar6 = local_11c; piVar6 < piVar3; piVar6 = piVar6 + 1) {
            if ((int *)*piVar6 != (int *)0x0) {
              (**(code **)(*(int *)*piVar6 + 4))();
            }
          }
          if (local_11c != (int *)0x0) {
            Memory_FreeIfNonNull(local_11c);
          }
          if (local_120 != (int *)0x0) {
            (**(code **)(*local_120 + 4))();
          }
          return false;
        }
        FUN_00ad70d0((int)local_50);
      }
      FUN_00a527c0(local_70);
      FUN_00a527c0(local_8c);
      FUN_00a527c0(local_a8);
      FUN_00a52780(local_c4);
      local_13c = local_13c + 6;
      local_138 = local_138 + 1;
    } while (local_138 < iVar2);
  }
  piVar3 = local_118;
  local_130 = &PTR_FUN_0106be30;
  for (piVar6 = local_11c; piVar6 < piVar3; piVar6 = piVar6 + 1) {
    if ((int *)*piVar6 != (int *)0x0) {
      (**(code **)(*(int *)*piVar6 + 4))();
    }
  }
  if (local_11c != (int *)0x0) {
    Memory_FreeIfNonNull(local_11c);
  }
  if (local_120 != (int *)0x0) {
    (**(code **)(*local_120 + 4))();
  }
  return true;
}

