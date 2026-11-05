/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_GetTarget. Export ordinal(s): 287. Entry
   VA: 0x1052f500. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A22. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl Camera_GetTarget(undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined1 local_20 [28];
  
                    /* 0x52f500  287  Camera_GetTarget */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x30))(local_20);
        FUN_1055dc20(param_1,puVar3);
        return param_1;
      }
    }
  }
  FUN_1055da40(param_1,0,0,0);
  return param_1;
}

