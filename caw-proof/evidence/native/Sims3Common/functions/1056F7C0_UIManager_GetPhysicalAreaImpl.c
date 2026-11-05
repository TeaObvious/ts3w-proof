/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetPhysicalAreaImpl. Export ordinal(s):
   1107. Entry VA: 0x1056f7c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006B4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_GetPhysicalAreaImpl(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar1 != (int *)0x0) {
        puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0x38))();
        *unaff_retaddr = *puVar2;
        unaff_retaddr[1] = puVar2[1];
        unaff_retaddr[2] = puVar2[2];
        unaff_retaddr[3] = puVar2[3];
      }
    }
  }
  return;
}

