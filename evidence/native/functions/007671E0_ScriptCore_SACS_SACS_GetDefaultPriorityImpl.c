/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_GetDefaultPriorityImpl. Looks up driver and tail-calls
   0x008002E0 when present; missing driver returns -3 (0xFFFFFFFD as native uint). Raw proof:
   guides/sacs/native/disassembly/get-default-priority-entry-7671e0.objdump.txt;
   reference . */

undefined4 ScriptCore_SACS__SACS_GetDefaultPriorityImpl(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    uVar3 = FUN_008002e0(iVar2);
    return uVar3;
  }
  return 0xfffffffd;
}

