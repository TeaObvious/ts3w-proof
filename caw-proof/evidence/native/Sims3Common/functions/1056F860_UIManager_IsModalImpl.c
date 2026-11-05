/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_IsModalImpl. Export ordinal(s): 1129.
   Entry VA: 0x1056f860. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006BC. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl UIManager_IsModalImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (piVar2 != (int *)0x0) {
      iVar3 = (**(code **)(*piVar2 + 0xc))(0xeeee8218);
      piVar1 = (int *)0x0;
      if (iVar3 != 0) {
        piVar1 = (int *)FUN_1093d2e0();
        uVar4 = (**(code **)(*piVar1 + 0x88))(iVar3);
        return uVar4;
      }
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

