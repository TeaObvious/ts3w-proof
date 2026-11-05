/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PackageTool_Delete. Export ordinal(s): 2001.
   Entry VA: 0x109871e0. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x06000166. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl PackageTool_Delete(undefined4 param_1,short *param_2)

{
  short sVar1;
  int *piVar2;
  char cVar3;
  short *psVar4;
  undefined4 uVar5;
  undefined4 *this;
  int *piVar6;
  int iVar7;
  undefined4 ***local_54;
  undefined4 ***local_50;
  int *local_4c;
  undefined *local_48;
  undefined *local_44;
  undefined2 *local_40;
  char *local_3c;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  char *pcStack_2c;
  undefined **local_28 [10];
  
                    /* 0x9871e0  2001  PackageTool_Delete */
  sVar1 = *param_2;
  local_48 = &_Dst_10ca8244;
  local_44 = &_Dst_10ca8244;
  local_3c = "Scratch/PackageToolWrap/s";
  local_40 = &DAT_10ca8246;
  psVar4 = param_2;
  while (sVar1 != 0) {
    psVar4 = psVar4 + 1;
    sVar1 = *psVar4;
  }
  FUN_1001f8c0(&local_48,param_2,(int *)(param_2 + ((int)psVar4 - (int)param_2 >> 1)));
  FUN_108e4c10(local_28);
  uVar5 = FUN_108e4d80((wchar_t *)&local_48,(int)local_28);
  if ((char)uVar5 == '\0') {
    local_28[0] = &PTR_LAB_10ab3a7c;
    if ((2 < (int)((int)local_40 - (int)local_48 & 0xfffffffeU)) && (local_48 != (undefined *)0x0))
    {
      local_48 = (undefined *)FUN_10918e90((int)local_48);
    }
    return (uint)local_48 & 0xffffff00;
  }
  local_54 = &local_54;
  local_4c = (int *)0x0;
  local_50 = local_54;
  this = FUN_10918fe0(0x398);
  if (this == (undefined4 *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = FUN_108defd0(this,(short *)0x0,0);
  }
  piVar2 = local_4c;
  if (piVar6 != local_4c) {
    piVar2 = piVar6;
    if ((undefined4 ****)local_50 == &local_54) {
      if (local_4c != (int *)0x0) {
        (**(code **)*local_4c)(1);
      }
    }
    else {
      local_54[1] = local_50;
      *local_50 = local_54;
      local_54 = &local_54;
      local_50 = local_54;
    }
  }
  local_4c = piVar2;
  cVar3 = (**(code **)(*local_4c + 4))();
  if (((cVar3 != '\0') && (cVar3 = (**(code **)(*local_4c + 0x2c))(param_1), cVar3 != '\0')) &&
     (cVar3 = (**(code **)(*local_4c + 0x18))(2,3,0), cVar3 != '\0')) {
    iStack_38 = 0;
    iStack_34 = 0;
    uStack_30 = 0;
    pcStack_2c = "Scratch/PackageToolWrap/keysToDelete";
    (**(code **)(*local_4c + 0x30))(&iStack_38,local_28);
    iVar7 = iStack_38;
    if (iStack_38 != iStack_34) {
      do {
        cVar3 = (**(code **)(*local_4c + 0x40))(iVar7);
        if (cVar3 == '\0') {
          if (iStack_38 != 0) {
            FUN_10918e90(iStack_38);
          }
          FUN_109871a0((int *)&local_54);
          goto LAB_10987468;
        }
        iVar7 = iVar7 + 0x10;
      } while (iVar7 != iStack_34);
    }
    (**(code **)(*local_4c + 8))();
    if (iStack_38 != 0) {
      FUN_10918e90(iStack_38);
    }
    if (local_4c != (int *)0x0) {
      if ((undefined4 ****)local_50 == &local_54) {
        (**(code **)*local_4c)(1);
      }
      else {
        local_54[1] = local_50;
        *local_50 = local_54;
        local_54 = &local_54;
        local_50 = local_54;
      }
      local_4c = (int *)0x0;
    }
    local_28[0] = &PTR_LAB_10ab3a7c;
    if ((2 < (int)((int)local_40 - (int)local_48 & 0xfffffffeU)) && (local_48 != (undefined *)0x0))
    {
      local_48 = (undefined *)FUN_10918e90((int)local_48);
    }
    return CONCAT31((int3)((uint)local_48 >> 8),1);
  }
  if (local_4c != (int *)0x0) {
    if ((undefined4 ****)local_50 == &local_54) {
      (**(code **)*local_4c)(1);
    }
    else {
      local_54[1] = local_50;
      *local_50 = local_54;
      local_54 = &local_54;
      local_50 = local_54;
    }
    local_4c = (int *)0x0;
  }
LAB_10987468:
  local_28[0] = &PTR_LAB_10ab3a7c;
  if ((2 < (int)((int)local_40 - (int)local_48 & 0xfffffffeU)) && (local_48 != (undefined *)0x0)) {
    local_48 = (undefined *)FUN_10918e90((int)local_48);
  }
  return (uint)local_48 & 0xffffff00;
}

