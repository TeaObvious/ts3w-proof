/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_SetNewCompositorImpl. Export
   ordinal(s): 1286. Entry VA: 0x10577af0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CCA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_DesignModeSwap_SetNewCompositorImpl(uint param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  uint in_EAX;
  int *piVar2;
  uint uVar3;
  void *this;
  uint unaff_EBX;
  int unaff_EDI;
  int unaff_retaddr;
  void *local_4;
  
                    /* 0x577af0  1286  World_DesignModeSwap_SetNewCompositorImpl */
  iVar1 = param_3;
  if (param_3 == 0) {
    return in_EAX & 0xffffff00;
  }
  piVar2 = (int *)FUN_1055b120();
  uVar3 = param_1 & 0xff000000;
  if (uVar3 == 0x45000000) {
    param_3 = 0;
    uVar3 = (**(code **)(*piVar2 + 0x70))(iVar1,&param_3);
    if ((unaff_retaddr != 0) && (unaff_EDI != 0)) {
      this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
      uVar3 = 0;
      if (this != (void *)0x0) {
        uVar3 = FUN_1001fec0(this,unaff_EBX,local_4,(size_t)&local_4);
        return uVar3;
      }
    }
  }
  return uVar3 & 0xffffff00;
}

