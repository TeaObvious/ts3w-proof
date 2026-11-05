/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RigResource_GetLocalTransform. Export ordinal(s):
   2047. Entry VA: 0x1098b9c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A45. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl RigResource_GetLocalTransform(undefined4 *param_1,int param_2,uint param_3)

{
  uint uVar1;
  int iVar2;
  uint *puVar3;
  undefined4 *puVar4;
  uint local_90 [6];
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  uint uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  uint uStack_54;
  undefined4 local_50 [19];
  
                    /* 0x98b9c0  2047  RigResource_GetLocalTransform */
  if (param_2 != 0) {
    uVar1 = FUN_10371690(param_2 + 0x28);
    if (param_3 < uVar1) {
      puVar3 = local_90;
      iVar2 = FUN_10371680((void *)(param_2 + 0x28),param_3);
      puVar3 = (uint *)FUN_10373880((void *)(iVar2 + 0x10),puVar3);
      goto LAB_1098baa5;
    }
  }
  local_90[0] = DAT_10acb0d4;
  local_90[1] = 0;
  local_90[2] = 0;
  local_90[3] = 0;
  local_90[4] = 0;
  local_90[5] = DAT_10acb0d4;
  uStack_78 = 0;
  uStack_74 = 0;
  puVar3 = local_90;
  local_70 = 0;
  uStack_6c = 0;
  uStack_68 = DAT_10acb0d4;
  uStack_64 = 0;
  local_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = DAT_10acb0d4;
LAB_1098baa5:
  puVar4 = (undefined4 *)FUN_10980020(local_50,puVar3);
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar4;
    puVar4 = puVar4 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

