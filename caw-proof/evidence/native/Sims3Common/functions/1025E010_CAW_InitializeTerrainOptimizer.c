/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Allocates or reuses a square grid whose side is a power of
   two plus one, stores the supplied height quantum at optimizer +30, copies raw samples through
   0x1025DF60, and initializes the hierarchy exponent. This contract is distinct from bilinear
   height interpolation. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_InitializeTerrainOptimizer(void *this,int param_1,int param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  longlong lVar3;
  undefined4 uVar4;
  uint uVar5;
  
  *(int *)((int)this + 0x30) = param_4;
  *(undefined4 *)((int)this + 0xc) = 0;
  if (2 < param_3) {
    do {
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
    } while ((1 << ((byte)*(undefined4 *)((int)this + 0xc) & 0x1f)) + 1U < param_3);
  }
  uVar5 = (1 << ((byte)*(undefined4 *)((int)this + 0xc) & 0x1f)) + 1;
  if (uVar5 != *(uint *)((int)this + 8)) {
    if (*(int **)this != (int *)0x0) {
      FUN_10918e90(**(int **)this);
      FUN_10918e90(*(int *)this);
      *(undefined4 *)this = 0;
      *(undefined4 *)((int)this + 0x14) = 0;
      *(undefined4 *)((int)this + 0x10) = 0;
      *(undefined1 *)((int)this + 0x34) = 0;
      *(undefined4 *)((int)this + 8) = 0;
    }
    *(uint *)((int)this + 8) = uVar5;
    uVar4 = FUN_10918eb0(-(uint)((int)((ulonglong)uVar5 * 4 >> 0x20) != 0) |
                         (uint)((ulonglong)uVar5 * 4),"Terrain/Optimizer/VerticesPtr",0);
    *(undefined4 *)this = uVar4;
    lVar3 = (ulonglong)(uint)(*(int *)((int)this + 8) * *(int *)((int)this + 8)) * 4;
    uVar4 = FUN_10918eb0(-(uint)((int)((ulonglong)lVar3 >> 0x20) != 0) | (uint)lVar3,
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
  CAW_CopyHeightSamplesAndBuildErrors(this,param_1,param_2,param_3 + 1);
  return;
}

