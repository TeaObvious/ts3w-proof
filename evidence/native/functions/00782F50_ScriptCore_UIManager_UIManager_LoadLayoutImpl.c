/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162db0 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_LoadLayoutImpl [assembly=ScriptCore token=0x06000DF1; instance:
   System.UInt64, group: System.UInt32, type: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UIManager::UIManager_LoadLayoutImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 *puVar2;
  void *pvVar3;
  int *piVar4;
  int *piVar5;
  undefined4 uVar6;
  size_t _Size;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  int *local_10 [4];
  
  iVar1 = FUN_004afe80();
  if (iVar1 != 0) {
    local_20 = param_1;
    local_1c = param_2;
    local_18 = param_4;
    local_14 = param_3;
    puVar2 = (undefined4 *)FUN_004e4500(0xc0,"UI/LayoutInstance",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_007e7f20(puVar2);
    }
    puVar2[0x29] = puVar2[0x29] + 1;
    FUN_007e94a0(local_20,local_1c,local_18,local_14);
    FUN_007e8020(puVar2,&local_20);
    FUN_00d4c330(local_10,(int)(puVar2[0x1a] - puVar2[0x19]) >> 2,puVar2 + 0x1c);
    _Size = puVar2[0x1a] - (int)puVar2[0x19];
    pvVar3 = memmove(local_10[0],(void *)puVar2[0x19],_Size);
    for (piVar5 = local_10[0]; piVar5 != (int *)((int)pvVar3 + ((int)_Size >> 2) * 4);
        piVar5 = piVar5 + 1) {
      if (((int *)*piVar5 != (int *)0x0) &&
         (piVar4 = (int *)(**(code **)(*(int *)*piVar5 + 0xc))(0x3f29fc8), piVar4 != (int *)0x0)) {
        iVar1 = (**(code **)(*piVar4 + 0x10))();
        if (iVar1 == 0) {
          piVar4 = (int *)0x0;
        }
        else {
          piVar4 = (int *)(iVar1 + -4);
        }
        (**(code **)(*piVar4 + 0x18))();
      }
    }
    piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar6 = (**(code **)(*piVar5 + 200))(puVar2,0x30);
    if (local_10[0] != (int *)0x0) {
      FUN_004e44e0((int)local_10[0]);
    }
    return uVar6;
  }
  return 0;
}

