/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void FUN_0077d580(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined1 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined1 param_8,
                 undefined4 param_9,undefined4 param_10)

{
  int *piVar1;
  void *this;
  int *piVar2;
  
  piVar1 = (int *)FUN_007693a0();
  if (piVar1 != (int *)0x0) {
    this = (void *)FUN_004e4500(0x30,"Scripting/ChangedResolutionMessage",0);
    if (this == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)FUN_0077a220(this,param_5,param_6,param_7,param_8,param_1,param_2,param_3,
                                   param_4,param_9,param_10);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    (**(code **)(*piVar1 + 0x1c))(0x7983246,piVar2,0,0);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
  }
  return;
}

