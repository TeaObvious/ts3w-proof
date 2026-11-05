/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: trailing SSET variant-data reader. Reads a 32-bit entry count (0xffffffff means no
   data), three bounded strings, per-entry words and optional extra words for package version >1,
   then a byte length and that many payload bytes. It stores precompiled variant data; it does not
   compile HLSL here. The decompiler's unaff_EBX comparison is an ABI artifact; verify the virtual
   read's return convention in assembly. */

uint __thiscall
ShaderSet_ReadVariantParametersAndBytecode(void *this,int *param_1,uint param_2,uint param_3)

{
  uint *puVar1;
  bool bVar2;
  undefined3 extraout_var;
  undefined4 *puVar3;
  int iVar4;
  uint uVar5;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  undefined3 extraout_var_03;
  undefined3 extraout_var_04;
  undefined3 extraout_var_05;
  uint unaff_EBX;
  uint uVar6;
  uint local_858;
  uint local_854;
  float local_850;
  float local_84c;
  uint local_848;
  uint local_844;
  uint local_840;
  uint local_83c;
  uint local_838;
  uint local_834;
  float local_830;
  float local_82c;
  short local_800 [1024];
  
  local_850 = -1.0;
  local_84c = 1.0;
  bVar2 = Stream_ReadUInt32(param_1,&local_858,param_2);
  uVar5 = CONCAT31(extraout_var,bVar2);
  if (!bVar2) {
    return uVar5;
  }
  if (local_858 == 0xffffffff) goto LAB_007a0cc4;
  puVar1 = *(uint **)((int)this + 0x4c);
  if (puVar1 == (uint *)0x0) {
    puVar3 = (undefined4 *)FUN_004e4500(0x50,"Shader/ShaderFactory/ShaderSetParams",0);
    if (puVar3 == (undefined4 *)0x0) {
      iVar4 = 0;
    }
    else {
      iVar4 = FUN_007a0690(puVar3);
    }
    *(int *)((int)this + 0x4c) = iVar4;
    uVar5 = 0;
    if (iVar4 == 0) goto LAB_007a0cb5;
  }
  else {
    FUN_007a03c0(*puVar1,puVar1[1]);
    puVar1[1] = *puVar1;
    *(undefined4 *)(*(int *)((int)this + 0x4c) + 0x14) =
         *(undefined4 *)(*(int *)((int)this + 0x4c) + 0x10);
  }
  uVar5 = FUN_004ddbf0(param_1);
  if (uVar5 != 0xffffffff) {
    FUN_00408f50((void *)(*(int *)((int)this + 0x4c) + 0x20),local_800);
    uVar5 = FUN_004ddbf0(param_1);
    if (uVar5 != 0xffffffff) {
      FUN_00408f50((void *)(*(int *)((int)this + 0x4c) + 0x30),local_800);
      uVar5 = FUN_004ddbf0(param_1);
      if (uVar5 != 0xffffffff) {
        FUN_00408f50((void *)(*(int *)((int)this + 0x4c) + 0x40),local_800);
        FUN_007a07e0(*(void **)((int)this + 0x4c),local_858);
        uVar5 = FUN_007a0280(*(int **)((int)this + 0x4c));
        if (local_858 <= uVar5) {
          uVar6 = 0;
          if (local_858 != 0) {
            do {
              bVar2 = Stream_ReadUInt32(param_1,&local_848,param_2);
              uVar5 = CONCAT31(extraout_var_00,bVar2);
              if (!bVar2) goto LAB_007a0cb5;
              bVar2 = Stream_ReadUInt32(param_1,&local_840,param_2);
              uVar5 = CONCAT31(extraout_var_01,bVar2);
              if (!bVar2) goto LAB_007a0cb5;
              bVar2 = Stream_ReadUInt32(param_1,&local_844,param_2);
              uVar5 = CONCAT31(extraout_var_02,bVar2);
              if (!bVar2) goto LAB_007a0cb5;
              if (1 < param_3) {
                bVar2 = Stream_ReadUInt32(param_1,(uint *)&local_850,param_2);
                uVar5 = CONCAT31(extraout_var_03,bVar2);
                if (!bVar2) goto LAB_007a0cb5;
                bVar2 = Stream_ReadUInt32(param_1,(uint *)&local_84c,param_2);
                uVar5 = CONCAT31(extraout_var_04,bVar2);
                if (!bVar2) goto LAB_007a0cb5;
              }
              FUN_007a02c0(&local_83c);
              local_834 = local_848;
              local_838 = local_844;
              local_830 = local_850;
              local_83c = local_840;
              local_82c = local_84c;
              FUN_007a09f0(*(void **)((int)this + 0x4c),&local_83c);
              FUN_007a0330((int)&local_83c);
              uVar6 = uVar6 + 1;
            } while (uVar6 < local_858);
          }
          bVar2 = Stream_ReadUInt32(param_1,&local_854,param_2);
          uVar5 = CONCAT31(extraout_var_05,bVar2);
          if (bVar2) {
            uVar5 = 0;
            if (local_854 != 0) {
              ByteVector_ResizeZeroed((void *)(*(int *)((int)this + 0x4c) + 0x10),local_854);
              iVar4 = *(int *)((int)this + 0x4c);
              uVar5 = local_854;
              if (((uint)(*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) < local_854) ||
                 (uVar5 = (**(code **)(*param_1 + 0x30))(*(undefined4 *)(iVar4 + 0x10),local_854),
                 uVar5 != unaff_EBX)) goto LAB_007a0cb5;
            }
LAB_007a0cc4:
            return CONCAT31((int3)(uVar5 >> 8),1);
          }
        }
      }
    }
  }
LAB_007a0cb5:
  return uVar5 & 0xffffff00;
}

