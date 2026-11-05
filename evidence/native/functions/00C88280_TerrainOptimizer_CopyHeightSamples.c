/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Copies uint16 source samples into every4-byte optimizer
   cell, pads right edge with last sample and lower rows with memcpy, then updates optimizer
   hierarchy00c87b80. Source image payload remains distinct from optimizer backing allocation.
   Empty/invalid input is not promised safe. */

void __thiscall
TerrainOptimizer_CopyHeightSamples(void *this,void *heightSamples,int rowStride,uint sampleSide)

{
  int iVar1;
  undefined2 uVar2;
  int iVar3;
  undefined2 *puVar4;
  uint uVar5;
  uint uVar6;
  
  uVar6 = 0;
  if (sampleSide != 0) {
    do {
      puVar4 = (undefined2 *)(**(int **)this + *(int *)((int)this + 8) * uVar6 * 4);
      uVar5 = 0;
      do {
        *puVar4 = *(undefined2 *)((int)heightSamples + uVar5 * 2);
        uVar5 = uVar5 + 1;
        puVar4 = puVar4 + 2;
      } while (uVar5 < sampleSide);
      uVar2 = *(undefined2 *)((int)heightSamples + sampleSide * 2 + -2);
      uVar5 = sampleSide;
      if (sampleSide < *(uint *)((int)this + 8)) {
        do {
          *puVar4 = uVar2;
          uVar5 = uVar5 + 1;
          puVar4 = puVar4 + 2;
        } while (uVar5 < *(uint *)((int)this + 8));
      }
      heightSamples = (void *)((int)heightSamples + rowStride);
      uVar6 = uVar6 + 1;
    } while (uVar6 < sampleSide);
  }
  uVar6 = *(uint *)((int)this + 8);
  iVar3 = **(int **)this;
  iVar1 = sampleSide - 1;
  if (sampleSide < uVar6) {
    do {
      memcpy((void *)(**(int **)this + *(int *)((int)this + 8) * sampleSide * 4),
             (void *)(iVar3 + iVar1 * uVar6 * 4),*(int *)((int)this + 8) * 4);
      sampleSide = sampleSide + 1;
    } while (sampleSide < *(uint *)((int)this + 8));
  }
  FUN_00c87b80(this,*(uint *)((int)this + 0xc));
  return;
}

