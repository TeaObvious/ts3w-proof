/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_HasActorImpl. Export ordinal(s): 722. Entry
   VA: 0x10558ae0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EA9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl SACS_HasActorImpl(undefined4 param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
                    /* 0x558ae0  722  SACS_HasActorImpl */
  piVar2 = (int *)FUN_1055b120();
  iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
  if (iVar3 != 0) {
    bVar1 = FUN_105f1c50(iVar3);
    return bVar1;
  }
  return false;
}

