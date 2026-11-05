/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162df8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_LoadUIHitMaskImpl [assembly=ScriptCore token=0x06000DFA;
   instance: System.UInt64, group: System.UInt32, type: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UIManager::UIManager_LoadUIHitMaskImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  undefined4 uStack_2c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  uStack_2c = 0x779729;
  piVar2 = (int *)FUN_004afe80();
  if (piVar2 != (int *)0x0) {
    local_14 = param_3;
    uStack_2c = 0x19aef76;
    local_18 = param_4;
    iVar3 = (**(code **)(*piVar2 + 0x2c))(param_4);
    if (iVar3 != 0) {
      puVar5 = &uStack_2c;
      uStack_c = param_2;
      uStack_10 = 0x19aef76;
      uStack_2c = 0;
      cVar1 = (**(code **)(*piVar2 + 0xc))(&stack0xffffffd8,puVar5,0,0,iVar3,&local_18);
      if ((cVar1 != '\0') && (puVar5 != (undefined4 *)0x0)) {
        piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
        uVar4 = (**(code **)(*piVar2 + 200))(puVar5,0x30);
        return uVar4;
      }
    }
  }
  return 0;
}

