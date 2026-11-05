/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: trailing SSET variant-data reader. Reads a 32-bit entry count (0xffffffff means no
   data), three bounded strings, per-entry words and optional extra words for package version >1,
   then a byte length and that many payload bytes. It stores precompiled variant data; it does not
   compile HLSL here. The decompiler's unaff_EBX comparison is an ABI artifact; verify the virtual
   read's return convention in assembly. */

uint __thiscall
ShaderSet_ReadVariantParametersAndBytecode(void *this,int *param_1,undefined4 param_2,uint param_3)

{
  uint *puVar1;
  uint uVar2;
  undefined4 *puVar3;
  int iVar4;
  uint unaff_EBX;
  uint uVar5;
  uint local_858;
  uint local_854;
  uint local_850;
  uint local_84c;
  uint local_848;
  uint local_844;
  uint local_840;
  uint local_83c;
  uint local_838;
  uint local_834;
  uint local_830;
  uint local_82c;
  short local_800 [1024];
  
  local_850 = DAT_00fab218;
  local_84c = DAT_00f998f8;
  uVar2 = FUN_004dd980(param_1,&local_858);
  if ((char)uVar2 == '\0') {
    return uVar2;
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
    uVar2 = 0;
    if (iVar4 == 0) goto LAB_007a0cb5;
  }
  else {
    FUN_007a03c0(*puVar1,puVar1[1]);
    puVar1[1] = *puVar1;
    *(undefined4 *)(*(int *)((int)this + 0x4c) + 0x14) =
         *(undefined4 *)(*(int *)((int)this + 0x4c) + 0x10);
  }
  uVar2 = FUN_004ddbf0(param_1);
  if (uVar2 != 0xffffffff) {
    FUN_00408f50((void *)(*(int *)((int)this + 0x4c) + 0x20),local_800);
    uVar2 = FUN_004ddbf0(param_1);
    if (uVar2 != 0xffffffff) {
      FUN_00408f50((void *)(*(int *)((int)this + 0x4c) + 0x30),local_800);
      uVar2 = FUN_004ddbf0(param_1);
      if (uVar2 != 0xffffffff) {
        FUN_00408f50((void *)(*(int *)((int)this + 0x4c) + 0x40),local_800);
        FUN_007a07e0(*(void **)((int)this + 0x4c),local_858);
        uVar2 = FUN_007a0280(*(int **)((int)this + 0x4c));
        if (local_858 <= uVar2) {
          uVar5 = 0;
          if (local_858 != 0) {
            do {
              uVar2 = FUN_004dd980(param_1,&local_848);
              if (((((char)uVar2 == '\0') ||
                   (uVar2 = FUN_004dd980(param_1,&local_840), (char)uVar2 == '\0')) ||
                  (uVar2 = FUN_004dd980(param_1,&local_844), (char)uVar2 == '\0')) ||
                 ((1 < param_3 &&
                  ((uVar2 = FUN_004dd980(param_1,&local_850), (char)uVar2 == '\0' ||
                   (uVar2 = FUN_004dd980(param_1,&local_84c), (char)uVar2 == '\0'))))))
              goto LAB_007a0cb5;
              FUN_007a02c0(&local_83c);
              local_834 = local_848;
              local_838 = local_844;
              local_830 = local_850;
              local_83c = local_840;
              local_82c = local_84c;
              FUN_007a09f0(*(void **)((int)this + 0x4c),&local_83c);
              FUN_007a0330((int)&local_83c);
              uVar5 = uVar5 + 1;
            } while (uVar5 < local_858);
          }
          uVar2 = FUN_004dd980(param_1,&local_854);
          if ((char)uVar2 != '\0') {
            uVar2 = 0;
            if (local_854 != 0) {
              FUN_00412e20((void *)(*(int *)((int)this + 0x4c) + 0x10),local_854);
              iVar4 = *(int *)((int)this + 0x4c);
              uVar2 = local_854;
              if (((uint)(*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) < local_854) ||
                 (uVar2 = (**(code **)(*param_1 + 0x30))(*(undefined4 *)(iVar4 + 0x10),local_854),
                 uVar2 != unaff_EBX)) goto LAB_007a0cb5;
            }
LAB_007a0cc4:
            return CONCAT31((int3)(uVar2 >> 8),1);
          }
        }
      }
    }
  }
LAB_007a0cb5:
  return uVar2 & 0xffffff00;
}

