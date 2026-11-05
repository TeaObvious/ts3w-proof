/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 native two-slot pose cache publication. Physical ECX receiver, stack pointer then
   DWORD key; RET 08. Scan exactly receiver+10/+18; unsigned CMP/JA selects the smallest stored key,
   using the later slot on ties. This is the minimum raw UInt32 key, not computed age or modular
   recency. Write the chosen key before pointer equality check. If pointer differs, retain new
   nonnull pointer before publishing it, then release the old reference; decrement-to-zero resets
   count to1 before virtual deleting call(argument1). Equal pointer still updates the key without
   refcount work. Inferred signed param_2 spelling is preserved, but selection compares stored keys
   unsigned. No current C# resident lease, output vertex equality or failed-frame rollback is
   established. */

void __thiscall AnimationPoseCache_StoreByTick(void *this,undefined4 *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  
  uVar5 = 0xffffffff;
  piVar3 = (int *)((int)this + 0x10);
  piVar4 = piVar3;
  for (; piVar3 != (int *)((int)this + 0x20); piVar3 = piVar3 + 2) {
                    /* Unsigned key comparison; JA skips only strictly larger key, so last minimum
                       wins ties. */
    if ((uint)piVar3[1] <= uVar5) {
      piVar4 = piVar3;
      uVar5 = piVar3[1];
    }
  }
  puVar1 = (undefined4 *)*piVar4;
                    /* Key publication precedes pointer comparison/retention/release, including
                       identical-pointer replacement. */
  piVar4[1] = param_2;
  if (param_1 != puVar1) {
    if (param_1 != (undefined4 *)0x0) {
      param_1[1] = param_1[1] + 1;
    }
    *piVar4 = (int)param_1;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  return;
}

