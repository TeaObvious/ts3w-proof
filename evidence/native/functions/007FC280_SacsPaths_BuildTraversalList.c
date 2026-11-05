/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 six stack dwords RET18, AL whether output
   path container nonempty. Initializes per-enumeration path/visited storage, calls007FC080 and
   frees working allocations. No synthetic loop path here; loop fallback/private filtering/selection
   belong007FC3D0. No current C# visit cap or cache policy is implied. */

bool SacsPaths_BuildTraversalList
               (uint param_1,void *param_2,int param_3,int param_4,int param_5,uint param_6)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  void *local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  uint local_20;
  undefined4 *local_1c;
  uint local_18;
  undefined4 local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  if (param_1 == 0) {
    return false;
  }
  local_10 = FLOAT_00f998f8;
  local_30 = (void *)0x0;
  local_2c = 0;
  local_28 = 0;
  local_24 = 0x10201ec;
  local_c = DAT_0103fd88;
  local_4 = 0x10201cc;
  local_18 = 1;
  local_1c = &DAT_0114d900;
  local_14 = 0;
  local_8 = 0;
  SacsPaths_EnumerateSimplePaths
            (param_1,param_2,(int *)&local_30,&local_20,param_3,param_4,param_5,param_6);
  iVar1 = *(int *)((int)param_2 + 0x24);
  iVar2 = *(int *)((int)param_2 + 0x14);
  iVar3 = *(int *)((int)param_2 + 0x18);
  iVar4 = *(int *)((int)param_2 + 0x1c);
  iVar5 = *(int *)((int)param_2 + 0x10);
  iVar6 = *(int *)((int)param_2 + 8);
  FUN_00ae0410((int)local_1c,local_18);
  local_14 = 0;
  if (1 < local_18) {
    Memory_FreeIfNonNull(local_1c);
  }
  if (local_30 != (void *)0x0) {
    Memory_FreeIfNonNull(local_30);
  }
  return ((iVar1 - iVar2 >> 2) + -1) * 0x10 + (iVar3 - iVar4 >> 4) + (iVar5 - iVar6 >> 4) != 0;
}

