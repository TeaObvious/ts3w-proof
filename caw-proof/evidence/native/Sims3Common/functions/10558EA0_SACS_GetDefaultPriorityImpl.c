/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_GetDefaultPriorityImpl. Export ordinal(s):
   717. Entry VA: 0x10558ea0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EBC. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SACS_GetDefaultPriorityImpl(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
                    /* 0x558ea0  717  SACS_GetDefaultPriorityImpl */
  piVar1 = (int *)FUN_1055b120();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    uVar3 = FUN_105f1e70(iVar2);
    return uVar3;
  }
  return 0xfffffffd;
}

