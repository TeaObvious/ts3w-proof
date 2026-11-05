/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX material binding; stack hash,currentTexture; RET0x08. Find hash
   at32-byte stride, store current texture at entry+0x14 then kind6 at+0x1E, decrement
   outstanding+0x48 and signal when zero. Missing hash has no local null guard before store; do not
   infer safe missing-entry behavior. Role name is descriptive, not a recovered original symbol. */

void __thiscall MaterialShaderBinding_PublishTextureEntry(void *this,int param_1,int param_2)

{
  int *piVar1;
  
  for (piVar1 = *(int **)((int)this + 100); piVar1 != *(int **)((int)this + 0x68);
      piVar1 = piVar1 + 8) {
    if (*piVar1 == param_1) goto LAB_006c9a2d;
  }
  piVar1 = (int *)0x0;
LAB_006c9a2d:
  piVar1[5] = param_2;
  *(undefined1 *)((int)piVar1 + 0x1e) = 6;
  piVar1 = (int *)((int)this + 0x48);
  *piVar1 = *piVar1 + -1;
  if (*piVar1 == 0) {
    FUN_006de790((void *)((int)this + 0x28),3);
  }
  return;
}

