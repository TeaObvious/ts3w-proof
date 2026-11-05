/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: DBPF vtable10B87808 slot+48 points here. Internal
   unregister validates manager identity, clears owner pointer+390 and returnsAL1; mismatched
   non-null manager returns0. Internal register installs the owner pointer and returnsAL1. External
   variants delegate to manager+34. This closes the success result preserved by108E82E0 removal.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined1 __thiscall
CAW_DbManagerRegistrationChanged(void *this,char param_1,int *param_2,undefined4 param_3)

{
  int *piVar1;
  undefined1 uVar2;
  
  uVar2 = 0;
  if (param_1 == '\0') {
    if ((param_2 != (int *)0x0) && (param_2 != *(int **)((int)this + 0x390))) {
      return 0;
    }
    if ((char)param_3 != '\0') {
      *(undefined4 *)((int)this + 0x390) = 0;
      return 1;
    }
    uVar2 = (**(code **)(**(int **)((int)this + 0x390) + 0x34))(0,this,0);
  }
  else {
    piVar1 = *(int **)((int)this + 0x390);
    if ((piVar1 != (int *)0x0) && (param_2 != piVar1)) {
      (**(code **)(*(int *)this + 0x48))(0,piVar1,param_3);
    }
    if (param_2 != (int *)0x0) {
      if ((char)param_3 != '\0') {
        *(int **)((int)this + 0x390) = param_2;
        return 1;
      }
      uVar2 = (**(code **)(*param_2 + 0x34))(1,this,0);
      return uVar2;
    }
  }
  return uVar2;
}

