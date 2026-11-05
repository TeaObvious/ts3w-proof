/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX path service, six stack dwords RET18,
   EAX state pointer or0. Resolves destination name hash+28 or0 for null, calls007FC3D0, reads
   selected path's first pointer. Empty selected path returns start only if loop byte+50 nonzero.
   Owns and cleans temporary native path container; current memoized summary arrays are a different
   storage policy. */

uint __thiscall
SacsPaths_SelectFirstStep
          (void *this,uint param_1,int param_2,int param_3,int param_4,int param_5,uint param_6)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  int local_2c [11];
  
  if (param_2 == 0) {
    uVar4 = 0;
  }
  else {
    uVar4 = *(uint *)(param_2 + 0x28);
  }
  uVar5 = 0;
  local_2c[0] = 0;
  local_2c[1] = 0;
  local_2c[2] = 0;
  local_2c[3] = 0;
  local_2c[4] = 0;
  local_2c[5] = 0;
  local_2c[6] = 0;
  local_2c[7] = 0;
  local_2c[8] = 0;
  local_2c[9] = 0;
  local_2c[10] = 0x1020234;
  FUN_007fa4d0(local_2c,0);
  iVar1 = SacsPaths_EnumerateFilterAndSelect
                    (this,local_2c,param_1,uVar4,param_3,param_4,param_5,param_6);
  if (-1 < iVar1) {
    iVar1 = (local_2c[2] - local_2c[3] >> 4) + iVar1;
    iVar2 = ((int)(iVar1 + 0x1000000 + (iVar1 + 0x1000000 >> 0x1f & 0xfU)) >> 4) + -0x100000;
    piVar3 = (int *)((iVar1 + iVar2 * -0x10) * 0x10 + *(int *)(local_2c[5] + iVar2 * 4));
    if ((piVar3[1] - *piVar3 & 0xfffffffcU) == 0) {
      if (*(char *)(param_1 + 0x50) != '\0') {
        FUN_007fa7a0(local_2c);
        return param_1;
      }
    }
    else {
      iVar2 = ((int)(iVar1 + 0x1000000 + (iVar1 + 0x1000000 >> 0x1f & 0xfU)) >> 4) + -0x100000;
      uVar5 = **(uint **)((iVar1 + iVar2 * -0x10) * 0x10 + *(int *)(local_2c[5] + iVar2 * 4));
    }
  }
  FUN_007fa7a0(local_2c);
  return uVar5;
}

