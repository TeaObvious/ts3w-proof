/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall
   owner,resourceView,unusedContext,swapWordFlag; RET0C and BOOL onlyAL. Only incoming flag LOWBYTE
   is tested; full4-byte ABI slot is later reused for a temporary allocation-name pointer. Resource
   view virtual+1C supplies unsigned size; underlying payload at view+4 owner+8. Initial size>=20
   even versions0/1. Optional swap transforms floor(size/4)DWORDs. Count+0C<65536. Version
   unsigned<2 selects header16/compact4-byte records; >=2 header20 and flags+10 bit1 selects
   expanded12-byte records, otherwise compact. Preflight checks only count*4+header even expanded
   branch. Tag+0 and declared stride+8 are NOT checked/consumed in this leaf; no highest-version
   admission. Compact word maps byte24->zeroextendedu16offset,byte16type,byte0usage,byte8usageIndex;
   expanded words map low16offset,low8type,thirdwordlow8usage/bits16usageIndex. Stream and method
   are0. Releases old declaration before cache/create attempt, no rollback; temp allocation
   failure/unsafe enums not contained here. Native declaration builder derives stream stride, not
   serialized stride. No vertex payload scale/bias or weight synthesis. */

bool __thiscall
VertexFormatResource_ReadElements
          (void *this,void *resourceView,void *unusedContext,uint swapWordFlag)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int *piVar4;
  bool bVar5;
  uint uVar6;
  uchar *puVar7;
  void *this_00;
  uint *puVar8;
  uint *puVar9;
  NativeVertexElement8 *apNStack_10 [4];
  
  if (*(int *)((int)resourceView + 4) == 0) {
    puVar9 = (uint *)0x0;
  }
  else {
    puVar9 = *(uint **)(*(int *)((int)resourceView + 4) + 8);
  }
  uVar6 = (**(code **)(*(int *)resourceView + 0x1c))();
  if (uVar6 < 0x14) {
    return false;
  }
  if ((char)swapWordFlag != '\0') {
    FUN_007d3070(puVar9,uVar6 >> 2);
  }
  uVar1 = puVar9[3];
  if (0xffff < uVar1) {
    return false;
  }
  if (puVar9[1] < 2) {
    if (uVar6 < uVar1 * 4 + 0x10) {
      return false;
    }
    if (1 < puVar9[1]) goto LAB_006d8a78;
  }
  else {
LAB_006d8a78:
    if (uVar6 < uVar1 * 4 + 0x14) {
      return false;
    }
  }
  swapWordFlag = (uint)s_Renderer_ModelFactory_TempElemen_00ff7764;
  FUN_006d89c0(apNStack_10,uVar1,&swapWordFlag);
  puVar8 = puVar9 + 5;
  if (puVar9[1] < 2) {
    puVar8 = puVar9 + 4;
  }
  else if ((puVar9[4] & 1) != 0) {
    uVar6 = 0;
    if (puVar9[3] != 0) {
      puVar7 = &apNStack_10[0]->type;
      puVar8 = puVar9 + 7;
      do {
        uVar1 = puVar8[-2];
        uVar2 = *puVar8;
        uVar3 = puVar8[-1];
        ((NativeVertexElement8 *)(puVar7 + -4))->stream = 0;
        *(ushort *)(puVar7 + -2) = (ushort)uVar1;
        *puVar7 = (uchar)uVar3;
        puVar7[1] = '\0';
        puVar7[2] = (uchar)uVar2;
        puVar7[3] = (uchar)(uVar2 >> 0x10);
        uVar6 = uVar6 + 1;
        puVar8 = puVar8 + 3;
        puVar7 = puVar7 + 8;
      } while (uVar6 < puVar9[3]);
    }
    goto LAB_006d8b36;
  }
  uVar6 = 0;
  if (puVar9[3] != 0) {
    puVar7 = &apNStack_10[0]->type;
    do {
      uVar1 = puVar8[uVar6];
      *(ushort *)(puVar7 + -2) = (ushort)(byte)(uVar1 >> 0x18);
      ((NativeVertexElement8 *)(puVar7 + -4))->stream = 0;
      *puVar7 = (uchar)(uVar1 >> 0x10);
      puVar7[1] = '\0';
      puVar7[2] = (uchar)uVar1;
      puVar7[3] = (uchar)(uVar1 >> 8);
      uVar6 = uVar6 + 1;
      puVar7 = puVar7 + 8;
    } while (uVar6 < puVar9[3]);
  }
LAB_006d8b36:
  this_00 = (void *)FUN_0061abf0();
  piVar4 = *(int **)((int)this + 0x28);
  if (piVar4 != (int *)0x0) {
    *(void **)((int)this + 0x28) = (void *)0x0;
    (**(code **)(*piVar4 + 8))();
  }
  bVar5 = VertexFormatCache_GetOrCreate
                    (this_00,apNStack_10[0],puVar9[3],(void **)((int)this + 0x28));
  if (bVar5) {
    FUN_00731be0(this,0x30);
    if (apNStack_10[0] != (NativeVertexElement8 *)0x0) {
      Memory_FreeIfNonNull(apNStack_10[0]);
    }
    return true;
  }
  if (apNStack_10[0] != (NativeVertexElement8 *)0x0) {
    Memory_FreeIfNonNull(apNStack_10[0]);
  }
  return false;
}

