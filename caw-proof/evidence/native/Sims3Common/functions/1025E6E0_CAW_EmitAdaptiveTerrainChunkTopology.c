/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Sets the requested chunk identity, threshold and block
   size; counts first, sizes the index vector, emits through 0x1025E610, then compacts grid
   identities through 0x1025E3B0. This ordinary terrain producer precedes separate lot clipping and
   packed collision quantization. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_EmitAdaptiveTerrainChunkTopology
          (void *this,undefined4 param_1,float param_2,uint param_3,int *param_4,int *param_5)

{
  void *_Src;
  int iVar1;
  int iVar2;
  void *_Dst;
  
  _Dst = (void *)0x0;
  *(undefined4 *)((int)this + 0x10) = 0;
  if (1 < param_3) {
    do {
      *(int *)((int)this + 0x10) = *(int *)((int)this + 0x10) + 1;
    } while ((uint)(1 << ((byte)*(undefined4 *)((int)this + 0x10) & 0x1f)) < param_3);
  }
  *(short *)((int)this + 4) = (short)(int)param_2;
  *(undefined4 *)((int)this + 0x24) = param_1;
  *(uint *)((int)this + 0x20) = param_3;
  CAW_VisitTerrainChunkRootFan(this);
  _Src = (void *)*param_4;
  iVar1 = *(int *)((int)this + 0x18);
  if ((uint)(param_4[2] - (int)_Src >> 2) < (uint)(iVar1 * 3)) {
    iVar2 = param_4[1];
    if (iVar1 * 3 != 0) {
      _Dst = (void *)FUN_10918eb0(iVar1 * 0xc,param_4[3],0);
    }
    memmove(_Dst,_Src,iVar2 - (int)_Src);
    if (*param_4 != 0) {
      FUN_10918e90(*param_4);
    }
    iVar2 = *param_4;
    *param_4 = (int)_Dst;
    param_4[1] = (int)((int)_Dst + (param_4[1] - iVar2 >> 2) * 4);
    param_4[2] = (int)((int)_Dst + iVar1 * 0xc);
  }
  param_4[1] = *param_4;
  *(int **)((int)this + 0x14) = param_4;
  CAW_VisitTerrainChunkRootFan(this);
  *(undefined4 *)((int)this + 0x14) = 0;
  CAW_CompactAdaptiveTerrainVertexIdentities(this,param_4,param_5);
  return;
}

