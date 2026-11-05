/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX global config, pointer to UInt32
   key. Walk20-byte entries at+49C..+4A0, compare key, return entry+4 path storage or null. Root
   keys are not product flags. */

int * __thiscall ContentRoots_FindByKey(void *this,int *param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  
  iVar3 = *(int *)((int)this + 0x4a0) - *(int *)((int)this + 0x49c);
  iVar2 = iVar3 >> 0x1f;
  uVar4 = 0;
  if (iVar3 / 0x14 + iVar2 != iVar2) {
    piVar1 = *(int **)((int)this + 0x49c);
    piVar5 = piVar1;
    do {
      if (*piVar5 == *param_1) {
        return piVar1 + uVar4 * 5 + 1;
      }
      uVar4 = uVar4 + 1;
      piVar5 = piVar5 + 5;
    } while (uVar4 < (uint)((*(int *)((int)this + 0x4a0) - (int)piVar1) / 0x14));
  }
  return (int *)0x0;
}

