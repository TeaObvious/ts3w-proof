/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): Finds caller-supplied
   geometry key; returns existing index without sampling. Otherwise samples supplied lot-local
   position, ADDPS first forms floorY+binary32 lift0.01, then adds platform lift0.1875 (or zero).
   The decompiler reverses that floating addition order and is not authoritative; writes x/y/z plus
   cutout UV words when selected group has cutout identity. Inserts key/index and expands bounds.
   EAX is vertex index, not Boolean; native grouping/key/cutout machinery is not reproduced by a
   plain (x,z) managed dictionary. */

int __thiscall
FloorFeatureGeometry_GetOrAddVertex
          (void *this,int *param_1,float param_2,float param_3,undefined4 param_4,uint param_5,
          char param_6)

{
  int iVar1;
  int iVar2;
  uint local_54;
  uint local_50;
  int local_4c;
  float local_48;
  float local_44;
  undefined4 local_40;
  undefined1 local_3c [12];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  
  local_48 = param_2;
  local_40 = param_4;
  local_44 = param_3;
  UInt32PairMap_Find(param_1 + 8,&local_50,&param_5);
  if (local_50 != *(uint *)(param_1[9] + param_1[10] * 4)) {
    return *(int *)(local_50 + 4);
  }
  iVar2 = param_1[1] - *param_1 >> 4;
  LotLocation_CopyXZAndSampleElevation(*(void **)((int)this + 0x29c),&local_48,&local_20);
  if (param_6 == '\0') {
    fStack_24 = 0.0;
  }
  else {
    fStack_24 = 0.1875;
  }
  local_30 = fStack_24 + fStack_1c + 0.01;
  fStack_2c = fStack_24 + fStack_1c + 0.01;
  fStack_28 = fStack_24 + fStack_1c + 0.01;
  fStack_24 = fStack_24 + fStack_1c + 0.01;
  FUN_00a7d460(param_1);
  iVar1 = param_1[1];
  *(float *)(iVar1 + -0x10) = param_2;
  *(float *)(iVar1 + -0xc) = local_30;
  *(float *)(iVar1 + -8) = param_3;
  if (*(ushort *)(param_1 + 0x18) == 0) {
    *(undefined2 *)(iVar1 + -4) = 0;
    *(undefined2 *)(iVar1 + -2) = 0;
  }
  else {
    FUN_00a7c860((void *)(*(int *)((int)this + 0x278) + -0x28 +
                         (uint)*(ushort *)(param_1 + 0x18) * 0x28),param_2,param_3,
                 (undefined2 *)(iVar1 + -4),(undefined2 *)(iVar1 + -2));
  }
  local_54 = (uint)this & 0xffffff00;
  local_50 = param_5;
  local_4c = iVar2;
  UInt32PairMap_InsertUnique(param_1 + 8,local_3c,&local_50,local_54);
  FUN_0068bee0(param_1 + 0x10,param_2,local_30,param_3);
  FUN_0068bee0(param_1 + 0x10,param_2,local_30 + 0.01,param_3);
  return iVar2;
}

