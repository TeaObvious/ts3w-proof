/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX service; slot/callback; RET8. Lock at40 then existing ClearSlot7286D0 then unlock.
   VtableFFE3F0+3C. Aligned callback itself releases lock/relocks inside ClearSlot; no
   outer-failure-finally contract. */

void __thiscall ResourceRequests_ClearSlotLocked(void *this,uint *param_1,undefined *param_2)

{
  FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x40),(uint *)&DAT_00ffe344);
  ResourceRequests_ClearSlot(this,param_1,param_2);
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x40));
  return;
}

