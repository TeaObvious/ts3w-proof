/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Reads version and count, then records64-bit key, DWORD byte length and unpadded
   name bytes. Original precomp has1280 names; key0x906997a9 is RugSort and0xe77a2b60 is
   AlphaMaskThreshold. Names identify metadata, not original native function symbols. */

undefined4 __thiscall ShaderNameTable_ReadKNM(void *this,int *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  uint uVar3;
  byte local_141;
  uint local_140;
  uint local_13c;
  undefined1 local_138 [8];
  int *local_130;
  char local_124;
  uint local_120;
  uint local_11c [2];
  char *local_114;
  char *local_110;
  char local_100 [256];
  
  FUN_007d93e0(local_138,param_1,1);
  FUN_0072f3c0(*(int *)((int)this + 0x2c),*(uint *)((int)this + 0x30));
  *(undefined4 *)((int)this + 0x34) = 0;
  uVar1 = FUN_004dd980(local_130,&local_120);
  FUN_007d79f0(local_138,(byte)uVar1);
  uVar1 = FUN_004dd980(local_130,&local_13c);
  FUN_007d79f0(local_138,(byte)uVar1);
  if ((local_124 == '\0') || (uVar2 = FUN_007d7a00(local_138,local_13c,0xc), (char)uVar2 == '\0')) {
LAB_0072f652:
    uVar1 = FUN_007d7990((int)local_138);
    return uVar1 & 0xffffff00;
  }
  uVar1 = 0;
  local_114 = local_100;
  local_110 = local_100;
  if (local_13c != 0) {
    do {
      uVar3 = FUN_004ddab0(local_130,local_11c);
      FUN_007d79f0(local_138,(byte)uVar3);
      uVar3 = FUN_004dd980(local_130,&local_140);
      FUN_007d79f0(local_138,(byte)uVar3);
      if ((local_124 == '\0') || (uVar2 = FUN_007d7a00(local_138,local_140,1), (char)uVar2 == '\0'))
      {
        if ((local_114 != (char *)0x0) && (local_114 != local_100)) {
          FUN_004e44e0((int)local_114);
        }
        goto LAB_0072f652;
      }
      local_141 = 0;
      FUN_0072f420(&local_114,local_140 + 1,&local_141);
      local_114[local_140] = '\0';
      FUN_004dd8b0(param_1,local_114,local_140);
      FUN_0072f340(this,local_11c,local_114);
      uVar1 = uVar1 + 1;
    } while (uVar1 < local_13c);
  }
  if ((local_114 != (char *)0x0) && (local_114 != local_100)) {
    FUN_004e44e0((int)local_114);
  }
  uVar2 = FUN_007d7990((int)local_138);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

