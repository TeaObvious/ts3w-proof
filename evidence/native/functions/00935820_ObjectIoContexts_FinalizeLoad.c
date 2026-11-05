/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX context-array owner plus two physical words
   owner/status, RET8. Iterates owner+4 DWORD-count context pointers at+8 ascending; invokes each
   context virtual+0Ch with both words synchronously, stops at first low AL0, otherwise returns
   literal AL1. Upper EAX is not a status contract. Context child semantics remain separate. */

undefined4 __thiscall
ObjectIoContexts_FinalizeLoad(void *this,undefined4 param_1,undefined4 param_2)

{
  uint in_EAX;
  uint uVar1;
  
  uVar1 = 0;
  if (*(int *)((int)this + 4) != 0) {
    do {
      in_EAX = (**(code **)(**(int **)(*(int *)((int)this + 8) + uVar1 * 4) + 0xc))(param_1,param_2)
      ;
      if ((char)in_EAX == '\0') {
        return in_EAX & 0xffffff00;
      }
      uVar1 = uVar1 + 1;
    } while (uVar1 < *(uint *)((int)this + 4));
  }
  return CONCAT31((int3)(in_EAX >> 8),1);
}

