/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SubstitutePathsFromRoute. Export
   ordinal(s): 703. Entry VA: 0x10556fa0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600017D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl Route_SubstitutePathsFromRoute(uint param_1,uint param_2)

{
  int *this;
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint in_EAX;
  
  if (DAT_10c78944 == (void *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    in_EAX = 0;
    if (this != (int *)0x0) {
      in_EAX = (**(code **)(*this + 0x10))();
    }
    if (DAT_10c78944 != (void *)0x0) {
      piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_2);
      in_EAX = 0;
      if (piVar1 != (int *)0x0) {
        in_EAX = (**(code **)(*piVar1 + 0x10))();
      }
      goto LAB_105563a8;
    }
  }
  piVar1 = (int *)0x0;
LAB_105563a8:
  if (this == (int *)0x0) {
    if (piVar1 != (int *)0x0) {
      in_EAX = (**(code **)(*piVar1 + 0x14))();
    }
  }
  else if (piVar1 != (int *)0x0) {
    if (this == piVar1) {
      (**(code **)(*piVar1 + 0x14))();
      uVar2 = (**(code **)(*this + 0x14))();
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    uVar2 = FUN_10555f30(this,(int)piVar1);
    (**(code **)(*piVar1 + 0x14))();
    uVar3 = (**(code **)(*this + 0x14))();
    return CONCAT31((int3)((uint)uVar3 >> 8),(char)uVar2);
  }
  if (this != (int *)0x0) {
    in_EAX = (**(code **)(*this + 0x14))();
  }
  return in_EAX & 0xffffff00;
}

