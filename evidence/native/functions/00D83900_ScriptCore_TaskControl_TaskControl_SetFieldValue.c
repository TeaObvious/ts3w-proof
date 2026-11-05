/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0108d668 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.TaskControl::TaskControl_SetFieldValue [assembly=ScriptCore token=0x06000128; taskId:
   System.UInt64, fieldRef: ScriptCore.TaskFieldReference&, value: System.Object;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_TaskControl__TaskControl_SetFieldValue
               (undefined4 *param_1,undefined4 param_2,uint *param_3,undefined4 *param_4)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint *puVar4;
  uint *puVar5;
  undefined3 extraout_var;
  undefined4 *puVar6;
  size_t _Size;
  longlong lVar7;
  int *piStack_4;
  
  iVar2 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar2 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = iVar2 + -8;
  }
  lVar7 = (**(code **)(*(int *)(iVar2 + 8) + 0x118))();
  if ((lVar7 != CONCAT44(param_2,param_1)) &&
     (uVar3 = LocateTaskFieldSlotAndType
                        ((uint)param_1,param_2,*param_3,param_3[1],&piStack_4,(int *)&param_1),
     (char)uVar3 != '\0')) {
    puVar4 = (uint *)RuntimeTypeDescriptor_ResolveClass(piStack_4);
    puVar6 = param_4;
    if (param_4 != (undefined4 *)0x0) {
      puVar5 = (uint *)FUN_00ea1930(param_4);
      uVar1 = FUN_00e6fff0(puVar4,puVar5);
      if (CONCAT31(extraout_var,uVar1) == 0) {
        return;
      }
    }
    if ((piStack_4[1] & 0x40000000U) == 0) {
      if ((puVar4[5] & 8) == 0) {
        *param_1 = puVar6;
      }
      else if (puVar6 != (undefined4 *)0x0) {
        puVar6 = FUN_00ea1940(puVar6);
        _Size = FUN_00e6f890((int)puVar4,(uint *)0x0);
        memcpy(param_1,puVar6,_Size);
        return;
      }
    }
  }
  return;
}

