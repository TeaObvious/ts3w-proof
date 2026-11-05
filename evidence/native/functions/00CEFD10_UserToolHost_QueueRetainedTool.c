/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction preparation/interaction comparison): Analyst retained-tool-list
   insertion role, not recovered symbol. ECX list/sentinel owner; one stack DWORD pointing to the
   tool pointer; RET4. Allocate exactly12 bytes through4E4500 with original allocator/debug
   parameters, store tool at node+8 and increment tool+4 when nonnull, then link node between this
   and prior this+4 using original writes. The TEST is on allocated pointer plus8, not a robust
   malloc-null guard; do not rewrite this decompiler expression as guaranteed allocation failure
   handling. Sole selected incoming caller CEFD60 passes address of active pointer at host+2C and
   ECX host+180. This appends an actual retained ownership reference; deferred-list
   draining/destruction lies outside this body. */

void __thiscall UserToolHost_QueueRetainedTool(void *this,int *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
  puVar2 = (undefined4 *)FUN_004e4500(0xc,*(undefined4 *)((int)this + 8),0);
  if (puVar2 + 2 != (int *)0x0) {
    iVar1 = *param_1;
    puVar2[2] = iVar1;
    if (iVar1 != 0) {
      *(int *)(iVar1 + 4) = *(int *)(iVar1 + 4) + 1;
    }
  }
  *puVar2 = this;
  puVar2[1] = *(undefined4 *)((int)this + 4);
  **(int **)((int)this + 4) = (int)puVar2;
  *(undefined4 **)((int)this + 4) = puVar2;
  return;
}

