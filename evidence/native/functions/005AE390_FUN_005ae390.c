/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * cdecl record pointer/plain RET, AL1. Requires global interface and record+18 callback; forms UInt64 variant from+8 then physical virtual134 call pushes count1, parameter variant, callback and output variant. Pseudocode omits those argument words and misrepresents EDI cleanup; instructions govern. Full dispatcher/usercallback lifetime is not proved by this helper.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 005AE390_FUN_005ae390.asm
 */

undefined4 __cdecl FUN_005ae390(int param_1)

{
  int *piVar1;
  uint unaff_EDI;
  undefined ***pppuStack_50;
  undefined **local_40 [2];
  undefined2 local_38;
  undefined2 local_36;
  undefined **appuStack_30 [2];
  byte bStack_28;
  undefined1 local_20 [32];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (*(int *)(param_1 + 0x18) != 0)) {
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    pppuStack_50 = (undefined ***)0x5ae3cd;
    Variant_AssignUInt64(local_40,(ulonglong *)(param_1 + 8));
    pppuStack_50 = local_40;
    piVar1 = (int *)(**(code **)(*piVar1 + 0x134))(local_20,*(undefined4 *)(param_1 + 0x18));
    appuStack_30[0] = &PTR_FUN_00fba6f4;
    if ((bStack_28 & 4) != 0) {
      piVar1 = (int *)FUN_004f5760(appuStack_30,'\0');
    }
    pppuStack_50 = (undefined ***)&PTR_FUN_00fba6f4;
    if ((unaff_EDI & 4) != 0) {
      piVar1 = (int *)FUN_004f5760(&pppuStack_50,'\0');
    }
  }
  return CONCAT31((int3)((uint)piVar1 >> 8),1);
}

