/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Callback hashes section and reads
   small/medium/large/xlarge via integer pair format. Only conversion count2 replaces packed16-bit
   width/height defaults. Store four packed rows to section entry. Decompiled scanf output-pointer
   types are not evidence of32-bit output storage; original MOV16/packing controls. Current
   positive/integral validation and512 limit are project policy. */

undefined4 __cdecl
ThumbnailSizes_ReadIniSection(wint_t *param_1,undefined4 param_2,undefined4 *param_3)

{
  void *this;
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined2 local_18 [2];
  uint local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)param_3[1];
  piVar1 = (int *)*param_3;
  local_14 = FUN_007d0020(param_1);
  local_8 = CONCAT22(local_8._2_2_,0x80);
  local_4 = 0x2000200;
  local_10 = 0x800020;
  local_c = CONCAT22(local_c._2_2_,0x40);
  iVar2 = (**(code **)(*piVar1 + 0x34))(piVar1,param_1,L"small",L"(%d, %d)",&param_3,local_18);
  if (iVar2 == 2) {
    local_10 = CONCAT22(local_18[0],(short)param_3);
  }
  iVar2 = (**(code **)(*piVar1 + 0x34))(piVar1,param_1,L"medium",L"(%d, %d)",&param_3,local_18);
  if (iVar2 == 2) {
    local_c = CONCAT22(local_18[0],(short)param_3);
  }
  iVar2 = (**(code **)(*piVar1 + 0x34))(piVar1,param_1,L"large",L"(%d, %d)",&param_3,local_18);
  if (iVar2 == 2) {
    local_8 = CONCAT22(local_18[0],(short)param_3);
  }
  iVar2 = (**(code **)(*piVar1 + 0x34))(piVar1,param_1,L"xlarge",L"(%d, %d)",&param_3,local_18);
  if (iVar2 == 2) {
    local_4 = CONCAT22(local_18[0],(short)param_3);
  }
  puVar3 = (undefined4 *)FUN_00d51da0(this,&local_14);
  *puVar3 = local_10;
  puVar3[1] = local_c;
  puVar3[2] = local_8;
  puVar3[3] = local_4;
  return CONCAT31((int3)((uint)puVar3 >> 8),1);
}

