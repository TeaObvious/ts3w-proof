/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 ECX context plus partition type/local XZ signed level/output six-byte locator, RET0C,
   lowAL found Boolean. Type2 selects partition graph+60, others graph+64; find vertex then walk its
   native circular incident-edge list and return first matching product partition type. Local floats
   round before low-byte locator encoding. Output is written only when provided and found; source
   edge-list ordering is not an arbitrary unordered set or priority guessed from wall names. */

bool __thiscall
WallPlacement_FindIncidentPartitionType(void *this,int param_1,float *param_2,undefined4 *param_3)

{
  void *this_00;
  byte *pbVar1;
  float *pfVar2;
  undefined4 uVar3;
  int iVar4;
  uint *puVar5;
  void *this_01;
  byte *pbVar6;
  undefined1 local_24;
  undefined4 local_14;
  undefined2 local_10;
  float local_c;
  float local_8;
  int local_4;
  
  pfVar2 = param_2;
  this_00 = *(void **)(*(int *)((int)this + 8) + 0x298);
  if (param_1 == 2) {
    this_01 = *(void **)((int)this_00 + 0x60);
  }
  else {
    this_01 = *(void **)((int)this_00 + 100);
  }
  iVar4 = WallGraph_FindVertexForCompactLocation(this_01,param_2);
  if (iVar4 != 0) {
    pbVar1 = *(byte **)(iVar4 + 8);
    pbVar6 = pbVar1;
    do {
      iVar4 = WallHalfEdge_ReadOppositeVertex(pbVar6);
      uVar3 = local_14;
      local_4 = (int)*(char *)(iVar4 + 6);
      local_c = (float)(int)*(char *)(iVar4 + 4);
      local_8 = (float)(int)*(char *)(iVar4 + 5);
      param_2._0_1_ = (undefined1)(int)ROUND(*pfVar2);
      local_24 = (undefined1)(int)ROUND(pfVar2[1]);
      local_14._3_1_ = SUB41(uVar3,3);
      local_14._0_3_ = CONCAT12(*(undefined1 *)(pfVar2 + 2),CONCAT11(local_24,param_2._0_1_));
      FUN_00784da0((void *)((int)&local_14 + 3),&local_c);
      if (param_1 == 2) {
        puVar5 = FUN_00b47070(this_00,(char *)&local_14);
      }
      else {
        puVar5 = FUN_00b47df0(this_00,(char *)&local_14,'\0');
      }
      iVar4 = WallProduct_GetPartitionType(puVar5);
      if (iVar4 == param_1) {
        if (param_3 != (undefined4 *)0x0) {
          *param_3 = local_14;
          *(undefined2 *)(param_3 + 1) = local_10;
        }
        return true;
      }
      pbVar6 = *(byte **)(pbVar6 + 4);
    } while (pbVar6 != pbVar1);
  }
  return false;
}

