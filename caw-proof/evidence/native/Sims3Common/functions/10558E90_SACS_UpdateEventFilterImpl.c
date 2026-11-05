/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_UpdateEventFilterImpl. Export ordinal(s):
   736. Entry VA: 0x10558e90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EB8. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SACS_UpdateEventFilterImpl(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  undefined1 uVar2;
  
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    uVar2 = 0;
    switch(param_4) {
    case 0:
      uVar2 = 1;
    case 1:
      FUN_105f3c70(this,param_1,param_2,param_3,uVar2);
      return;
    case 2:
    case 3:
      FUN_105f34b0(this,param_1,param_2,param_3);
    }
  }
  return;
}

