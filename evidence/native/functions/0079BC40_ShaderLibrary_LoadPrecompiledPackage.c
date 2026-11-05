/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 shader-library package loader. Opens the configured precompiled file,
   selects a capability mask (1 << mode) OR existing flags, requires SPKG v2, installs or merges
   parsed package data, then builds definition/set lookup maps. The low byte of EAX is the success
   result (RETN 4); decompiler CONCAT31 high bytes are not part of the boolean contract. File
   provenance is the installed Shaders_Win32.precomp; no source compilation is established here. */

uint __thiscall ShaderLibrary_LoadPrecompiledPackage(void *this,char param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  undefined3 extraout_var;
  undefined4 *puVar5;
  undefined4 uVar6;
  undefined4 extraout_EDX;
  int *piVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  void *local_29c;
  int *local_298;
  uint local_294;
  uint local_290;
  uint *local_28c;
  uint local_288;
  undefined4 local_284 [6];
  undefined4 local_26c [3];
  int local_260 [14];
  int local_228 [138];
  
  cVar3 = ShaderLibrary_ChooseCapabilityMode();
  uVar8 = CONCAT31(extraout_var,cVar3);
  if ((uVar8 < 4) && (*(char *)((int)this + 0x48) != '\0')) {
    uVar8 = 2;
  }
  bVar4 = ShaderLibrary_IsModeCompatible(uVar8,(byte)*(undefined4 *)((int)this + 0x40));
  if (bVar4) {
    uVar8 = *(uint *)((int)this + 0x40);
  }
  else {
    *(uint *)((int)this + 0x40) = uVar8;
  }
  FUN_004dbb40(local_228,*(wchar_t **)((int)this + 0x20));
  FUN_004db550((int)local_228);
  bVar4 = FUN_004db690(local_228,1,6,1,0);
  if (bVar4) {
    FUN_004deb20(local_260,0x10000,0x10000,local_228,0);
    FUN_007d93e0(local_284,local_260,1);
    puVar5 = (undefined4 *)FUN_004e4500(0x2c,"Shader/ShaderPackage",0);
    if (puVar5 == (undefined4 *)0x0) {
      local_298 = (int *)0x0;
    }
    else {
      local_298 = (int *)FUN_0079c050(puVar5);
    }
    piVar7 = local_298;
    if (param_1 == '\0') {
      *(int **)((int)this + 0x4c) = local_298;
      local_298 = (int *)0x0;
    }
    uVar10 = *(uint *)((int)this + 0x44);
    bVar4 = FUN_0079c0b0(piVar7);
    if (bVar4) {
      uVar9 = 0;
      uVar8 = ShaderPackage_ReadSPKG
                        (piVar7,local_284,(void *)(1 << ((byte)uVar8 & 0x1f) | uVar10),
                         CONCAT31((int3)((uint)extraout_EDX >> 8),
                                  *(char *)((int)this + 0x49) == '\0'),'\0',
                         (uint)*(byte *)((int)this + 0x4a));
      if ((char)uVar8 != '\0') {
        if (param_1 != '\0') {
          FUN_0079c720(*(void **)((int)this + 0x4c),piVar7);
        }
        uVar8 = FUN_0079c030(*(int *)((int)this + 0x4c));
        FUN_004d90b0(*(int *)((int)this + 0x54),*(uint *)((int)this + 0x58));
        *(undefined4 *)((int)this + 0x5c) = 0;
        if (uVar8 != 0) {
          do {
            local_28c = (uint *)FUN_0079c040(*(void **)((int)this + 0x4c),uVar9);
            local_294 = *local_28c;
            local_290 = local_28c[1];
            FUN_0079b660((void *)((int)this + 0x50),local_26c,(int *)&local_294);
            uVar9 = uVar9 + 1;
          } while (uVar9 < uVar8);
        }
        uVar8 = FUN_0079c010(*(int *)((int)this + 0x4c));
        FUN_0073ebe0(*(int *)((int)this + 0x74),*(uint *)((int)this + 0x78));
        uVar10 = 0;
        *(undefined4 *)((int)this + 0x7c) = 0;
        if (uVar8 != 0) {
          do {
            local_290 = FUN_0079c020(*(void **)((int)this + 0x4c),uVar10);
            local_294 = *(uint *)(local_290 + 8);
            local_288 = local_288 & 0xffffff00;
            FUN_007f4270((void *)((int)this + 0x70),local_26c,&local_294);
            uVar10 = uVar10 + 1;
          } while (uVar10 < uVar8);
        }
        if (*(char *)((int)this + 0x4a) == '\0') {
          if (*(char *)((int)this + 0x49) == '\0') {
            local_29c = (void *)**(undefined4 **)((int)this + 0x4c);
          }
          else {
            local_29c = (void *)0x0;
          }
          piVar7 = *(int **)((int)this + 0x54);
          iVar11 = *piVar7;
          if (iVar11 == 0) {
            piVar7 = piVar7 + 1;
            iVar11 = *piVar7;
            while (iVar11 == 0) {
              piVar7 = piVar7 + 1;
              iVar11 = *piVar7;
            }
            iVar11 = *piVar7;
          }
          iVar2 = *(int *)(*(int *)((int)this + 0x54) + *(int *)((int)this + 0x58) * 4);
          while (iVar11 != iVar2) {
            FUN_0079a940(*(void **)(iVar11 + 8),local_29c,*(void **)(*(int *)((int)this + 0x4c) + 4)
                        );
            iVar11 = *(int *)(iVar11 + 0xc);
            while (iVar11 == 0) {
              piVar1 = piVar7 + 1;
              piVar7 = piVar7 + 1;
              iVar11 = *piVar1;
            }
          }
        }
        if (local_298 != (int *)0x0) {
          FUN_0079c080(local_298);
          FUN_004e44e0((int)local_298);
        }
        FUN_007d7990((int)local_284);
        FUN_004deb90(local_260);
        uVar6 = FUN_004dbba0(local_228);
        return CONCAT31((int3)((uint)uVar6 >> 8),1);
      }
    }
    if (local_298 != (int *)0x0) {
      FUN_0079c080(local_298);
      FUN_004e44e0((int)local_298);
    }
    FUN_007d7990((int)local_284);
    FUN_004deb90(local_260);
    uVar8 = FUN_004dbba0(local_228);
    return uVar8 & 0xffffff00;
  }
  uVar8 = FUN_004dbba0(local_228);
  return uVar8 & 0xffffff00;
}

