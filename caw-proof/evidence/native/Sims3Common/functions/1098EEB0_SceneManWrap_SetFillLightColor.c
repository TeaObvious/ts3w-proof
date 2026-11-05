/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetFillLightColor. Export
   ordinal(s): 2279. Entry VA: 0x1098eeb0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600013E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SceneManWrap_SetFillLightColor(int param_1,float param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
                    /* 0x98eeb0  2279  SceneManWrap_SetFillLightColor */
  this = (void *)FUN_104de430(param_1);
  if ((this != (void *)0x0) && (piVar1 = *(int **)((int)this + 0xd8), piVar1 != (int *)0x0)) {
    local_30 = param_2;
    uStack_2c = param_3;
    uStack_28 = param_4;
    fStack_24 = param_2;
    local_20 = piVar1[0x54];
    iStack_1c = piVar1[0x55];
    iStack_18 = piVar1[0x56];
    iStack_14 = piVar1[0x57];
    FUN_104a38a0(this,&local_20,&local_30);
    (**(code **)(*piVar1 + 0x44))();
  }
  return;
}

