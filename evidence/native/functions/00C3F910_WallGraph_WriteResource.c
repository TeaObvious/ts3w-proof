/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX graph,
   stream/group/instanceLow/high, RET10. Open312E7545; version1, signed base level,
   dimensions/auxiliary, retained next vertex/section counters, vertices, room IDs, sections. Vertex
   coordinates are MOVSX signed bytes converted to binary32 X/Z and signed32 level. Each section
   emits ID then vertexA/roomA/vertexB/roomB via half-edge accessors. Array order is native owner
   order; no source-template fallback or sorting is imposed here. Close then return AL sticky
   status. */

undefined1 __thiscall
WallGraph_WriteResource(void *this,void *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  byte bVar8;
  byte *pbVar9;
  uint *puVar10;
  uint uVar11;
  int iVar12;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  int local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x312e7545;
  local_4 = param_2;
  bVar7 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (!bVar7) {
    return 0;
  }
  bVar8 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),1,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x48),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)(*(int *)((int)this + 0x44) + 4),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)(*(int *)((int)this + 0x44) + 8),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)(*(int *)((int)this + 0x44) + 0xc),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x3c),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x40),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  uVar11 = *(int *)((int)this + 0x10) - *(int *)((int)this + 0xc) >> 2;
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar11,*(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  param_2 = 0;
  if (0 < (int)uVar11) {
    do {
      puVar10 = *(uint **)(*(int *)((int)this + 0xc) + param_2 * 4);
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*puVar10,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      cVar1 = *(char *)((int)puVar10 + 5);
      cVar2 = *(char *)((int)puVar10 + 6);
      bVar8 = FUN_004de390(*(int **)((int)param_1 + 8),(float)(int)(char)puVar10[1],
                           *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      bVar8 = FUN_004de390(*(int **)((int)param_1 + 8),(float)(int)cVar1,
                           *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),(int)cVar2,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      param_2 = param_2 + 1;
    } while (param_2 < (int)uVar11);
  }
  uVar11 = *(int *)((int)this + 0x30) - *(int *)((int)this + 0x2c) >> 2;
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar11,*(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  iVar12 = 0;
  if (0 < (int)uVar11) {
    do {
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),
                           **(uint **)(*(int *)((int)this + 0x2c) + iVar12 * 4),
                           *(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      iVar12 = iVar12 + 1;
    } while (iVar12 < (int)uVar11);
  }
  uVar11 = *(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2;
  bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar11,*(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar8);
  iVar12 = 0;
  if (0 < (int)uVar11) {
    do {
      puVar10 = *(uint **)(*(int *)((int)this + 0x1c) + iVar12 * 4);
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),*puVar10,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      pbVar9 = FUN_00c35f00((byte *)(puVar10 + 1));
      uVar3 = *(uint *)puVar10[3];
      puVar10 = (uint *)WallHalfEdge_ReadOppositeVertex((byte *)(puVar10 + 1));
      uVar4 = *puVar10;
      uVar5 = **(uint **)(pbVar9 + 8);
      puVar10 = (uint *)WallHalfEdge_ReadOppositeVertex(pbVar9);
      uVar6 = *puVar10;
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar3,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar5,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar4,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      bVar8 = FUN_004de060(*(int **)((int)param_1 + 8),uVar6,*(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar8);
      iVar12 = iVar12 + 1;
    } while (iVar12 < (int)uVar11);
  }
  ResourceStreamContext_Close(param_1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

