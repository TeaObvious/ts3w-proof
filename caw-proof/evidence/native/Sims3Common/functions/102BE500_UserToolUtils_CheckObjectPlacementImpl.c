/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_CheckObjectPlacementImpl. Export
   ordinal(s): 1175. Entry VA: 0x102be500. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AAF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl UserToolUtils_CheckObjectPlacementImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x45000000)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (piVar2 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar2 + 0xc))(0x519e4f25);
      if (piVar1 != (int *)0x0) {
        if (unaff_retaddr == 0) {
          return (uint)piVar1[0x29] >> 0xe & 1;
        }
        if (unaff_retaddr == 0x15) {
          return (uint)piVar1[0x26] >> 10 & 1;
        }
      }
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

