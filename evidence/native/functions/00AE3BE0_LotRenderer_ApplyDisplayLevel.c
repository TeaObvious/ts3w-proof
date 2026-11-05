/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 authored-lot representations comparison): Analyst actual renderer consumer
   of requested display-level state. ECX renderer plus signed level and low-byte force in two DWORD
   slots, RET8. Reject outside signed renderer+68..renderer+6C+1; add uses native32-bit arithmetic.
   Inactive byte+1E zero stores+29C and returns without refresh. Active same level/forcezero does
   nothing; changed/forced stores+29C then refreshes actual wall+238, fence+248, floor+230,
   stair+254 and calls AE0B10. ABF620 collision-node update and message041F76BB are separate
   original producer/dispatch, not this renderer root storage. No inferred equality of model-ready,
   current packet generation or GPU commit. */

void __thiscall LotRenderer_ApplyDisplayLevel(void *this,int param_1,char param_2)

{
  if ((*(int *)((int)this + 0x68) <= param_1) && (param_1 <= *(int *)((int)this + 0x6c) + 1)) {
    if (*(char *)((int)this + 0x1e) == '\0') {
      *(int *)((int)this + 0x29c) = param_1;
      return;
    }
    if ((param_1 != *(int *)((int)this + 0x29c)) || (param_2 != '\0')) {
      *(int *)((int)this + 0x29c) = param_1;
      if (*(void **)((int)this + 0x238) != (void *)0x0) {
        FUN_00c4d0f0(*(void **)((int)this + 0x238));
      }
      if (*(int *)((int)this + 0x248) != 0) {
        FUN_00a67cb0(*(int *)((int)this + 0x248));
      }
      if (*(int *)((int)this + 0x230) != 0) {
        thunk_FUN_00aa11a0(*(int *)((int)this + 0x230));
      }
      if (*(void **)((int)this + 0x254) != (void *)0x0) {
        FUN_00b24500(*(void **)((int)this + 0x254),*(int *)((int)this + 0x29c));
      }
      LotRenderer_PublishLevelRootFlags((int)this);
    }
  }
  return;
}

