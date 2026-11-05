/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name; original PC 1.67 ripple render-target update. Gates on feature/renderer
   availability and shader defines; initialization can bypass pause suppression. Selects two random
   UVs, initializes when required, optionally dispatches dip technique 0 by frame modulo, then
   evolution technique 1. Shader technique pass count and arithmetic require the matching original
   shader package. */

void __fastcall TS3W_UpdateRainRippleTargets(int param_1)

{
  void *this;
  bool bVar1;
  void *this_00;
  int iVar2;
  undefined4 uVar3;
  uint *puVar4;
  float local_40;
  float local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30 [12];
  
  if ((*(char *)(param_1 + 0x1f5) != '\0') &&
     (bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000), bVar1)) {
    this_00 = (void *)Graphics_GetManagerSingleton();
    if ((this_00 == (void *)0x0) || (*(char *)((int)this_00 + 0x8d) != '\0')) {
      *(undefined1 *)(param_1 + 500) = 0;
    }
    else {
      iVar2 = GetNativeDescriptorTypeName_Field44((int)this_00);
      if (iVar2 != *(int *)(param_1 + 0x1f8)) {
        *(int *)(param_1 + 0x1f8) = iVar2;
        *(undefined1 *)(param_1 + 500) = 0;
      }
      if (((*(char *)(param_1 + 500) == '\0') ||
          ((uVar3 = FUN_00595050((LPCRITICAL_SECTION)&DAT_011ced48), (char)uVar3 == '\0' &&
           (bVar1 = FUN_00594ed0((LPCRITICAL_SECTION)&DAT_011ced48), !bVar1)))) &&
         ((bVar1 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0xc6d54d4), bVar1 ||
          (bVar1 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x173b025e), bVar1)))) {
        FUN_0060e930(this_00,local_30);
        FUN_0060f2a0((int)this_00);
        this = DAT_011d8530;
        iVar2 = rand();
        local_40 = (float)iVar2 * 3.051851e-05;
        iVar2 = rand();
        local_3c = (float)iVar2 * 3.051851e-05;
        local_38 = 0;
        local_34 = 0;
        FUN_005f78c0(this,*(uint *)(param_1 + 0x1ec),(int)&local_40);
        if (*(char *)(param_1 + 500) == '\0') {
          ShaderDefinition_SelectTechniqueOrdinal(*(Ts3SkinPostDefinition **)(param_1 + 0x304),2);
          FUN_0060ffe0(this_00,2);
          ShaderDefinition_DrawSelectedTechnique
                    (*(Ts3SkinPostDefinition **)(param_1 + 0x304),(Ts3SkinPostDrawCallback *)0x0,
                     (void *)0x0);
          *(undefined1 *)(param_1 + 500) = 1;
        }
        puVar4 = (uint *)(param_1 + 0x1f0);
        if (*(int *)(param_1 + 0x1f0) != 0) {
          if (*puVar4 <= DAT_0115c1a8) {
            puVar4 = &DAT_0115c1a8;
          }
          if (*(uint *)(param_1 + 0x250) % *puVar4 == 0) {
            ShaderDefinition_SelectTechniqueOrdinal(*(Ts3SkinPostDefinition **)(param_1 + 0x304),0);
            FUN_0060ffe0(this_00,2);
            ShaderDefinition_DrawSelectedTechnique
                      (*(Ts3SkinPostDefinition **)(param_1 + 0x304),(Ts3SkinPostDrawCallback *)0x0,
                       (void *)0x0);
          }
        }
        ShaderDefinition_SelectTechniqueOrdinal(*(Ts3SkinPostDefinition **)(param_1 + 0x304),1);
        FUN_0060ffe0(this_00,2);
        ShaderDefinition_DrawSelectedTechnique
                  (*(Ts3SkinPostDefinition **)(param_1 + 0x304),(Ts3SkinPostDrawCallback *)0x0,
                   (void *)0x0);
        FUN_00610330((int)this_00);
        FUN_0060ea60(this_00,(int)local_30);
        return;
      }
    }
  }
  return;
}

