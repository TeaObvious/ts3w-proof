/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderLibrary_GetShaderSets. Export ordinal(s):
   2301. Entry VA: 0x1098fc50. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060003B3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ShaderLibrary_GetShaderSets(undefined4 *param_1,uint param_2)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined2 *puVar6;
  int *piVar7;
  undefined4 *puVar8;
  uint local_c;
  
                    /* 0x98fc50  2301  ShaderLibrary_GetShaderSets */
  piVar4 = *(int **)(DAT_10c7bd94 + 0x74);
  puVar8 = (undefined4 *)*piVar4;
  piVar7 = piVar4;
  if (puVar8 == (undefined4 *)0x0) {
    piVar7 = piVar4 + 1;
    iVar1 = piVar4[1];
    while (iVar1 == 0) {
      piVar7 = piVar7 + 1;
      iVar1 = *piVar7;
    }
    puVar8 = (undefined4 *)*piVar7;
  }
  puVar2 = (undefined4 *)piVar4[*(int *)(DAT_10c7bd94 + 0x78)];
  uVar3 = 0;
  local_c = 0;
  if (param_2 != 0) {
    do {
      if (puVar8 == puVar2) {
        return;
      }
      if (((int *)puVar8[1] != (int *)0x0) &&
         (piVar4 = (int *)(**(code **)(*(int *)puVar8[1] + 0xc))(0x3212e84), uVar3 = local_c,
         piVar4 != (int *)0x0)) {
        *param_1 = *puVar8;
        uVar5 = (**(code **)(*piVar4 + 0x10))();
        param_1[1] = uVar5;
        puVar6 = FUN_105934b0((int)piVar4);
        param_1[2] = puVar6;
        puVar6 = FUN_105934d0((int)piVar4);
        param_1[3] = puVar6;
        param_1 = param_1 + 4;
        uVar3 = local_c + 1;
        local_c = uVar3;
      }
      puVar8 = (undefined4 *)puVar8[2];
      while (puVar8 == (undefined4 *)0x0) {
        piVar4 = piVar7 + 1;
        piVar7 = piVar7 + 1;
        puVar8 = (undefined4 *)*piVar4;
      }
    } while (uVar3 < param_2);
  }
  return;
}

