/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_CreateStopwatch. Export ordinal(s):
   994. Entry VA: 0x10566fa0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F4C. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl StopWatch_CreateStopwatch(int param_1)

{
  int *piVar1;
  void *this;
  DWORD *pDVar2;
  undefined4 uVar3;
  
  if (7 < param_1) {
    return 0;
  }
  piVar1 = (int *)FUN_1055b120();
  this = (void *)FUN_10918eb0(0x18,"Scripting/StopwatchHost/CreateStopwatch",0);
  if (this != (void *)0x0) {
    pDVar2 = FUN_10926ca0(this,param_1,'\0');
    uVar3 = (**(code **)(*piVar1 + 200))(pDVar2,0x10);
    return uVar3;
  }
  uVar3 = (**(code **)(*piVar1 + 200))(0,0x10);
  return uVar3;
}

