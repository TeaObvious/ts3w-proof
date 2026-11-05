/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX play node, five stack words RET14;
   output key pointer returned EAX. Selector>1 returns zero16bytes; selector0/1 picks base/additive.
   Dynamic discriminator02D5DF12. Literal social/object flags800/2000 (doubled for additive);
   dynamic roles parsed from name. Age candidates007F5B30 with mutable pass until<5, key
   transform00579BD0 and availability007F8120. Dynamic group-zero retry is conditional on
   actor-context key and nonzero group; extra global fallback011CE800 exists in literal/dynamic
   paths. Current C# unconditional dynamic base-group retry and no global fallback are not full
   equivalence. Full remap/resource child policy, name hash and age generator details remain
   bounded. */

uint * __thiscall
SacsClipNode_ResolveAgeVariantKey
          (void *this,uint *param_1,void *param_2,uint param_3,int param_4,uint param_5)

{
  undefined4 *this_00;
  uint *puVar1;
  WCHAR WVar2;
  uint uVar3;
  char cVar4;
  uint uVar5;
  void *pvVar6;
  char *pcVar7;
  int iVar8;
  int iVar9;
  char *pcVar10;
  bool bVar11;
  bool bVar12;
  longlong lVar13;
  char local_40;
  char local_3c;
  undefined8 local_30;
  uint local_28;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  LPCWSTR local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  undefined *local_4;
  
  if (1 < param_3) {
LAB_007f88a3:
    *param_1 = 0;
    param_1[1] = 0;
    param_1[2] = 0;
    param_1[3] = 0;
    return param_1;
  }
  uVar5 = (-(uint)(param_3 != 0) & 0x800) + 0x800;
  bVar11 = uVar5 == (*(uint *)((int)this + 0x50) & uVar5);
  uVar5 = (-(uint)(param_3 != 0) & 0x2000) + 0x2000;
  bVar12 = uVar5 == (*(uint *)((int)this + 0x50) & uVar5);
  iVar9 = (param_3 + 8) * 0x10;
  puVar1 = (uint *)(iVar9 + (int)this);
  if (*(int *)(iVar9 + (int)this) != 0x2d5df12) {
    local_30 = *(undefined8 *)puVar1;
    local_28 = puVar1[2];
    local_24 = puVar1[3];
    if ((char)param_5 == '\0') {
      param_5 = 0;
      pvVar6 = (void *)FUN_007f3b40(*(int *)((int)this + 0x28));
      do {
        lVar13 = SacsClip_SelectAgeCandidateBits(param_2,param_4,bVar11,bVar12,(int *)&param_5);
        local_30 = FUN_00579bd0(*puVar1,puVar1[1],(uint)lVar13,(uint)((ulonglong)lVar13 >> 0x20));
        cVar4 = FUN_007f8120(pvVar6,(uint *)&local_30);
        if (cVar4 != '\0') break;
      } while (param_5 < 5);
      if (((param_4 != 0) && (cVar4 == '\0')) && (DAT_011ce800 != 0)) {
        uVar5 = *(uint *)(DAT_011ce800 + 0x44);
        uVar3 = *(uint *)(DAT_011ce800 + 0x40);
        param_5 = 0;
        do {
          lVar13 = SacsClip_SelectAgeCandidateBits(param_2,param_4,bVar11,bVar12,(int *)&param_5);
          local_30 = FUN_00579bd0(uVar3,uVar5,(uint)lVar13,(uint)((ulonglong)lVar13 >> 0x20));
          cVar4 = FUN_007f8120(pvVar6,(uint *)&local_30);
          if (cVar4 != '\0') break;
        } while (param_5 < 5);
      }
    }
    *param_1 = (uint)local_30;
    param_1[1] = local_30._4_4_;
    param_1[2] = local_28;
    param_1[3] = local_24;
    return param_1;
  }
  if (puVar1[3] != 0) {
    FUN_007f3b40(*(int *)((int)this + 0x28));
    pcVar7 = (char *)FUN_007fd260();
    this_00 = (undefined4 *)((int)this + 0xa0);
    if (*(undefined2 **)((int)this + 0xa0) != *(undefined2 **)((int)this + 0xa4)) {
      **(undefined2 **)((int)this + 0xa0) = 0;
      *(undefined4 *)((int)this + 0xa4) = *this_00;
    }
    if (pcVar7 != (char *)0x0) {
      pcVar10 = pcVar7;
      do {
        cVar4 = *pcVar10;
        pcVar10 = pcVar10 + 1;
      } while (cVar4 != '\0');
      uVar5 = (int)pcVar10 - (int)(pcVar7 + 1);
      FUN_0040b5f0(this_00,uVar5);
      for (; uVar5 != 0; uVar5 = uVar5 - 1) {
        FUN_00412c20(this_00,(short)*pcVar7);
        pcVar7 = pcVar7 + 1;
      }
    }
    puVar1[3] = 0;
  }
  iVar9 = (param_3 + 10) * 0x10;
  if ((*(int *)(iVar9 + 4 + (int)this) - *(int *)(iVar9 + (int)this) & 0xfffffffeU) == 0)
  goto LAB_007f88a3;
  local_18 = puVar1[1];
  local_14 = puVar1[2];
  local_20 = 0;
  local_1c = 0;
  iVar8 = SacsContext_ReadParameterHash(param_2,-0x5b4b85fa,0);
  AnimationResource_ApplyProductGroupBits(iVar8,&local_14);
  local_4 = &DAT_010200f8;
  local_10 = (LPCWSTR)&DAT_011c8e54;
  local_c = &DAT_011c8e54;
  local_8 = &DAT_011c8e56;
  FUN_007f3bc0(param_2,(int *)(iVar9 + (int)this),&local_10);
  uVar5 = (int)local_c - (int)local_10 >> 1;
  local_40 = '\0';
  cVar4 = local_40;
  local_40 = '\0';
  local_3c = '\0';
  if (uVar5 < 6) goto LAB_007f86ac;
  if (local_10[1] == L'2') {
    if (local_10[3] != L'_') {
      WVar2 = local_10[4];
LAB_007f86a0:
      local_40 = '\0';
      cVar4 = local_40;
      if (WVar2 != L'_') goto LAB_007f86ac;
    }
  }
  else {
    cVar4 = local_40;
    if ((uVar5 < 7) || (local_10[2] != L'2')) goto LAB_007f86ac;
    if (local_10[4] != L'_') {
      WVar2 = local_10[5];
      goto LAB_007f86a0;
    }
  }
  local_40 = '\x01';
  cVar4 = local_40;
LAB_007f86ac:
  local_40 = cVar4;
  if ((2 < uVar5) && ((*local_10 != L'o' || (local_3c = '\x01', local_10[1] != L'_')))) {
    local_3c = '\0';
  }
  FUN_0057a830(local_10,&local_20);
  local_30 = CONCAT44(local_1c,local_20);
  local_28 = local_18;
  local_24 = local_14;
  if ((char)param_5 == '\0') {
    param_5 = 0;
    pvVar6 = (void *)FUN_007f3b40(*(int *)((int)this + 0x28));
    do {
      lVar13 = SacsClip_SelectAgeCandidateBits(param_2,param_4,local_40,local_3c,(int *)&param_5);
      local_30 = FUN_00579bd0(local_20,local_1c,(uint)lVar13,(uint)((ulonglong)lVar13 >> 0x20));
      cVar4 = FUN_007f8120(pvVar6,(uint *)&local_30);
      if (cVar4 != '\0') goto LAB_007f8857;
    } while (param_5 < 5);
    if (param_4 != 0) {
      if ((*(int *)(param_4 + 0x10) != 0 || *(int *)(param_4 + 0x14) != 0) && (local_24 != 0)) {
        local_24 = 0;
        param_5 = 0;
        do {
          lVar13 = SacsClip_SelectAgeCandidateBits
                             (param_2,param_4,local_40,local_3c,(int *)&param_5);
          local_30 = FUN_00579bd0(local_20,local_1c,(uint)lVar13,(uint)((ulonglong)lVar13 >> 0x20));
          cVar4 = FUN_007f8120(pvVar6,(uint *)&local_30);
          if (cVar4 != '\0') goto LAB_007f8857;
        } while (param_5 < 5);
      }
      if ((*(int *)(param_4 + 0x10) != 0 || *(int *)(param_4 + 0x14) != 0) && (DAT_011ce800 != 0)) {
        uVar5 = *(uint *)(DAT_011ce800 + 0x40);
        uVar3 = *(uint *)(DAT_011ce800 + 0x44);
        param_5 = 0;
        do {
          lVar13 = SacsClip_SelectAgeCandidateBits
                             (param_2,param_4,local_40,local_3c,(int *)&param_5);
          local_24 = 0;
          local_30 = FUN_00579bd0(uVar5,uVar3,(uint)lVar13,(uint)((ulonglong)lVar13 >> 0x20));
          cVar4 = FUN_007f8120(pvVar6,(uint *)&local_30);
          if (cVar4 != '\0') break;
        } while (param_5 < 5);
      }
    }
  }
LAB_007f8857:
  *param_1 = (uint)local_30;
  param_1[1] = local_30._4_4_;
  param_1[2] = local_28;
  param_1[3] = local_24;
  if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (LPCWSTR)0x0)) {
    Memory_FreeIfNonNull(local_10);
  }
  return param_1;
}

