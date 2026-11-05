/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Selected PC1.67 preset-build chain: reject null lot/product; C94AC0 combined count, C94780 maps
   FULL PRESET ID to ordinal (FFFFFFFF rejects), C94670 acquires that ordinal, conversion/Complate
   validation precedes ComplateNative_BuildPrograms. Actual program loop uses a per-built-stream
   role flag to collect diffuse/specular, excludes type0341ACC9 from those lanes, and a
   generated044AE110 saved design identity is separate from texture/program keys. Concrete broker
   registration and retained built-stream refs remain visible. WARNING actual Ghidra C has
   unaff_retaddr/unaff_EBP and shifted local key assignments from unresolved indirect-call stack
   propagation. Do not port those aliases or describe the displayed malformed field stores as a
   verified layout. Use original instructions for exact output/virtual/ref ABI; this export
   preserves genuine tool output, not hand-reconstructed pseudocode. */

undefined4 __cdecl
FencePreset_BuildFinishPrograms(int param_1,int *param_2,uint param_3,void *param_4)

{
  void *this;
  char *this_00;
  uint in_EAX;
  uint uVar1;
  int *piVar2;
  undefined4 uVar3;
  int *piVar4;
  void *this_01;
  int *unaff_EBP;
  int iVar5;
  int *unaff_retaddr;
  uint *puVar6;
  undefined4 uVar7;
  int *local_48;
  int *local_44;
  int local_40;
  undefined4 local_3c;
  uint local_38;
  undefined4 local_34;
  int local_30;
  undefined4 local_2c;
  uint local_28;
  undefined4 local_24;
  uint local_20;
  int local_1c;
  int local_18;
  int local_14;
  int *local_10;
  int *local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar4 = param_2;
  if ((param_2 == (int *)0x0) || (param_1 == 0)) goto LAB_00a62da4;
  uVar1 = FenceProduct_CountPresetRows(param_2);
  if (uVar1 == 0) {
    in_EAX = 0;
    goto LAB_00a62da4;
  }
  in_EAX = FenceProduct_ResolvePresetId(piVar4,param_3);
  if ((uVar1 < in_EAX + 1) || (in_EAX == 0xffffffff)) goto LAB_00a62da4;
  local_48 = (int *)0x0;
  piVar2 = FUN_0074efa0((int *)&local_48);
  FenceProduct_AcquirePresetByOrdinal(piVar4,in_EAX,(undefined *)piVar2);
  piVar4 = local_48;
  param_2 = (int *)0x0;
  if (local_48 == (int *)0x0) {
LAB_00a62afd:
    local_10 = (int *)0x0;
    local_c = (int *)0x0;
    local_8 = 0;
    local_4 = "UI/ThumbnailManager/BuiltCompositors";
    if ((((param_2 != (int *)0x0) && (uVar1 = FUN_005bef50((int)param_2), (char)uVar1 != '\0')) &&
        (uVar1 = FUN_005bef80((int)param_2), (char)uVar1 != '\0')) &&
       (uVar3 = ComplateNative_BuildPrograms(param_2,(int *)&local_10,1,'\0'), this = param_4,
       (char)uVar3 != '\0')) {
      local_40 = 0;
      local_3c = 0;
      local_38 = 0;
      local_34 = 0;
      local_30 = 0;
      local_2c = 0;
      local_28 = 0;
      local_24 = 0;
      local_44 = local_c;
      piVar4 = local_10;
      if (local_10 != local_c) {
        do {
          iVar5 = *piVar4;
          FUN_00b27450((void *)((int)this + 4),piVar4);
          if (*(int *)(iVar5 + 0x10) != 0x341acc9) {
            if ((char)piVar4[2] == '\0') {
              local_40 = *(int *)(iVar5 + 8);
              local_3c = *(undefined4 *)(iVar5 + 0xc);
              local_38 = *(uint *)(iVar5 + 0x10);
              local_34 = *(undefined4 *)(iVar5 + 0x14);
            }
            else {
              local_30 = *(int *)(iVar5 + 8);
              local_2c = *(undefined4 *)(iVar5 + 0xc);
              local_28 = *(uint *)(iVar5 + 0x10);
              local_24 = *(undefined4 *)(iVar5 + 0x14);
            }
            if ((local_38 != 0) && (local_28 != 0)) break;
          }
          piVar4 = piVar4 + 3;
        } while (piVar4 != local_44);
      }
      piVar4 = (int *)FUN_004afe80();
      if (local_38 != 0) {
        puVar6 = &local_20;
        uVar1 = 0x44ae110;
        this_01 = (void *)ProductPresets_GetGlobalOwner();
        CompositorKeys_ChooseUnusedRandomInstance(this_01,puVar6,uVar1);
        param_2[2] = local_20;
        param_2[3] = local_1c;
        param_2[4] = local_18;
        param_2[5] = local_14;
        FUN_005bf250(param_2);
        piVar2 = (int *)FUN_004afe80();
        iVar5 = *piVar2;
        uVar7 = 1;
        uVar3 = FUN_00a5e2a0((int *)&param_2);
        (**(code **)(iVar5 + 0x5c))(uVar3,uVar7);
        this_00 = local_4;
        FUN_00ab09c0(local_4,(uint *)&local_48);
        if (local_30 != 0) {
          FUN_00ab09c0(this_00,&local_38);
        }
        FUN_00ab09f0(this_00,&local_28);
        iVar5 = *(int *)((int)this + 8) - *(int *)((int)this + 4) >> 2;
        while (iVar5 = iVar5 + -1, -1 < iVar5) {
          piVar2 = *(int **)(*(int *)((int)this + 4) + iVar5 * 4);
          if (piVar2 == (int *)0x0) {
            uVar3 = 0;
          }
          else {
            (**(code **)*piVar2)();
            uVar3 = (**(code **)(*piVar2 + 0xc))(0x2269ed1);
          }
          (**(code **)(*piVar4 + 0x5c))(uVar3,1);
          if (piVar2 != (int *)0x0) {
            (**(code **)(*piVar2 + 4))();
          }
        }
        StatePointerSlots_AssignVirtualLifetime(this,(int *)&stack0x00000000);
        *(uint *)((int)this + 0x18) = local_28;
        *(undefined4 *)((int)this + 0x1c) = local_24;
        *(uint *)((int)this + 0x20) = local_20;
        *(int **)((int)this + 0x28) = local_48;
        *(int **)((int)this + 0x2c) = local_44;
        *(int *)((int)this + 0x24) = local_1c;
        *(uint *)((int)this + 0x38) = local_38;
        *(int *)((int)this + 0x30) = local_40;
        *(undefined4 *)((int)this + 0x34) = local_3c;
        *(undefined4 *)((int)this + 0x3c) = local_34;
        *(int *)((int)this + 0x40) = local_30;
        *(undefined4 *)((int)this + 0x44) = local_2c;
        uVar3 = FUN_005ab2d0(&local_18);
        if (unaff_retaddr != (int *)0x0) {
          uVar3 = (**(code **)(*unaff_retaddr + 4))();
        }
        if (unaff_EBP != (int *)0x0) {
          uVar3 = (**(code **)(*unaff_EBP + 4))();
        }
        return CONCAT31((int3)((uint)uVar3 >> 8),1);
      }
      FUN_00d4d2a0((uint *)((int)this + 4));
    }
    in_EAX = FUN_005ab2d0((int *)&local_10);
  }
  else {
    piVar2 = FUN_0074efa0((int *)&param_2);
    in_EAX = FUN_005bfbf0(piVar4,piVar2);
    if ((char)in_EAX != '\0') goto LAB_00a62afd;
  }
  if (param_2 != (int *)0x0) {
    in_EAX = (**(code **)(*param_2 + 4))();
  }
  if (local_48 != (int *)0x0) {
    in_EAX = (**(code **)(*local_48 + 4))();
  }
LAB_00a62da4:
  return in_EAX & 0xffffff00;
}

