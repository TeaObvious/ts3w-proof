/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_StartMaterialBuildImpl.
   Export ordinal(s): 1291. Entry VA: 0x10577c50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CCD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_DesignModeSwap_StartMaterialBuildImpl(uint param_1,int param_2)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  short *psVar3;
  void *this;
  
                    /* 0x577c50  1291  World_DesignModeSwap_StartMaterialBuildImpl */
  if (param_2 == 0) {
    return in_EAX & 0xffffff00;
  }
  piVar1 = (int *)FUN_1055b120();
  uVar2 = param_1 & 0xff000000;
  if (uVar2 == 0x45000000) {
    psVar3 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    uVar2 = 0;
    if (this != (void *)0x0) {
      uVar2 = FUN_10020a20(this,psVar3);
      return uVar2;
    }
  }
  return uVar2;
}

