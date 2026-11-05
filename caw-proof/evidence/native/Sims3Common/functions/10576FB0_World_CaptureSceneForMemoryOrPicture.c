/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_CaptureSceneForMemoryOrPicture. Export
   ordinal(s): 1269. Entry VA: 0x10576fb0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C47. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_CaptureSceneForMemoryOrPicture(undefined4 param_1,undefined1 param_2)

{
  void *this;
  int *piVar1;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined8 uVar2;
  undefined4 unaff_retaddr;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
                    /* 0x576fb0  1269  World_CaptureSceneForMemoryOrPicture */
  this = (void *)FUN_107cd180();
  piVar1 = (int *)FUN_1055b120();
  if ((this != (void *)0x0) && (piVar1 != (int *)0x0)) {
    uStack_18 = 0x10576fd8;
    uVar2 = (**(code **)(*piVar1 + 0x118))();
    uStack_18 = 0;
    (**(code **)(*piVar1 + 0x120))(uVar2,0xffffffff);
    FUN_107ccb00(this,unaff_EDI,unaff_ESI,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),unaff_retaddr,
                 param_1,param_2,&uStack_1c);
    (**(code **)(*piVar1 + 0x11c))();
  }
  return;
}

