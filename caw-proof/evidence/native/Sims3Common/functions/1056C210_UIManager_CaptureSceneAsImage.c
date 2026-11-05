/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_CaptureSceneAsImage. Export ordinal(s):
   1071. Entry VA: 0x1056c210. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006F5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 UIManager_CaptureSceneAsImage(void)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 unaff_EBX;
  undefined4 unaff_EDI;
  undefined8 uVar6;
  undefined4 in_stack_00000014;
  void *this;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
                    /* 0x56c210  1071  UIManager_CaptureSceneAsImage */
  iVar1 = FUN_107cd180();
  piVar2 = (int *)FUN_1055b120();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    puVar3 = (undefined4 *)FUN_10918eb0(0x2c,"Scripting/UIHost/SceneCaptureUIImage",0);
    if (puVar3 != (undefined4 *)0x0) {
      piVar4 = (int *)FUN_1093cc90(puVar3);
      if (piVar4 != (int *)0x0) {
        (**(code **)*piVar4)();
        (**(code **)*piVar4)();
        uVar5 = (**(code **)(*piVar2 + 200))();
        uVar6 = (**(code **)(*piVar2 + 0x118))();
        this = (void *)0x0;
        (**(code **)(*piVar2 + 0x120))(uVar6,0xffffffff,in_stack_00000014);
        FUN_107ccbb0(this,unaff_EBX,unaff_EDI,(int)uVar6,(int)((ulonglong)uVar6 >> 0x20),uStack_8,
                     uStack_4,(undefined4 *)&stack0xffffffdc,piVar4);
        (**(code **)(*piVar2 + 0x11c))();
        (**(code **)(*piVar4 + 4))();
        return uVar5;
      }
    }
  }
  return 0;
}

