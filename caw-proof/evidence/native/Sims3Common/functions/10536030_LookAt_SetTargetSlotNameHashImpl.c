/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_SetTargetSlotNameHashImpl. Export
   ordinal(s): 466. Entry VA: 0x10536030. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060002AE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl LookAt_SetTargetSlotNameHashImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *this;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)FUN_1055b120();
    this = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (this != (undefined4 *)0x0) {
      this[1] = this[1] + 1;
      FUN_1037dee0(this,param_1);
      iVar1 = this[1];
      this[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        this[1] = 1;
        (**(code **)*this)(1);
      }
    }
  }
  return;
}

