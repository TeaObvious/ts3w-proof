/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_UpdateRoadTextures. Export
   ordinal(s): 2600. Entry VA: 0x10996f00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B09. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldTerrainWrap_UpdateRoadTextures(ushort param_1,wchar_t *param_2)

{
  void *this;
  void *this_00;
  uint in_EAX;
  undefined4 *puVar1;
  undefined4 *puVar2;
  float *pfVar3;
  undefined4 uVar4;
  uint uVar5;
  wchar_t *in_stack_0000001c;
  wchar_t *in_stack_00000030;
  short *in_stack_00000044;
  wchar_t *in_stack_00000058;
  wchar_t *in_stack_0000006c;
  short *in_stack_00000080;
  wchar_t *in_stack_00000094;
  short *psVar6;
  undefined4 *puVar7;
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
  
                    /* 0x996f00  2600  WorldTerrainWrap_UpdateRoadTextures */
  this_00 = DAT_10c700c4;
  if ((((param_2 != (wchar_t *)0x0) && (in_stack_0000001c != (wchar_t *)0x0)) &&
      (in_stack_00000030 != (wchar_t *)0x0)) &&
     (((in_stack_00000044 != (short *)0x0 && (in_stack_0000006c != (wchar_t *)0x0)) &&
      ((in_stack_00000080 != (short *)0x0 && (in_stack_00000094 != (wchar_t *)0x0)))))) {
    this = *(void **)((int)DAT_10c700c4 + 0x5c);
    uVar5 = (uint)param_1;
    in_EAX = FUN_101404c0((int)this);
    if (uVar5 < in_EAX) {
      puVar7 = &local_40;
      puVar2 = &local_60;
      psVar6 = (short *)0x0;
      local_60 = 0;
      local_5c = 0;
      local_58 = 0;
      local_54 = 0;
      local_50 = _DAT_10aadffc;
      uStack_4c = _DAT_10aadffc;
      uStack_48 = _DAT_10aadffc;
      uStack_44 = _DAT_10aadffc;
      local_40 = _DAT_10aadffc;
      uStack_3c = _DAT_10aadffc;
      uStack_38 = _DAT_10aadffc;
      uStack_34 = _DAT_10aadffc;
      puVar1 = (undefined4 *)FUN_1055daa0(local_30,(undefined4 *)&stack0x0000000c);
      FUN_10146e90(this,uVar5,0,param_2,puVar1,psVar6,puVar2,puVar7);
      puVar7 = &local_40;
      local_40 = local_50;
      uStack_3c = uStack_4c;
      uStack_38 = uStack_48;
      uStack_34 = uStack_44;
      puVar2 = (undefined4 *)FUN_1055daa0(local_30,(undefined4 *)&stack0x00000048);
      puVar1 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000034);
      FUN_10146e90(this,uVar5,1,in_stack_00000030,puVar1,in_stack_00000044,puVar2,puVar7);
      puVar7 = &local_40;
      puVar2 = &local_60;
      psVar6 = (short *)0x0;
      local_40 = local_50;
      uStack_3c = uStack_4c;
      uStack_38 = uStack_48;
      uStack_34 = uStack_44;
      puVar1 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x0000005c);
      FUN_10146e90(this,uVar5,6,in_stack_00000058,puVar1,psVar6,puVar2,puVar7);
      puVar7 = &local_40;
      local_40 = local_50;
      uStack_3c = uStack_4c;
      uStack_38 = uStack_48;
      uStack_34 = uStack_44;
      puVar2 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000084);
      puVar1 = (undefined4 *)FUN_1055daa0(local_30,(undefined4 *)&stack0x00000070);
      FUN_10146e90(this,uVar5,2,in_stack_0000006c,puVar1,in_stack_00000080,puVar2,puVar7);
      puVar7 = &local_40;
      puVar2 = &local_60;
      psVar6 = (short *)0x0;
      local_40 = local_50;
      uStack_3c = uStack_4c;
      uStack_38 = uStack_48;
      uStack_34 = uStack_44;
      puVar1 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000098);
      FUN_10146e90(this,uVar5,3,in_stack_00000094,puVar1,psVar6,puVar2,puVar7);
      puVar7 = &local_40;
      puVar2 = &local_60;
      psVar6 = (short *)0x0;
      uStack_44 = DAT_10c59f10;
      uStack_48 = DAT_10c59f10;
      uStack_4c = _DAT_10abfa48;
      local_50 = DAT_10c59f10;
      local_40 = DAT_10c59f10;
      uStack_3c = _DAT_10abfa48;
      uStack_38 = DAT_10c59f10;
      uStack_34 = DAT_10c59f10;
      puVar1 = (undefined4 *)FUN_1055daa0(local_20,(undefined4 *)&stack0x00000020);
      FUN_10146e90(this,uVar5,4,in_stack_0000001c,puVar1,psVar6,puVar2,puVar7);
      pfVar3 = (float *)FUN_101d9190(this_00,local_20);
      FUN_10140ff0(this,pfVar3);
      uVar4 = FUN_10153150(this);
      return CONCAT31((int3)((uint)uVar4 >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

