/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CTProductModularObject_GetModularObjectTypeImpl.
   Export ordinal(s): 258. Entry VA: 0x1026c8d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001202. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined2 __cdecl CTProductModularObject_GetModularObjectTypeImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x26c8d0  258  CTProductModularObject_GetModularObjectTypeImpl */
  if ((param_1 & 0xff000000) == 0x54000000) {
    piVar1 = (int *)FUN_1055b120();
    if (piVar1 != (int *)0x0) {
      iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
      if (iVar2 == 0) {
        return _DAT_00000038;
      }
    }
  }
  return 0;
}

