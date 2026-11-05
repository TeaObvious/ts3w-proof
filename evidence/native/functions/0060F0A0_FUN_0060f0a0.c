/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXrenderDevice; stage,pairs,count three stackwordsRET0C void. Perstage stride74 base810, state-1 index. Changed rawvalue updates cache844+stage*74+4*(state-1) BEFORE device+0C COMvirtual+114(stage,state,value); HRESULT ignored. Equalvalue skipsCOM. Every visitedpair marks activeoverride bit(state-1) at87C+stage*74 even equality. Count0 no loop; no localstage/state validation, no CPU mip clamp, calleradmission not universal. */

void __thiscall FUN_0060f0a0(void *this,int param_1,int *param_2,int param_3)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar5 = param_1 * 0x74;
  if (param_3 != 0) {
    do {
      iVar3 = *param_2;
      iVar4 = param_2[1];
      param_3 = param_3 + -1;
      iVar1 = iVar3 + -1;
      param_2 = param_2 + 2;
      if (*(int *)((int)this + iVar1 * 4 + iVar5 + 0x844) != iVar4) {
        *(int *)((int)this + iVar1 * 4 + iVar5 + 0x844) = iVar4;
        (**(code **)(**(int **)((int)this + 0xc) + 0x114))
                  (*(int **)((int)this + 0xc),param_1,iVar3,iVar4);
      }
      puVar2 = (uint *)((int)this + iVar5 + 0x87c);
      *puVar2 = *puVar2 | 1 << ((byte)iVar1 & 0x1f);
    } while (param_3 != 0);
  }
  return;
}
