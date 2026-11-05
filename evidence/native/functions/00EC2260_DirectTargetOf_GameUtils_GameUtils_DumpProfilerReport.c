/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_DumpProfilerReport at
   0x00ec26a0, bytes e9bbfbffff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl DirectTargetOf_GameUtils_GameUtils_DumpProfilerReport(undefined4 param_1,uint param_2)

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
  
  FUN_0044c4f0();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    uStack_50 = 0xec2293;
    this = (void *)FUN_004e4500(0x20,"Services/GameHost",0);
    if (this == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      uVar6 = param_2;
      uVar4 = (**(code **)(*piVar2 + 0x118))();
      piVar3 = (int *)FUN_00ec1fc0(this,param_1,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),uVar6);
    }
    (**(code **)(*piVar3 + 4))();
    iVar1 = *piVar2;
    (**(code **)(iVar1 + 0x118))();
    (**(code **)(iVar1 + 0x130))();
    iVar1 = *piVar2;
    piVar5 = (int *)0x0;
    uStack_50 = param_2;
    uStack_54 = 0xffffffff;
    ppuStack_58 = (undefined **)0xec2318;
    uVar4 = (**(code **)(iVar1 + 0x118))();
    ppuStack_58 = (undefined **)((ulonglong)uVar4 >> 0x20);
    (**(code **)(iVar1 + 0x120))((int)uVar4);
    (**(code **)(*piVar5 + 0x1c))(0x70b253f,piVar3,0,piVar3 + 1);
    (**(code **)(*piVar3 + 8))();
    (**(code **)(*piVar2 + 0x11c))();
    ppuStack_58 = &PTR_FUN_00fba6f4;
    if ((uStack_50 & 4) != 0) {
      FUN_004f5760(&ppuStack_58,'\0');
    }
  }
  return;
}

