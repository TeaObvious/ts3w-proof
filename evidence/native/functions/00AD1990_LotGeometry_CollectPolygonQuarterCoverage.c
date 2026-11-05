/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl7DWORDslots/RET. Args are polygon vector, supplied
   bounds, lot, lowbyte level, output vector, lowbyte appendFlag, lowbyte insetFlag. Clears
   outputend unless append. Optional binary32 .001 inset before FIST/FILD and signed residue/ADC/SBB
   floor/ceil construction. Then LOWBYTE conversions and signed clamps to lot dimensions; no
   universal int-range/NaN contract. AF6BF0 initializes x,z,level and mask1 iterator, AF64A0 scans
   mask1/2/4/8 then z then x then level. Each yielded triangle gets bounds, fullpolygon overlap
   predicate, appended packed4bytes. Rect supplied to predicate remains the given bounds. */

void __cdecl
LotGeometry_CollectPolygonQuarterCoverage
          (undefined4 *param_1,float *param_2,int param_3,undefined1 param_4,undefined4 *param_5,
          char param_6,char param_7)

{
  float fVar1;
  int iVar2;
  undefined4 *puVar3;
  bool bVar4;
  undefined4 *this;
  char cStack00000019;
  undefined1 uStack0000001a;
  char local_40;
  char local_3f;
  undefined1 local_3e;
  float local_3c;
  int local_38;
  float local_34;
  float local_30;
  undefined1 local_2c [12];
  void *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  float local_10 [4];
  
  if (param_6 == '\0') {
    param_5[1] = *param_5;
  }
  fVar1 = param_2[1];
  if (param_7 == '\0') {
    cStack00000019 =
         (char)(int)ROUND(fVar1) + -1 + ((uint)(fVar1 - (float)(int)ROUND(fVar1)) < 0x80000001);
    iVar2 = (int)ROUND(*param_2);
    param_6 = (char)iVar2 + -1 + ((uint)(*param_2 - (float)iVar2) < 0x80000001);
    _param_7 = (int)ROUND(param_2[3]);
    local_3c = (float)_param_7 - param_2[3];
    local_3f = ((char)_param_7 + '\x01') - ((uint)local_3c < 0x80000001);
    local_30 = param_2[2];
    local_38 = (int)ROUND(local_30);
    local_34 = (float)local_38 - local_30;
    local_40 = ((char)local_38 + '\x01') - ((uint)local_34 < 0x80000001);
  }
  else {
    iVar2 = (int)ROUND(fVar1 + 0.001);
    cStack00000019 = (char)iVar2 + -1 + ((uint)((fVar1 + 0.001) - (float)iVar2) < 0x80000001);
    iVar2 = (int)ROUND(*param_2 + 0.001);
    param_6 = (char)iVar2 + -1 + ((uint)((*param_2 + 0.001) - (float)iVar2) < 0x80000001);
    _param_7 = (int)ROUND(param_2[3] - 0.001);
    local_3c = (float)_param_7 - (param_2[3] - 0.001);
    local_3f = ((char)_param_7 + '\x01') - ((uint)local_3c < 0x80000001);
    local_30 = param_2[2] - 0.001;
    local_38 = (int)ROUND(local_30);
    local_34 = (float)local_38 - local_30;
    local_40 = ((char)local_38 + '\x01') - ((uint)local_34 < 0x80000001);
  }
  uStack0000001a = param_4;
  local_40 = local_40 + -1;
  local_3f = local_3f + -1;
  if (param_6 < '\0') {
    param_6 = '\0';
  }
  iVar2 = *(int *)(param_3 + 0x174);
  if (iVar2 <= param_6) {
    param_6 = (char)iVar2 + -1;
  }
  if (cStack00000019 < '\0') {
    cStack00000019 = '\0';
  }
  if (*(int *)(param_3 + 0x178) <= (int)cStack00000019) {
    cStack00000019 = *(char *)(param_3 + 0x178) + -1;
  }
  if (local_40 < '\0') {
    local_40 = '\0';
  }
  if (iVar2 <= local_40) {
    local_40 = (char)iVar2 + -1;
  }
  if (local_3f < '\0') {
    local_3f = '\0';
  }
  if (*(int *)(param_3 + 0x178) <= (int)local_3f) {
    local_3f = *(char *)(param_3 + 0x178) + -1;
  }
  local_20 = (void *)0x0;
  local_1c = 0;
  local_18 = 0;
  local_14 = "World/Lot/GetTileQuadrantsCoveredByPolygon/tilePartCorners";
  local_3e = uStack0000001a;
  TilePartRectangleIterator_Construct(local_2c,(undefined2 *)&param_6,(undefined2 *)&local_40);
  bVar4 = TilePartRectangleIterator_IsDone((int)local_2c);
  while (!bVar4) {
    this = (undefined4 *)TilePartRectangleIterator_Current((int)local_2c);
    TileQuarter_WriteTriangle(this,(int *)&local_20);
    Geometry_GetPolygonXZBounds((int *)&local_20,local_10);
    bVar4 = Geometry_PolygonsIntersectWithBounds(&local_20,local_10,param_1,param_2);
    if (bVar4) {
      puVar3 = (undefined4 *)param_5[1];
      if (puVar3 < (undefined4 *)param_5[2]) {
        param_5[1] = puVar3 + 1;
        if (puVar3 != (undefined4 *)0x0) {
          *(undefined2 *)puVar3 = *(undefined2 *)this;
          *(undefined1 *)((int)puVar3 + 2) = *(undefined1 *)((int)this + 2);
          *(undefined1 *)((int)puVar3 + 3) = *(undefined1 *)((int)this + 3);
        }
      }
      else {
        FUN_00a4b4b0(param_5,puVar3,this);
      }
    }
    TilePartRectangleIterator_Next(local_2c);
    bVar4 = TilePartRectangleIterator_IsDone((int)local_2c);
  }
  if (local_20 != (void *)0x0) {
    Memory_FreeIfNonNull(local_20);
  }
  return;
}

