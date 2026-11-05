/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original PC1.67 material substitution over paired source/destination submodels using the
   destination count at+44. Resolves their material state, skips a material whose descriptor+08
   equals the supplied nonzero exclusion hash, and reuses substituted material by nonzero source
   hash. Otherwise calls MaterialDef_CreateSubstituted6CB470 with the supplied parameter
   records/count and the separate type-change/append flags, acquires the material, installs
   through691400 and invalidates through68FE00, preserving virtual lifetimes. Both owned ranges
   belong to this function; the six-byte6DB1CA..1CF gap is excluded. This is model/material
   installation, not texture loading or a complete backend contract. */

void __thiscall
ModelLOD_ApplyMaterialSubstitutions(void *this,int param_1,int *param_2,undefined4 *param_3)

{
  void *this_00;
  void *this_01;
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  int **ppiVar6;
  int *local_40;
  uint local_3c;
  void *local_38;
  uint local_34;
  undefined4 ****local_30;
  uint local_2c;
  uint local_28;
  int local_24 [2];
  undefined1 local_1c [4];
  undefined4 ****local_18;
  undefined4 ****local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar1 = param_2;
  local_18 = &local_18;
  local_28 = *(uint *)((int)this + 0x44);
  local_4 = "Renderer/TextureCompositor/Utils";
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = 0;
  local_3c = 0;
  local_38 = this;
  local_14 = local_18;
  if (local_28 != 0) {
    do {
      uVar4 = local_3c;
      this_00 = *(void **)(*(int *)(param_1 + 0x40) + local_3c * 4);
      this_01 = *(void **)(*(int *)((int)local_38 + 0x40) + local_3c * 4);
      if ((this_00 != (void *)0x0) && (this_01 != (void *)0x0)) {
        iVar2 = FUN_00c2ed00((int)this_00);
        if (iVar2 == 0) {
          Drawable_SelectMaterialSetByHash(this_00,piVar1[2],param_3);
        }
        iVar2 = FUN_00c2ed00((int)this_01);
        if (iVar2 == 0) {
          Drawable_SelectMaterialSetByHash(this_01,piVar1[2],param_3);
        }
        iVar2 = FUN_00c2ed00((int)this_01);
        param_2 = (int *)0x0;
        if (iVar2 != 0) {
          if (((piVar1[3] == 0) || (iVar3 = GetNativeDescriptorTypeName_Field44(iVar2), iVar3 == 0))
             || (*(int *)(iVar3 + 8) != piVar1[3])) {
            uVar4 = FUN_00542290(iVar2);
            local_34 = uVar4;
            if ((uVar4 == 0) ||
               (FUN_005ca6f0(local_1c,(int *)&local_30,&local_34),
               (undefined4 *****)local_30 == &local_18)) {
              local_40 = (int *)0x0;
              MaterialDef_CreateSubstituted
                        (*(void **)(iVar2 + 0x54),(byte *)*piVar1,piVar1[1],
                         *(byte *)((int)piVar1 + 0x11),*(byte *)(piVar1 + 4),&local_40);
              local_2c = FUN_00c2ed00((int)local_40);
              UInt32PairMap_Find(piVar1 + 5,local_24,&local_2c);
              if (local_24[0] != *(int *)(piVar1[6] + piVar1[7] * 4)) {
                FUN_009de9b0(local_40,*(undefined4 *)(local_24[0] + 4));
              }
              piVar5 = param_2;
              if (param_2 != (int *)0x0) {
                param_2 = (int *)0x0;
                (**(code **)(*piVar5 + 4))();
              }
              MaterialDef_AcquireMaterial(local_40,&param_2,(int)*(short *)((int)local_38 + 0x74));
              if (uVar4 != 0) {
                ppiVar6 = &param_2;
                piVar5 = FUN_006db0f0(local_1c,&local_34);
                StatePointerSlots_AssignVirtualLifetime(piVar5,(int *)ppiVar6);
              }
              if (local_40 != (int *)0x0) {
                (**(code **)(*local_40 + 4))();
              }
            }
            else {
              StatePointerSlots_AssignVirtualLifetime(&param_2,(int *)(local_30 + 5));
            }
            Drawable_RebindEffectiveMaterial(this_01,param_2,'\0',param_3);
            FUN_0068fe00(this_01,0);
            if (param_2 != (int *)0x0) {
              (**(code **)(*param_2 + 4))();
            }
            uVar4 = local_3c;
          }
          else if (param_2 != (int *)0x0) {
            (**(code **)(*param_2 + 4))();
          }
        }
      }
      local_3c = uVar4 + 1;
    } while (local_3c < local_28);
  }
  FUN_006daf10(local_10);
  return;
}

