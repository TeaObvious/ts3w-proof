/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_WaitForDetailedLots. Export ordinal(s):
   1620. Entry VA: 0x10582050. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CD9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
World_WaitForDetailedLots
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  int *piVar2;
  int *piVar3;
  uint unaff_ESI;
  undefined8 uVar4;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
                    /* 0x582050  1620  World_WaitForDetailedLots */
  piVar1 = (int *)FUN_1055b120();
  uVar4 = (**(code **)(*piVar1 + 0x118))();
  this = (void *)FUN_10918eb0(0x28,"Scripting/DetailedLotMonitor",0);
  if (this != (void *)0x0) {
    piVar2 = (int *)FUN_1057a300(this,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_2,param_3,
                                 param_4);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
      piVar3 = (int *)FUN_1055b130();
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x1c))(0x55af20c7,piVar2 + 2,0);
      }
      (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_1);
      (**(code **)(*piVar1 + 0x11c))();
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  appuStack_20[0] = &PTR_FUN_10aca5b4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(param_1,uVar4,appuStack_20);
  if ((unaff_ESI & 4) != 0) {
    FUN_10928a90(&stack0xffffffcc,'\0');
  }
  return;
}

