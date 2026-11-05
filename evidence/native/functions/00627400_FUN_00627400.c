/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintSet_InsertRetainedNode.
   Original Ghidra database symbol: FUN_00627400; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00627400,00627487); 0 envelope gap bytes are not owned instructions.
*/

/* Unique insertion reaches this helper only after pointer-key admission in 628CA0. 627451..65 stores the footprint pointer at new-node+10 and calls virtual+90 for a nonnull key. 627477 increments set+14 exactly once after tree linking. Generic allocation failure/exception guarantees are not established. */

void __thiscall
FootprintSet_InsertRetainedNode(void *this,undefined4 *param_1,undefined4 *param_2,uint *param_3,char param_4)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  if (((param_4 == '\0') && (param_2 != (undefined4 *)((int)this + 4))) &&
     ((uint)param_2[4] <= *param_3)) {
    iVar3 = 1;
  }
  else {
    iVar3 = 0;
  }
  piVar2 = (int *)FUN_004e4500(0x14,*(undefined4 *)((int)this + 0x18),0);
  if (piVar2 + 4 != (int *)0x0) {
    piVar1 = (int *)*param_3;
    piVar2[4] = (int)piVar1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x90))();
    }
  }
  FUN_004e1150(piVar2,param_2,(undefined4 *)((int)this + 4),iVar3);
  /* 00627477: count increments only on new retained-node insertion. */
  *(int *)((int)this + 0x14) = *(int *)((int)this + 0x14) + 1;
  *param_1 = piVar2;
  return;
}
