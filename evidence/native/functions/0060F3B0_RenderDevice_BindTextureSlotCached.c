/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX render device; stack slot,texture; RET0x08. Null texture selects
   handle0, otherwise native handle at texture+0x30. Update per-slot cache before virtual native
   bind+0x104 only when changed; HRESULT is ignored. Sampler selection is separate. Role name is
   descriptive, not a recovered original symbol. */

void __thiscall RenderDevice_BindTextureSlotCached(void *this,int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = 0;
  if (param_2 != 0) {
    iVar1 = *(int *)(param_2 + 0x30);
  }
  if (*(int *)((int)this + param_1 * 4 + 0x120) != iVar1) {
    *(int *)((int)this + param_1 * 4 + 0x120) = iVar1;
    (**(code **)(**(int **)((int)this + 0xc) + 0x104))(*(int **)((int)this + 0xc),param_1,iVar1);
  }
  return;
}

