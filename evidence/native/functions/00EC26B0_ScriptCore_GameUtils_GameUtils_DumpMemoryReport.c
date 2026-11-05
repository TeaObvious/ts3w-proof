/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197250 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_DumpMemoryReport [assembly=ScriptCore token=0x0600025C; flags:
   System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_DumpMemoryReport(undefined4 param_1,uint param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  undefined8 uVar4;
  undefined **ppuStack_58;
  undefined4 uStack_54;
  uint uStack_50;
  int *piVar5;
  uint uVar6;
  
  MessageDispatch_GetCurrent();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    uStack_50 = 0xec23b3;
    this = (void *)FUN_004e4500(0x20,"Services/GameHost",0);
    if (this == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      uVar6 = param_2;
      uVar4 = (**(code **)(*piVar2 + 0x118))();
      piVar3 = (int *)FUN_00ec20f0(this,param_1,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),uVar6);
    }
    (**(code **)(*piVar3 + 4))();
    iVar1 = *piVar2;
    (**(code **)(iVar1 + 0x118))();
    (**(code **)(iVar1 + 0x130))();
    iVar1 = *piVar2;
    piVar5 = (int *)0x0;
    uStack_50 = param_2;
    uStack_54 = 0xffffffff;
    ppuStack_58 = (undefined **)0xec2438;
    uVar4 = (**(code **)(iVar1 + 0x118))();
    ppuStack_58 = (undefined **)((ulonglong)uVar4 >> 0x20);
    (**(code **)(iVar1 + 0x120))((int)uVar4);
    (**(code **)(*piVar5 + 0x1c))(0x66f4838,piVar3,0,piVar3 + 1);
    (**(code **)(*piVar3 + 8))();
    (**(code **)(*piVar2 + 0x11c))();
    ppuStack_58 = &PTR_FUN_00fba6f4;
    if ((uStack_50 & 4) != 0) {
      FUN_004f5760(&ppuStack_58,'\0');
    }
  }
  return;
}

