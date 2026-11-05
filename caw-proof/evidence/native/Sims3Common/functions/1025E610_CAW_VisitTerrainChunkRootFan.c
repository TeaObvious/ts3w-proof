/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Starts four binary triangles around the block center in
   left, bottom, right, top order. Initializes leaf count zero and split-derived count four. Each
   root has remaining depth twice log2(block side) minus one and is refined by 0x1025E2B0.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

void __fastcall CAW_VisitTerrainChunkRootFan(void *param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  uVar5 = *(uint *)((int)param_1 + 8);
  uVar1 = *(int *)((int)param_1 + 0x10) * 2 - 1;
  uVar2 = *(uint *)((int)param_1 + 0x20);
  *(undefined4 *)((int)param_1 + 0x18) = 0;
  *(undefined4 *)((int)param_1 + 0x1c) = 4;
  iVar3 = uVar2 * (int)((ulonglong)*(uint *)((int)param_1 + 0x24) %
                       ((ulonglong)uVar5 / (ulonglong)uVar2));
  iVar4 = uVar2 * (int)((ulonglong)*(uint *)((int)param_1 + 0x24) /
                       ((ulonglong)uVar5 / (ulonglong)uVar2));
  uVar6 = (uVar2 + iVar4) * uVar5 + iVar3;
  uVar5 = uVar5 * iVar4 + iVar3;
  *(int *)((int)param_1 + 0x2c) = iVar4;
  uVar7 = ((uVar2 >> 1) + iVar4) * *(int *)((int)param_1 + 8) + (uVar2 >> 1) + iVar3;
  *(int *)((int)param_1 + 0x28) = iVar3;
  CAW_RefineTerrainBinaryTriangle(param_1,uVar7,uVar6,uVar5,uVar1);
  CAW_RefineTerrainBinaryTriangle(param_1,uVar7,uVar2 + uVar6,uVar6,uVar1);
  CAW_RefineTerrainBinaryTriangle(param_1,uVar7,uVar2 + uVar5,uVar2 + uVar6,uVar1);
  CAW_RefineTerrainBinaryTriangle(param_1,uVar7,uVar5,uVar2 + uVar5,uVar1);
  return;
}

