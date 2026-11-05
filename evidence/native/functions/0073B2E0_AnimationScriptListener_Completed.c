/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 original instruction review. Analyst-assigned name. Completed callback first unregisters
   this listener from payload controller+0xc. Resolves owner ObjectGuid from animation interface
   vtable+0x24. Calls global scripting interface vtable+0x134 with delegate at adapter+8, one
   ObjectGuid variant argument and trailing1. ABI is RET8; decompiler stack-local variants are
   unreliable. */

void __thiscall
AnimationScriptListener_Completed(void *this,int *eventPayload,int registrationToken)

{
  int iVar1;
  int *piVar2;
  uint local_48;
  undefined **local_44;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **appuStack_30 [2];
  byte bStack_28;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  local_48 = 0;
  local_44 = (undefined **)0x0;
  if (*eventPayload != 0) {
    AnimationController_UnregisterListener
              ((void *)(*eventPayload + 0xc),(int *)(-(uint)(this != &DAT_00000004) & (uint)this));
    if (*(int **)(*eventPayload + 0x1c) != (int *)0x0) {
      iVar1 = (**(code **)(**(int **)(*eventPayload + 0x1c) + 0x24))();
      if (iVar1 != 0) {
        local_48 = *(uint *)(iVar1 + 8);
        local_44 = *(undefined ***)(iVar1 + 0xc);
      }
    }
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    Variant_AssignUInt64(local_40,(ulonglong *)&local_48);
    appuStack_20[0] = &PTR_FUN_00fba6f4;
    uStack_18 = 0;
    uStack_16 = 0;
    FUN_004f64b0(appuStack_20,(int)local_40);
    local_40[0] = &PTR_FUN_00fba6f4;
    if ((local_38 & 4) != 0) {
      FUN_004f5760(local_40,'\0');
    }
    (**(code **)(*piVar2 + 0x134))(local_40,*(undefined4 *)((int)this + 4),appuStack_20,1);
    if ((local_48 & 4) != 0) {
      FUN_004f5760(local_40 + -4,'\0');
    }
    appuStack_30[0] = &PTR_FUN_00fba6f4;
    if ((bStack_28 & 4) != 0) {
      FUN_004f5760(appuStack_30,'\0');
    }
  }
  return;
}

