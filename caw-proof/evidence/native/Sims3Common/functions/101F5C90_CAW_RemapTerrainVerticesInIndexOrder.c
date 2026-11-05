/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Walks emitted ushort indices in order, assigns compact
   packed vertex identities on first occurrence, copies each four-short packed vertex once and
   rewrites indices. Does not reorder the triangle sequence. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __cdecl CAW_RemapTerrainVerticesInIndexOrder(char *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  char *this;
  uint uVar2;
  ushort *puVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int local_20 [3];
  char *local_14;
  undefined4 *local_10 [4];
  
  this = param_1;
  iVar5 = *(int *)(param_1 + 4) - *(int *)param_1 >> 3;
  param_1 = "Terrain/Builder/VertexRemap";
  FUN_1061b8d0(local_10,iVar5,(int *)&param_1);
  puVar6 = local_10[0];
  if (iVar5 != 0) {
    for (; iVar5 != 0; iVar5 = iVar5 + -1) {
      *puVar6 = 0xffffffff;
      puVar6 = puVar6 + 1;
    }
  }
  local_20[0] = 0;
  local_20[1] = 0;
  local_20[2] = 0;
  local_14 = "Terrain/Builder/TempVertices";
  FUN_10549db0(local_20,(int *)this);
  *(undefined4 *)(this + 4) = *(undefined4 *)this;
  puVar3 = (ushort *)*param_2;
  param_1 = (char *)param_2[1];
  iVar5 = 0;
  if (puVar3 != (ushort *)param_1) {
    do {
      uVar2 = (uint)*puVar3;
      iVar4 = iVar5;
      iVar7 = local_10[0][uVar2];
      if ((int)local_10[0][uVar2] < 0) {
        local_10[0][uVar2] = iVar5;
        puVar6 = (undefined4 *)(local_20[0] + uVar2 * 8);
        puVar1 = *(undefined4 **)(this + 4);
        iVar4 = iVar5 + 1;
        iVar7 = iVar5;
        if (puVar1 < *(undefined4 **)(this + 8)) {
          *(undefined4 **)(this + 4) = puVar1 + 2;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = *puVar6;
            puVar1[1] = puVar6[1];
          }
        }
        else {
          FUN_101f5b70(this,puVar1,puVar6);
        }
      }
      *puVar3 = (ushort)iVar7;
      puVar3 = puVar3 + 1;
      iVar5 = iVar4;
    } while (puVar3 != (ushort *)param_1);
  }
  if (local_20[0] != 0) {
    FUN_10918e90(local_20[0]);
  }
  if (local_10[0] != (undefined4 *)0x0) {
    FUN_10918e90((int)local_10[0]);
  }
  return;
}

