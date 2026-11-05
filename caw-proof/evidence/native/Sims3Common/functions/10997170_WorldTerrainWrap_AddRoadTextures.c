/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_AddRoadTextures. Export
   ordinal(s): 2551. Entry VA: 0x10997170. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B00. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_AddRoadTextures(wint_t *param_1,wchar_t *param_2)

{
  void *this;
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  wchar_t *in_stack_0000001c;
  wchar_t *in_stack_00000030;
  short *in_stack_00000044;
  wchar_t *in_stack_00000058;
  wchar_t *in_stack_0000006c;
  short *in_stack_00000080;
  wchar_t *in_stack_00000094;
  short *psVar4;
  undefined4 *puVar5;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
                    /* 0x997170  2551  WorldTerrainWrap_AddRoadTextures */
  if (((((param_1 != (wint_t *)0x0) && (param_2 != (wchar_t *)0x0)) &&
       (in_stack_0000001c != (wchar_t *)0x0)) &&
      ((in_stack_00000030 != (wchar_t *)0x0 && (in_stack_00000044 != (short *)0x0)))) &&
     ((in_stack_0000006c != (wchar_t *)0x0 &&
      ((in_stack_00000080 != (short *)0x0 && (in_stack_00000094 != (wchar_t *)0x0)))))) {
    local_60 = 0;
    local_5c = 0;
    local_58 = 0;
    local_54 = 0;
    this = *(void **)(DAT_10c700c4 + 0x5c);
    iVar1 = FUN_1014a340(this,param_1);
    puVar5 = &local_40;
    puVar3 = &local_60;
    psVar4 = (short *)0x0;
    local_50 = _DAT_10aadffc;
    uStack_4c = _DAT_10aadffc;
    uStack_48 = _DAT_10aadffc;
    uStack_44 = _DAT_10aadffc;
    local_40 = _DAT_10aadffc;
    uStack_3c = _DAT_10aadffc;
    uStack_38 = _DAT_10aadffc;
    uStack_34 = _DAT_10aadffc;
    puVar2 = (undefined4 *)FUN_1055daa0(local_30,(undefined4 *)&stack0x0000000c);
    FUN_10146e90(this,iVar1,0,param_2,puVar2,psVar4,puVar3,puVar5);
    puVar5 = &local_40;
    local_40 = local_50;
    uStack_3c = uStack_4c;
    uStack_38 = uStack_48;
    uStack_34 = uStack_44;
    puVar3 = (undefined4 *)FUN_1055daa0(local_30,(undefined4 *)&stack0x00000048);
    puVar2 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000034);
    FUN_10146e90(this,iVar1,1,in_stack_00000030,puVar2,in_stack_00000044,puVar3,puVar5);
    puVar5 = &local_40;
    puVar3 = &local_60;
    psVar4 = (short *)0x0;
    local_40 = local_50;
    uStack_3c = uStack_4c;
    uStack_38 = uStack_48;
    uStack_34 = uStack_44;
    puVar2 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x0000005c);
    FUN_10146e90(this,iVar1,6,in_stack_00000058,puVar2,psVar4,puVar3,puVar5);
    puVar5 = &local_40;
    local_40 = local_50;
    uStack_3c = uStack_4c;
    uStack_38 = uStack_48;
    uStack_34 = uStack_44;
    puVar3 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000084);
    puVar2 = (undefined4 *)FUN_1055daa0(local_30,(undefined4 *)&stack0x00000070);
    FUN_10146e90(this,iVar1,2,in_stack_0000006c,puVar2,in_stack_00000080,puVar3,puVar5);
    puVar5 = &local_40;
    puVar3 = &local_60;
    psVar4 = (short *)0x0;
    local_40 = local_50;
    uStack_3c = uStack_4c;
    uStack_38 = uStack_48;
    uStack_34 = uStack_44;
    puVar2 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000098);
    FUN_10146e90(this,iVar1,3,in_stack_00000094,puVar2,psVar4,puVar3,puVar5);
    puVar5 = &local_40;
    puVar3 = &local_60;
    psVar4 = (short *)0x0;
    uStack_44 = DAT_10c59f10;
    uStack_48 = DAT_10c59f10;
    uStack_4c = _DAT_10abfa48;
    local_50 = DAT_10c59f10;
    local_40 = DAT_10c59f10;
    uStack_3c = _DAT_10abfa48;
    uStack_38 = DAT_10c59f10;
    uStack_34 = DAT_10c59f10;
    puVar2 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000020);
    FUN_10146e90(this,iVar1,4,in_stack_0000001c,puVar2,psVar4,puVar3,puVar5);
    uStack_44 = DAT_10acb0d4;
    uStack_48 = DAT_10acb0d4;
    uStack_4c = DAT_10acb0d4;
    local_50 = DAT_10acb0d4;
    local_40 = DAT_10acb0d4;
    uStack_3c = DAT_10acb0d4;
    uStack_38 = DAT_10acb0d4;
    uStack_34 = DAT_10acb0d4;
    FUN_10146e90(this,iVar1,5,L"stickerTemp.dds",&local_60,(short *)0x0,&local_60,&local_40);
  }
  return;
}

