/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053dad0. Calls attached-set insertion at effect+24, then supplied object
   virtual98. Physical ECX plus one word/RET4; no fabricated rollback or ownership transfer
   inferred. */

void __thiscall StaticRotate_AttachWindow(void *this,int *param_1)

{
  uint local_8 [2];
  
  local_8[0] = local_8[0] & 0xffffff00;
  FUN_0053d950((void *)((int)this + 0x24),local_8,(uint *)&param_1);
  (**(code **)(*param_1 + 0x98))();
  return;
}

