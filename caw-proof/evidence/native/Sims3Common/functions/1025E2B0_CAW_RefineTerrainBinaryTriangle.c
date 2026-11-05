/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Splits a binary triangle when its base midpoint error is
   strictly greater than the threshold, or when remaining depth forces subdivision. Visits the first
   child recursively and the second through the loop. Leaves append apex, second endpoint, first
   endpoint in that order when an output vector is present. The no-output path performs the same
   leaf/split counts. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_RefineTerrainBinaryTriangle(void *this,uint param_1,uint param_2,uint param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  void *pvVar3;
  uint *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  uVar2 = param_2 + param_3;
  uVar7 = param_1;
  uVar6 = param_2;
  uVar5 = param_3;
  uVar1 = param_4;
  while ((param_2 = uVar6, param_1 = uVar7, uVar1 != 0 &&
         ((uVar7 = uVar2 >> 1, (uint)(*(int *)((int)this + 0x10) * 2) <= uVar1 ||
          (*(ushort *)((int)this + 4) < *(ushort *)(**(int **)this + 2 + uVar7 * 4)))))) {
    *(int *)((int)this + 0x1c) = *(int *)((int)this + 0x1c) + 1;
    uVar1 = uVar1 - 1;
    CAW_RefineTerrainBinaryTriangle(this,uVar7,uVar5,param_1,uVar1);
    uVar2 = param_1 + param_2;
    uVar6 = param_1;
    uVar5 = param_2;
  }
  pvVar3 = *(void **)((int)this + 0x14);
  *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
  if (pvVar3 != (void *)0x0) {
    puVar4 = *(uint **)((int)pvVar3 + 4);
    param_3 = uVar5;
    if (puVar4 < *(uint **)((int)pvVar3 + 8)) {
      *(uint **)((int)pvVar3 + 4) = puVar4 + 1;
      if (puVar4 != (uint *)0x0) {
        *puVar4 = param_1;
      }
    }
    else {
      FUN_105ee480(pvVar3,puVar4,&param_1);
    }
    pvVar3 = *(void **)((int)this + 0x14);
    puVar4 = *(uint **)((int)pvVar3 + 4);
    if (puVar4 < *(uint **)((int)pvVar3 + 8)) {
      *(uint **)((int)pvVar3 + 4) = puVar4 + 1;
      if (puVar4 != (uint *)0x0) {
        *puVar4 = uVar5;
      }
    }
    else {
      FUN_105ee480(pvVar3,puVar4,&param_3);
    }
    pvVar3 = *(void **)((int)this + 0x14);
    puVar4 = *(uint **)((int)pvVar3 + 4);
    if (puVar4 < *(uint **)((int)pvVar3 + 8)) {
      *(uint **)((int)pvVar3 + 4) = puVar4 + 1;
      if (puVar4 != (uint *)0x0) {
        *puVar4 = param_2;
        return;
      }
    }
    else {
      FUN_105ee480(pvVar3,puVar4,&param_2);
    }
  }
  return;
}

