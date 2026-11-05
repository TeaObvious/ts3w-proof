/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_InitSceneImpl. Export ordinal(s): 111.
   Entry VA: 0x103a4e00. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000438. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_InitSceneImpl(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *this;
  int *piVar3;
  uint unaff_EBX;
  int *piVar4;
  undefined8 uVar5;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
  piVar1 = (int *)FUN_1055b120();
  uVar5 = (**(code **)(*piVar1 + 0x118))();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar4 = (int *)FUN_1055b120();
    piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(param_1);
    if (piVar4 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0x39a436f);
    }
    if (piVar4 != (int *)0x0) {
      (**(code **)*piVar4)();
      piVar2 = (int *)FUN_108835e0();
      this = FUN_1055c9d0();
      if ((this != (undefined4 *)0x0) &&
         (piVar3 = FUN_103a0c90(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),piVar4),
         piVar3 != (int *)0x0)) {
        (**(code **)(*piVar3 + 4))();
        (**(code **)(*piVar1 + 0x120))(uVar5,0xffffffff,param_2,0);
        (**(code **)(*piVar2 + 0x1c))(0x30290f0,piVar3,0,0);
        (**(code **)(*piVar1 + 0x11c))();
        (**(code **)(*piVar3 + 8))();
        (**(code **)(*piVar4 + 4))();
        return;
      }
    }
  }
  else {
    piVar4 = (int *)0x0;
  }
  appuStack_20[0] = &PTR_FUN_10aca5b4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(param_2,uVar5,appuStack_20,0);
  if ((unaff_EBX & 4) != 0) {
    FUN_10928a90(&stack0xffffffcc,'\0');
  }
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 4))();
  }
  return;
}

