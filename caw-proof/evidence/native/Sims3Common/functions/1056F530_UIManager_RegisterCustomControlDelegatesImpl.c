/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_RegisterCustomControlDelegatesImpl.
   Export ordinal(s): 1139. Entry VA: 0x1056f530. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600068B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
UIManager_RegisterCustomControlDelegatesImpl(uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  void *this;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      this = (void *)(**(code **)(*piVar1 + 0xc))(0x56bb768);
      if (this != (void *)0x0) {
        FUN_105d5ef0(this,unaff_retaddr,(short)param_1,param_2,param_3);
      }
    }
  }
  return;
}

