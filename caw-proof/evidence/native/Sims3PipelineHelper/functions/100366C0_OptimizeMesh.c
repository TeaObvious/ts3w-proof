/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export OptimizeMesh (ordinal 6), P/Invoke token
   0x0600025d in Sims3Pipeline.StageOptimizeVertexOrder. Managed signature: bool OptimizeMesh(uint[]
   indices,int indexCount,int vertexCount,uint[] vertexRemap). Native calls D3DXOptimizeFaces and
   D3DXOptimizeVertices, then remaps triangle indices and vertex order; returns 1 on success and 0
   on failure. WARNING: Ghidra pseudocode currently displays only three parameters and unresolved
   stack/register locals (including unaff_EDI); do not infer the fourth argument or allocation
   ownership from its labels. Check original instructions and managed declaration. */

undefined4 __cdecl OptimizeMesh(void *param_1,uint param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  int unaff_EDI;
  int *piVar8;
  undefined4 *puVar9;
  void *pvVar10;
  char *local_24;
  uint local_20 [3];
  char *local_14;
  int *local_10 [2];
  uint uStack_8;
  
                    /* 0x366c0  6  OptimizeMesh */
  piVar7 = (int *)(param_2 / 3);
  local_24 = "Pipeline/FaceRemapArray";
  FUN_101d0e00(local_10,(int)piVar7,(int *)&local_24);
  piVar6 = local_10[0];
  piVar5 = piVar7;
  piVar8 = local_10[0];
  if (piVar7 != (int *)0x0) {
    for (; piVar5 != (int *)0x0; piVar5 = (int *)((int)piVar5 + -1)) {
      *piVar8 = 0;
      piVar8 = piVar8 + 1;
    }
  }
  local_20[0] = 0;
  local_20[1] = 0;
  local_20[2] = 0;
  local_14 = "Pipeline/OriginalIndices";
  FUN_101673e0(local_20,param_1,(int)((int)param_1 + param_2 * 4));
  pvVar10 = param_1;
  piVar5 = piVar6;
  iVar1 = D3DXOptimizeFaces(param_1,piVar7,param_3,1);
  if (iVar1 < 0) {
    if (unaff_EDI != 0) {
      FUN_1005c7e0(unaff_EDI);
    }
    if (piVar6 != (int *)0x0) {
      FUN_1005c7e0((int)piVar6);
    }
  }
  else {
    if (piVar7 != (int *)0x0) {
      puVar2 = (undefined4 *)((int)param_1 + 8);
      local_10[0] = piVar7;
      do {
        puVar9 = (undefined4 *)(unaff_EDI + *piVar6 * 0xc);
        puVar2[-2] = *puVar9;
        puVar2[-1] = puVar9[1];
        *puVar2 = puVar9[2];
        piVar6 = piVar6 + 1;
        puVar2 = puVar2 + 3;
        local_10[0] = (int *)((int)local_10[0] + -1);
      } while (local_10[0] != (int *)0x0);
    }
    if (param_3 == 0) {
      puVar2 = (undefined4 *)0x0;
      uVar4 = 0;
    }
    else {
      puVar2 = (undefined4 *)FUN_1005c800(param_3 * 4,"Pipeline/VertexOldToNewMap",0);
      puVar9 = puVar2;
      for (; uVar4 = uStack_8, param_3 != 0; param_3 = param_3 + -1) {
        *puVar9 = 0;
        puVar9 = puVar9 + 1;
      }
    }
    iVar1 = D3DXOptimizeVertices(param_1,piVar7,uVar4,1,puVar2);
    if (-1 < iVar1) {
      uVar3 = 0;
      if (uVar4 != 0) {
        do {
          *(uint *)(local_20[2] + puVar2[uVar3] * 4) = uVar3;
          uVar3 = uVar3 + 1;
        } while (uVar3 < uVar4);
      }
      uVar4 = 0;
      if (local_20[0] != 0) {
        do {
          *(undefined4 *)((int)param_1 + uVar4 * 4) = puVar2[*(int *)((int)param_1 + uVar4 * 4)];
          uVar4 = uVar4 + 1;
        } while (uVar4 < local_20[0]);
      }
      if (puVar2 != (undefined4 *)0x0) {
        FUN_1005c7e0((int)puVar2);
      }
      if (pvVar10 != (void *)0x0) {
        FUN_1005c7e0((int)pvVar10);
      }
      if (piVar5 != (int *)0x0) {
        FUN_1005c7e0((int)piVar5);
      }
      return 1;
    }
    if (puVar2 != (undefined4 *)0x0) {
      FUN_1005c7e0((int)puVar2);
    }
    if (pvVar10 != (void *)0x0) {
      FUN_1005c7e0((int)pvVar10);
    }
    if (piVar5 != (int *)0x0) {
      FUN_1005c7e0((int)piVar5);
      return 0;
    }
  }
  return 0;
}
