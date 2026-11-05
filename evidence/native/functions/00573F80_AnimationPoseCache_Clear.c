/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 forward clear of exactly two cached-pose slots. ECX render-state base, no stack
   arguments, plain RET. Visit base+10 then+18 in eight-byte strides, zero key and pointer before
   releasing a previous nonnull pose. Non-atomic pose decrement-to-zero resets count1 then virtual
   deleting call(argument1). This re-usable clear differs from00574010 destructor, which releases
   reverse pointer order and does not zero slots. Called by actual new-input producer009409F0 and
   selected pose-evaluation dirty path00940B10; it is not a renderer packet/history reset. */

void __fastcall AnimationPoseCache_Clear(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  
  for (piVar3 = (int *)(param_1 + 0x10); piVar3 != (int *)(param_1 + 0x20); piVar3 = piVar3 + 2) {
    puVar1 = (undefined4 *)*piVar3;
    piVar3[1] = 0;
    *piVar3 = 0;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  return;
}

