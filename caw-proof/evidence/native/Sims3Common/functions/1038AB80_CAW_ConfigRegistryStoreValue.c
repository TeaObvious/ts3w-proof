/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Normalizes section and key names, creates absent
   registry/value maps and overwrites the existing value of an existing key. Thus later loaded INI
   files overlay earlier values. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

char __thiscall
CAW_ConfigRegistryStoreValue(void *this,short *param_1,short *param_2,short *param_3)

{
  size_t sVar1;
  void *_Src;
  void *this_00;
  void *pvVar2;
  int iVar3;
  void *local_9c;
  undefined4 local_98;
  char local_94;
  void *local_90;
  undefined4 local_8c;
  int local_88;
  char *local_84;
  void *local_80;
  int local_7c;
  int local_78;
  char *local_74;
  void *local_70;
  undefined4 *local_6c;
  uint local_68;
  char *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  int *local_54;
  undefined4 local_50;
  char *local_4c;
  void *local_48;
  int local_44;
  int local_40;
  char *local_3c;
  void *local_38;
  undefined2 *local_34;
  undefined4 local_30;
  char *local_2c;
  undefined1 local_28 [40];
  
  local_80 = (void *)0x0;
  local_7c = 0;
  local_78 = 0;
  local_74 = "Services/ConfigRegistry";
  FUN_1006a620(&local_80,param_1);
  FUN_103230f0(&local_80);
  pvVar2 = local_80;
  local_9c = local_80;
  local_90 = (void *)((uint)local_90 & 0xffffff00);
  FUN_10389c80((void *)((int)this + 4),&local_90,&local_9c);
  if (local_90 == *(void **)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    local_54 = *(int **)this;
    iVar3 = local_7c - (int)pvVar2 >> 1;
    local_60 = DAT_10acb0d4;
    local_5c = _DAT_10aadffc;
    local_50 = 0;
    local_4c = "Services/Config/ValueMap";
    local_68 = 1;
    local_6c = &DAT_10c571f8;
    local_64 = (char *)0x0;
    local_58 = 0;
    local_38 = (void *)0x0;
    local_34 = (undefined2 *)0x0;
    local_30 = 0;
    local_2c = local_74;
    FUN_10069b10(&local_38,iVar3 + 1);
    sVar1 = iVar3 * 2;
    memmove(local_38,pvVar2,sVar1);
    local_34 = (undefined2 *)(sVar1 + (int)local_38);
    *local_34 = 0;
    FUN_1038a1a0(local_28,&local_70);
    local_9c = (void *)((uint)local_9c & 0xffffff00);
    FUN_1038a8c0((void *)((int)this + 4),&local_9c,&local_38);
    FUN_1038a7b0((int *)&local_38);
    FUN_10389e30(&local_70,(int)local_6c,local_68);
    local_64 = (char *)0x0;
    if (1 < local_68) {
      (**(code **)(*local_54 + 0xc))(local_6c,local_68 * 4 + 4);
    }
    if (local_94 == '\0') {
      if ((2 < (int)(local_78 - (int)pvVar2 & 0xfffffffeU)) && (pvVar2 != (void *)0x0)) {
        FUN_10918e90((int)pvVar2);
      }
      return '\0';
    }
    local_90 = local_9c;
    local_8c = local_98;
  }
  if (param_2 != (short *)0x0) {
    local_48 = (void *)0x0;
    local_44 = 0;
    local_40 = 0;
    local_3c = "Services/ConfigRegistry";
    FUN_1006a620(&local_48,param_2);
    FUN_103230f0(&local_48);
    _Src = local_48;
    pvVar2 = local_90;
    local_9c = (void *)((uint)local_9c & 0xffffff00);
    this_00 = (void *)((int)local_90 + 0x10);
    local_90 = local_48;
    FUN_10389d20(this_00,&local_9c,&local_90);
    if (local_9c == *(void **)(*(int *)((int)pvVar2 + 0x14) + *(int *)((int)pvVar2 + 0x18) * 4)) {
      local_90 = (void *)0x0;
      local_8c = 0;
      local_88 = 0;
      local_84 = "Services/ConfigRegistry";
      FUN_1006a620(&local_90,param_3);
      iVar3 = local_44 - (int)_Src >> 1;
      local_64 = local_3c;
      local_70 = (void *)0x0;
      local_6c = (undefined4 *)0x0;
      local_68 = 0;
      FUN_10069b10(&local_70,iVar3 + 1);
      sVar1 = iVar3 * 2;
      memmove(local_70,_Src,sVar1);
      local_6c = (undefined4 *)(sVar1 + (int)local_70);
      *(undefined2 *)local_6c = 0;
      FUN_1006a320(&local_60,&local_90);
      local_9c = (void *)((uint)local_9c & 0xffffff00);
      FUN_1038a3f0(this_00,&local_9c,&local_70);
      FUN_105458c0((int *)&local_70);
      if ((2 < (int)(local_88 - (int)local_90 & 0xfffffffeU)) && (local_90 != (void *)0x0)) {
        FUN_10918e90((int)local_90);
      }
      if ((2 < (int)(local_40 - (int)_Src & 0xfffffffeU)) && (_Src != (void *)0x0)) {
        FUN_10918e90((int)_Src);
      }
      if ((2 < (int)(local_78 - (int)local_80 & 0xfffffffeU)) && (local_80 != (void *)0x0)) {
        FUN_10918e90((int)local_80);
      }
      return local_94;
    }
    FUN_1006fb50((void *)((int)local_9c + 0x10),param_3);
    pvVar2 = local_80;
    if ((2 < (int)(local_40 - (int)_Src & 0xfffffffeU)) && (_Src != (void *)0x0)) {
      FUN_10918e90((int)_Src);
      pvVar2 = local_80;
    }
  }
  if ((2 < (int)(local_78 - (int)pvVar2 & 0xfffffffeU)) && (pvVar2 != (void *)0x0)) {
    FUN_10918e90((int)pvVar2);
  }
  return '\x01';
}

