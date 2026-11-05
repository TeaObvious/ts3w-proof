/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX renderer; three physical stack DWORDs, RET0C.
   Unless global0115C178==1, store lot identity at+518/+51C even if flag unchanged. Changed byte+515
   additionally updates optional owner+38 and scene filter+8. No geometry ownership transfer. */

void __thiscall
SceneRenderer_SetBasementView(void *this,char param_1,undefined4 param_2,undefined4 param_3)

{
  if (DAT_0115c178 != '\x01') {
    *(undefined4 *)((int)this + 0x518) = param_2;
    *(undefined4 *)((int)this + 0x51c) = param_3;
    if (*(char *)((int)this + 0x515) != param_1) {
      *(char *)((int)this + 0x515) = param_1;
      if (*(void **)((int)this + 0x38) != (void *)0x0) {
        FUN_006dedc0(*(void **)((int)this + 0x38),param_1);
      }
      FUN_006e3ca0(*(int *)((int)this + 8));
    }
  }
  return;
}

