/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction preparation/interaction comparison): Analyst
   product/preset-to-retained-context role. cdecl four DWORD slots: lot, product, UInt32 presetId,
   outputContext; plain RET. Guard lot/product and original unsigned preset count/index bounds
   including FFFFFFFF. Resolve selected preset and Complate, test actual helper AL prerequisites,
   then invoke ComplateNative_BuildPrograms 5C0310 with vector output and flags1/0. Iterate12-byte
   records, append borrowed resource via B27450 to output+4, skip type0341ACC9 and classify
   other16-byte keys by record byte+8. Require primary type nonzero; choose unused random instance
   of type044AE110, update/register working Complate and original lot resources, then assign context
   Complate lifetime via5A9510 and three original16-byte key groups at output+18/+28/+38. Listing
   success A62A1C MOV AL,1; every failure A62A57 XOR AL,AL. Only AL is defined, not upper EAX.
   Existing inferred child signatures leave decompiler stack aliases/unaff_retaddr/unaff_EBP and
   shifted key-local names in this actual C: they are analysis artifacts, not extra physical
   arguments, returned stack addresses or verified key-field semantics. Actual argument slots,
   vector locals and exact final MOV stores must be read from full paired instructions. No foreign
   callee ABI was changed to cosmetically repair this output; no native whole-lot generation/path
   Task policy inferred. */

bool __cdecl
PatternContext_PrepareFromProductPreset(int param_1,int *param_2,uint param_3,void *param_4)

{
  void *this;
  char *this_00;
  uint uVar1;
  uint uVar2;
  int *piVar3;
  undefined4 uVar4;
  int *piVar5;
  void *this_01;
  int *unaff_EBP;
  int iVar6;
  int *unaff_retaddr;
  uint *puVar7;
  undefined4 uVar8;
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
  
  piVar5 = param_2;
  if (param_2 == (int *)0x0) {
    return false;
  }
  if (param_1 == 0) {
    return false;
  }
  uVar1 = FUN_00c9a0b0((int)param_2);
  if (uVar1 == 0) {
    return false;
  }
  uVar2 = FUN_00c99dd0(piVar5,param_3);
  if (uVar1 < uVar2 + 1) {
    return false;
  }
  if (uVar2 == 0xffffffff) {
    return false;
  }
  local_48 = (int *)0x0;
  piVar3 = FUN_0074efa0((int *)&local_48);
  FUN_00c99c90(piVar5,uVar2,piVar3);
  piVar5 = local_48;
  param_2 = (int *)0x0;
  if (local_48 != (int *)0x0) {
    piVar3 = FUN_0074efa0((int *)&param_2);
    uVar4 = FUN_005bfbf0(piVar5,piVar3);
    if ((char)uVar4 == '\0') goto LAB_00a62a3a;
  }
  local_10 = (int *)0x0;
  local_c = (int *)0x0;
  local_8 = 0;
  local_4 = "UI/ThumbnailManager/BuiltCompositors";
  if ((((param_2 != (int *)0x0) && (uVar1 = FUN_005bef50((int)param_2), (char)uVar1 != '\0')) &&
      (uVar1 = FUN_005bef80((int)param_2), (char)uVar1 != '\0')) &&
     (uVar4 = ComplateNative_BuildPrograms(param_2,(int *)&local_10,1,'\0'), this = param_4,
     (char)uVar4 != '\0')) {
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = 0;
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    local_44 = local_c;
    piVar5 = local_10;
    if (local_10 != local_c) {
      do {
        iVar6 = *piVar5;
        FUN_00b27450((void *)((int)this + 4),piVar5);
        if (*(int *)(iVar6 + 0x10) != 0x341acc9) {
          if ((char)piVar5[2] == '\0') {
            local_40 = *(int *)(iVar6 + 8);
            local_3c = *(undefined4 *)(iVar6 + 0xc);
            local_38 = *(uint *)(iVar6 + 0x10);
            local_34 = *(undefined4 *)(iVar6 + 0x14);
          }
          else {
            local_30 = *(int *)(iVar6 + 8);
            local_2c = *(undefined4 *)(iVar6 + 0xc);
            local_28 = *(uint *)(iVar6 + 0x10);
            local_24 = *(undefined4 *)(iVar6 + 0x14);
          }
          if ((local_38 != 0) && (local_28 != 0)) break;
        }
        piVar5 = piVar5 + 3;
      } while (piVar5 != local_44);
    }
    piVar5 = (int *)FUN_004afe80();
    if (local_38 != 0) {
      puVar7 = &local_20;
      uVar1 = 0x44ae110;
      this_01 = (void *)ProductPresets_GetGlobalOwner();
      CompositorKeys_ChooseUnusedRandomInstance(this_01,puVar7,uVar1);
      param_2[2] = local_20;
      param_2[3] = local_1c;
      param_2[4] = local_18;
      param_2[5] = local_14;
      FUN_005bf250(param_2);
      piVar3 = (int *)FUN_004afe80();
      iVar6 = *piVar3;
      uVar8 = 1;
      uVar4 = FUN_00a5e2a0((int *)&param_2);
      (**(code **)(iVar6 + 0x5c))(uVar4,uVar8);
      this_00 = local_4;
      FUN_00ab09c0(local_4,(uint *)&local_48);
      if (local_30 != 0) {
        FUN_00ab09c0(this_00,&local_38);
      }
      FUN_00ab09f0(this_00,&local_28);
      iVar6 = *(int *)((int)this + 8) - *(int *)((int)this + 4) >> 2;
      while (iVar6 = iVar6 + -1, -1 < iVar6) {
        piVar3 = *(int **)(*(int *)((int)this + 4) + iVar6 * 4);
        if (piVar3 == (int *)0x0) {
          uVar4 = 0;
        }
        else {
          (**(code **)*piVar3)();
          uVar4 = (**(code **)(*piVar3 + 0xc))(0x2269ed1);
        }
        (**(code **)(*piVar5 + 0x5c))(uVar4,1);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 4))();
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
      FUN_005ab2d0(&local_18);
      if (unaff_retaddr != (int *)0x0) {
        (**(code **)(*unaff_retaddr + 4))();
      }
      if (unaff_EBP != (int *)0x0) {
        (**(code **)(*unaff_EBP + 4))();
      }
      return true;
    }
    FUN_00d4d2a0((uint *)((int)this + 4));
  }
  FUN_005ab2d0((int *)&local_10);
LAB_00a62a3a:
  if (param_2 != (int *)0x0) {
    (**(code **)(*param_2 + 4))();
  }
  if (local_48 != (int *)0x0) {
    (**(code **)(*local_48 + 4))();
  }
  return false;
}

