/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: initializes shader-library paths and capability flags. The binary filename is assembled
   from a base path plus UTF-16 literals Shaders_, Win32 and .precomp, yielding
   Shaders_Win32.precomp for this executable. Reads configuration for minimum-spec shaders and
   shadow mode; maps shadow choices to 0x400, 0x200 or 0x100. Optional SourcePath, CommonPath,
   ShaderSetPath and BinaryPath overrides are read separately. The decompiler's pointer arithmetic
   in string lengths is synthetic. */

undefined4 __thiscall
ShaderLibrary_ConfigurePathsAndCapabilities(void *this,short *param_1,undefined1 param_2)

{
  undefined4 *this_00;
  short sVar1;
  undefined1 uVar2;
  char cVar3;
  bool bVar4;
  int iVar5;
  undefined4 *puVar6;
  wchar_t *pwVar7;
  short *psVar8;
  wchar_t *pwVar9;
  short *psVar10;
  void *this_01;
  undefined4 uVar11;
  short *local_54 [2];
  int local_4c;
  short *local_44;
  
  uVar2 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"RenderForceMinspecShaders",0);
  *(undefined1 *)((int)this + 0x48) = uVar2;
  *(undefined1 *)((int)this + 0x49) = param_1._0_1_;
  *(undefined1 *)((int)this + 0x4a) = param_2;
  iVar5 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"RenderShadowMode",3);
  cVar3 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"RenderShadowsEnabled",1);
  if (cVar3 == '\0') {
    iVar5 = 0;
  }
  else if (iVar5 == 4) {
    bVar4 = FUN_0060fc30(DAT_011cfcc8,0x46435048,1,3);
    iVar5 = bVar4 + 1;
  }
  else if (iVar5 == 3) {
    bVar4 = FUN_0060fd30((int)DAT_011cfcc8);
    if (bVar4) {
      iVar5 = 1;
    }
    else {
      uVar11 = FUN_0060fd00((int)DAT_011cfcc8);
      if (((char)uVar11 != '\0') || (bVar4 = FUN_0060fd40((int)DAT_011cfcc8), bVar4)) {
        iVar5 = 2;
      }
      else {
        iVar5 = 0;
      }
    }
  }
  if (iVar5 == 1) {
    *(undefined4 *)((int)this + 0x44) = 0x400;
  }
  else if (iVar5 == 2) {
    *(undefined4 *)((int)this + 0x44) = 0x200;
  }
  else {
    *(undefined4 *)((int)this + 0x44) = 0x100;
  }
  if (*(char *)((int)this + 0x49) == '\0') {
    FUN_0079b190();
  }
  if (*(undefined2 **)this != *(undefined2 **)((int)this + 4)) {
    **(undefined2 **)this = 0;
    *(undefined4 *)((int)this + 4) = *(undefined4 *)this;
  }
  if (*(undefined2 **)((int)this + 0x10) != *(undefined2 **)((int)this + 0x14)) {
    **(undefined2 **)((int)this + 0x10) = 0;
    *(undefined4 *)((int)this + 0x14) = *(undefined4 *)((int)this + 0x10);
  }
  puVar6 = (undefined4 *)FUN_005491e0(0x11cede0);
  this_00 = (undefined4 *)((int)this + 0x20);
  if (puVar6 != this_00) {
    FUN_00408d60(this_00,(void *)*puVar6,(undefined2 *)puVar6[1]);
  }
  pwVar7 = L"Shaders_";
  do {
    pwVar9 = pwVar7;
    pwVar7 = pwVar9 + 1;
  } while (*pwVar7 != L'\0');
  FUN_00408b90(this_00,L"Shaders_",L"Shaders_" + ((int)(pwVar9 + -0x80b591) >> 1));
  psVar8 = (short *)&DAT_01016b18;
  do {
    psVar10 = psVar8;
    psVar8 = psVar10 + 1;
  } while (*psVar8 != 0);
  FUN_00408b90(this_00,(undefined2 *)&DAT_01016b18,
               (undefined2 *)(&DAT_01016b18 + ((int)(psVar10 + -0x80b58b) >> 1) * 2));
  pwVar7 = L".precomp";
  do {
    pwVar9 = pwVar7;
    pwVar7 = pwVar9 + 1;
  } while (*pwVar7 != L'\0');
  FUN_00408b90(this_00,L".precomp",L".precomp" + ((int)(pwVar9 + -0x80b581) >> 1));
  FUN_00735e60(local_54,L"Shaders");
  psVar8 = (short *)&DAT_01016b18;
  do {
    psVar10 = psVar8;
    psVar8 = psVar10 + 1;
  } while (*psVar8 != 0);
  FUN_004560b0(local_54,(undefined2 *)&DAT_01016b18,
               (undefined2 *)(&DAT_01016b18 + ((int)(psVar10 + -0x80b58b) >> 1) * 2));
  this_01 = (void *)FUN_0058bbd0();
  if (this_01 != (void *)0x0) {
    uVar11 = FUN_0058c5e0(this_01,local_54[0],L"SourcePath",&param_1);
    if ((char)uVar11 != '\0') {
      sVar1 = *param_1;
      psVar8 = param_1;
      while (sVar1 != 0) {
        psVar8 = psVar8 + 1;
        sVar1 = *psVar8;
      }
      FUN_00408d60(this,param_1,param_1 + ((int)psVar8 - (int)param_1 >> 1));
    }
    uVar11 = FUN_0058c5e0(this_01,local_54[0],L"CommonPath",&param_1);
    if ((char)uVar11 != '\0') {
      sVar1 = *param_1;
      psVar8 = param_1;
      while (sVar1 != 0) {
        psVar8 = psVar8 + 1;
        sVar1 = *psVar8;
      }
      FUN_00408d60((void *)((int)this + 0x30),param_1,param_1 + ((int)psVar8 - (int)param_1 >> 1));
    }
    uVar11 = FUN_0058c5e0(this_01,local_54[0],L"ShaderSetPath",&param_1);
    if ((char)uVar11 != '\0') {
      sVar1 = *param_1;
      psVar8 = param_1;
      while (sVar1 != 0) {
        psVar8 = psVar8 + 1;
        sVar1 = *psVar8;
      }
      FUN_00408d60((undefined4 *)((int)this + 0x10),param_1,
                   param_1 + ((int)psVar8 - (int)param_1 >> 1));
    }
    uVar11 = FUN_0058c5e0(this_01,local_54[0],L"BinaryPath",&param_1);
    if ((char)uVar11 != '\0') {
      sVar1 = *param_1;
      psVar8 = param_1;
      while (sVar1 != 0) {
        psVar8 = psVar8 + 1;
        sVar1 = *psVar8;
      }
      FUN_00408d60(this_00,param_1,param_1 + ((int)psVar8 - (int)param_1 >> 1));
    }
  }
  if (((2 < (int)(local_4c - (int)local_54[0] & 0xfffffffeU)) && (local_54[0] != (short *)0x0)) &&
     (local_54[0] != local_44)) {
    local_54[0] = (short *)FUN_004e44e0((int)local_54[0]);
  }
  return CONCAT31((int3)((uint)local_54[0] >> 8),1);
}

