/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630f8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_CaptureSceneAsImage [assembly=ScriptCore token=0x06000E5A; style:
   System.UInt32, x: System.UInt32, y: System.UInt32, width: System.UInt32, height: System.UInt32,
   skill: System.UInt32, callbackDelegate: System.Delegate; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.UIManager::UIManager_CaptureSceneAsImage(void)

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
  
  iVar1 = FUN_009e0120();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    puVar3 = (undefined4 *)FUN_004e4500(0x2c,"Scripting/UIHost/SceneCaptureUIImage",0);
    if (puVar3 != (undefined4 *)0x0) {
      piVar4 = (int *)FUN_0050a940(puVar3);
      if (piVar4 != (int *)0x0) {
        (**(code **)*piVar4)();
        (**(code **)*piVar4)();
        uVar5 = (**(code **)(*piVar2 + 200))();
        uVar6 = (**(code **)(*piVar2 + 0x118))();
        this = (void *)0x0;
        (**(code **)(*piVar2 + 0x120))(uVar6,0xffffffff,in_stack_00000014);
        FUN_009dc630(this,unaff_EBX,unaff_EDI,(int)uVar6,(int)((ulonglong)uVar6 >> 0x20),uStack_8,
                     uStack_4,(undefined4 *)&stack0xffffffdc,piVar4);
        (**(code **)(*piVar2 + 0x11c))();
        (**(code **)(*piVar4 + 4))();
        return uVar5;
      }
    }
  }
  return 0;
}

