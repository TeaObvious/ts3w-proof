/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_Destroy. Export ordinal(s): 2020.
   Entry VA: 0x1098b230. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

undefined4 ResourceMgr_Destroy(void)

{
  int *piVar1;
  uint *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  int iVar7;
  int *piVar8;
  
                    /* 0x98b230  2020  ResourceMgr_Destroy */
  if (DAT_10cb8078 == 0) {
    return 0;
  }
  piVar6 = (int *)FUN_108e50d0();
  piVar8 = *(int **)(DAT_10cb8078 + 4);
  iVar7 = *piVar8;
  if (iVar7 == 0) {
    piVar8 = piVar8 + 1;
    iVar7 = *piVar8;
    while (iVar7 == 0) {
      piVar8 = piVar8 + 1;
      iVar7 = *piVar8;
    }
    iVar7 = *piVar8;
  }
  iVar3 = *(int *)(*(int *)(DAT_10cb8078 + 4) + *(int *)(DAT_10cb8078 + 8) * 4);
  iVar5 = DAT_10cb8078;
  while (DAT_10cb8078 = iVar5, iVar7 != iVar3) {
    (**(code **)(*(int *)(*(int *)(iVar7 + 4) + 4) + 4))();
    (**(code **)(*piVar6 + 0x34))(0,*(undefined4 *)(iVar7 + 4),0);
    iVar7 = *(int *)(iVar7 + 8);
    while (iVar5 = DAT_10cb8078, iVar7 == 0) {
      piVar1 = piVar8 + 1;
      piVar8 = piVar8 + 1;
      iVar7 = *piVar1;
    }
  }
  FUN_10774310(*(int *)(iVar5 + 4),*(uint *)(iVar5 + 8));
  *(undefined4 *)(iVar5 + 0xc) = 0;
  iVar7 = DAT_10cb8078;
  if (DAT_10cb8078 != 0) {
    puVar2 = (uint *)(DAT_10cb8078 + 8);
    piVar8 = (int *)(DAT_10cb8078 + 4);
    FUN_10774310(*(int *)(DAT_10cb8078 + 4),*(uint *)(DAT_10cb8078 + 8));
    uVar4 = *puVar2;
    *(undefined4 *)(iVar7 + 0xc) = 0;
    if (1 < uVar4) {
      FUN_10918e90(*piVar8);
    }
    FUN_10918e90(iVar7);
  }
  DAT_10cb8078 = 0;
  return 1;
}

