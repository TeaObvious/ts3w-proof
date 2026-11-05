/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Computes unsigned sampleCount=height*width. Original budget
   side records use sampleCount/42 and /10, fixed record fields15000 and35000; byte01185178 imposes
   minimum10000/40000 respectively. Invokes optimizer budget evaluation when optimizer exists. These
   are geometry budget counts, not renderer memory-byte limits. */

void __thiscall TerrainOptimizerOwner_InitializeBudgets(void *this)

{
  int iVar1;
  uint *puVar2;
  uint uVar3;
  float10 fVar4;
  uint local_c;
  uint local_8;
  uint local_4;
  
  iVar1 = *(int *)(*(int *)((int)this + 8) + 8);
  uVar3 = *(int *)(iVar1 + 0x18) * *(int *)(iVar1 + 0x14);
  local_4 = uVar3 / 0x2a;
  if (DAT_01185178 != '\0') {
    local_c = 10000;
    puVar2 = &local_c;
    if (9999 < local_4) {
      puVar2 = &local_4;
    }
    local_4 = *puVar2;
  }
  *(undefined4 *)((int)this + 0x58) = 15000;
  *(uint *)((int)this + 0x5c) = local_4;
  if (*(void **)((int)this + 0x68) != (void *)0x0) {
    fVar4 = FUN_00c88a80(*(void **)((int)this + 0x68),local_4,0x100,*(uint *)((int)this + 0x58));
    *(float *)((int)this + 0x60) = (float)fVar4;
  }
  uVar3 = uVar3 / 10;
  local_8 = uVar3;
  if (DAT_01185178 != '\0') {
    local_c = 40000;
    puVar2 = &local_c;
    if (39999 < uVar3) {
      puVar2 = &local_8;
    }
    uVar3 = *puVar2;
  }
  *(undefined4 *)((int)this + 0x4c) = 35000;
  *(uint *)((int)this + 0x50) = uVar3;
  if (*(void **)((int)this + 0x68) != (void *)0x0) {
    fVar4 = FUN_00c88a80(*(void **)((int)this + 0x68),*(uint *)((int)this + 0x50),0x100,
                         *(uint *)((int)this + 0x4c));
    *(float *)((int)this + 0x54) = (float)fVar4;
  }
  return;
}

