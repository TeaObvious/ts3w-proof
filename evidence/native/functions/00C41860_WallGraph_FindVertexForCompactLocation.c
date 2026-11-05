/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX graph, stack+4 Float32X/Z+Int32level tuple, RET4; EAX vertex pointer or0.
   C5D530 constructs compact key, C41540 queries existing index. Sentinel or mismatch of any exact
   vertex bytes+4/+5/+6 returns0. Generic tree internals and current section-array ordering are not
   recovered by this role name. */

int __thiscall WallGraph_FindVertexForCompactLocation(void *this,float *param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  float local_10;
  char local_c;
  char local_b;
  char local_a;
  
  WallVertex_InitializeCompactLocation(&local_10,param_1);
  piVar1 = *(int **)((int)this + 0x10);
  param_1 = &local_10;
  piVar2 = (int *)FUN_00c41540(*(int *)((int)this + 0xc),(int)piVar1,(int *)&param_1);
  if ((((piVar2 == piVar1) || (iVar3 = *piVar2, *(char *)(iVar3 + 6) != local_a)) ||
      (*(char *)(iVar3 + 4) != local_c)) || (*(char *)(iVar3 + 5) != local_b)) {
    iVar3 = 0;
  }
  return iVar3;
}

