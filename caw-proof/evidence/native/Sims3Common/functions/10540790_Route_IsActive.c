/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_IsActive. Export ordinal(s): 671. Entry VA:
   0x10540790. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600017C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl Route_IsActive(uint param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x540790  671  Route_IsActive */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      iVar1 = piVar2[0x18];
      (**(code **)(*piVar2 + 0x14))();
      return (char)iVar1;
    }
  }
  return 0;
}

