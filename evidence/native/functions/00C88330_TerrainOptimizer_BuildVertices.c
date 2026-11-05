/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Stores height scale+30; computes
   exponent/sideN=(1<<exponent)+1 from sideMinusOne. ChangedN releases old data then allocates4*N
   row pointers and4*N*N backing bytes taggedTerrain/Optimizer/VerticesPtr andVertices. Arithmetic
   includes saturating allocation-size overflow handling; no malformed-large-input safety claim.
   Rows point into contiguous backing store. Calls00c88280 with source sample side=sideMinusOne+1.
    */

void __thiscall
TerrainOptimizer_BuildVertices
          (void *this,void *heightSamples,int rowStride,uint sideMinusOne,float heightScale)

{
  int iVar1;
  int iVar2;
  longlong lVar3;
  undefined4 uVar4;
  uint uVar5;
  
  *(float *)((int)this + 0x30) = heightScale;
  *(undefined4 *)((int)this + 0xc) = 0;
  if (2 < sideMinusOne) {
    do {
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
    } while ((1 << ((byte)*(undefined4 *)((int)this + 0xc) & 0x1f)) + 1U < sideMinusOne);
  }
  uVar5 = (1 << ((byte)*(undefined4 *)((int)this + 0xc) & 0x1f)) + 1;
  if (uVar5 != *(uint *)((int)this + 8)) {
    if (*(undefined4 **)this != (undefined4 *)0x0) {
      Memory_FreeIfNonNull((void *)**(undefined4 **)this);
      Memory_FreeIfNonNull(*(void **)this);
      *(undefined4 *)this = 0;
      *(undefined4 *)((int)this + 0x14) = 0;
      *(undefined4 *)((int)this + 0x10) = 0;
      *(undefined1 *)((int)this + 0x34) = 0;
      *(undefined4 *)((int)this + 8) = 0;
    }
    *(uint *)((int)this + 8) = uVar5;
    uVar4 = FUN_004e4500(-(uint)((int)((ulonglong)uVar5 * 4 >> 0x20) != 0) |
                         (uint)((ulonglong)uVar5 * 4),"Terrain/Optimizer/VerticesPtr",0);
    *(undefined4 *)this = uVar4;
    lVar3 = (ulonglong)(uint)(*(int *)((int)this + 8) * *(int *)((int)this + 8)) * 4;
    uVar4 = FUN_004e4500(-(uint)((int)((ulonglong)lVar3 >> 0x20) != 0) | (uint)lVar3,
                         "Terrain/Optimizer/Vertices",0);
    **(undefined4 **)this = uVar4;
    uVar5 = 1;
    if (1 < *(uint *)((int)this + 8)) {
      do {
        iVar2 = uVar5 * 4;
        iVar1 = uVar5 * 4;
        uVar5 = uVar5 + 1;
        *(int *)(*(int *)this + iVar1) =
             *(int *)(*(int *)this + -4 + iVar2) + *(int *)((int)this + 8) * 4;
      } while (uVar5 < *(uint *)((int)this + 8));
    }
  }
  TerrainOptimizer_CopyHeightSamples(this,heightSamples,rowStride,sideMinusOne + 1);
  return;
}

