/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Visits the width/block-size squared chunks through
   0x1025E610. Sums leaf and split-derived counts. If any chunk exceeds its caller maximum, assigns
   0x1000000 to both counts and stops. These counters constrain adaptive triangles, not the final
   number of unique published vertex identities. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_CountAdaptiveTerrainChunks(void *this,uint param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined4 local_4;
  
  uVar1 = *(uint *)((int)this + 8) / *(uint *)((int)this + 0x20);
  iVar3 = 0;
  uVar2 = 0;
  local_4 = 0;
  uVar1 = uVar1 * uVar1;
  if (uVar1 == 0) {
    *(undefined4 *)((int)this + 0x18) = 0;
    *(undefined4 *)((int)this + 0x1c) = 0;
    return;
  }
  do {
    *(uint *)((int)this + 0x24) = uVar2;
    CAW_VisitTerrainChunkRootFan(this);
    iVar3 = iVar3 + *(int *)((int)this + 0x18);
    local_4 = local_4 + *(uint *)((int)this + 0x1c);
    if (param_1 < *(uint *)((int)this + 0x1c)) {
      *(undefined4 *)((int)this + 0x18) = 0x1000000;
      *(undefined4 *)((int)this + 0x1c) = 0x1000000;
      return;
    }
    uVar2 = uVar2 + 1;
  } while (uVar2 < uVar1);
  *(int *)((int)this + 0x18) = iVar3;
  *(int *)((int)this + 0x1c) = local_4;
  return;
}

