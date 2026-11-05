/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction qualification: ECX undoable plus eight physical stack words/RET20hex. Requires nonnull bound lot. Exact-equality/bit18 gate precedes work. Captures level0 height, forwards physical inputs reordered into D223F0, compares resulting ground and invokes D21EC0 only when ground changed. Argument6 becomes D223F0 cutoff input8; inputs7/8 are forwarded before that cutoff. Actual bytes/instruction order govern ABI; generated float names and type casts do not establish types. */

void __thiscall
FUN_00d228e0(void *this,ushort *param_1,float param_2,float param_3,float param_4,uint *param_5,
            int param_6,undefined4 param_7,undefined4 param_8)

{
  float fVar1;
  char cVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  uint3 local_4;
  undefined1 uStack_1;
  
  if (*(int *)((int)this + 0x50) != 0) {
    iVar4 = *(int *)(*(int *)((int)this + 0x50) + 0x290);
    cVar2 = *(char *)((int)param_1 + 1);
    cVar3 = (char)*param_1;
    iVar5 = *(int *)(iVar4 + 0x24);
    if ((*(float *)(*(int *)(iVar5 + 0x10) +
                   ((((int)(char)param_1[1] - *(int *)(iVar4 + 0x10)) * *(int *)(iVar5 + 4) +
                    (int)cVar3) * *(int *)(iVar5 + 8) + (int)cVar2) * 4) != param_2) ||
       ((*param_5 >> 0x12 & 1) == 0)) {
      iVar5 = *(int *)(iVar4 + 0x24);
      fVar1 = *(float *)(*(int *)(iVar5 + 0x10) +
                        (((int)cVar3 - *(int *)(iVar5 + 4) * *(int *)(iVar4 + 0x10)) *
                         *(int *)(iVar5 + 8) + (int)cVar2) * 4);
      uStack_1 = (undefined1)((uint)this >> 0x18);
      local_4 = (uint3)*param_1;
      FUN_00d223f0(this,(int *)param_1,param_2,param_3,param_4,param_5,param_7,param_8,param_6);
      iVar4 = *(int *)(*(int *)((int)this + 0x50) + 0x290);
      iVar5 = *(int *)(iVar4 + 0x24);
      if (*(float *)(*(int *)(iVar5 + 0x10) +
                    (((int)cVar3 - *(int *)(iVar5 + 4) * *(int *)(iVar4 + 0x10)) *
                     *(int *)(iVar5 + 8) + (int)cVar2) * 4) != fVar1) {
        FUN_00d21ec0(this,(char *)&local_4);
      }
    }
  }
  return;
}
