/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_SetSourceBuildBuyImpl.
   Export ordinal(s): 1288. Entry VA: 0x105779f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
World_DesignModeSwap_SetSourceBuildBuyImpl
          (float param_1,int param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  int *piVar1;
  void *this;
  uint uVar2;
  float fStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  float fStack_18;
  
                    /* 0x5779f0  1288  World_DesignModeSwap_SetSourceBuildBuyImpl */
  fStack_24 = 4.2495253e-29;
  piVar1 = (int *)FUN_1055b120();
  if (((uint)param_1 & 0xff000000) == 0x45000000) {
    fStack_24 = param_1;
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    piVar1 = (int *)0x0;
    if (this != (void *)0x0) {
      fStack_24 = param_3;
      uStack_20 = param_4;
      uStack_1c = param_5;
      fStack_18 = param_3;
      uVar2 = FUN_1001f500(this,param_2,&fStack_24);
      return uVar2;
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

