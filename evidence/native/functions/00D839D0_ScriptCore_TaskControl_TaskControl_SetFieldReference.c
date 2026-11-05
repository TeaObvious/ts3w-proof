/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x0108d670 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.TaskControl::TaskControl_SetFieldReference [assembly=ScriptCore token=0x06000129;
   taskId: System.UInt64, fieldRef: ScriptCore.TaskFieldReference&, source:
   ScriptCore.TaskFieldReference&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.TaskControl::TaskControl_SetFieldReference
          (undefined4 *param_1,undefined4 param_2,uint *param_3,uint *param_4)

{
  undefined4 *puVar1;
  uint *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  longlong lVar6;
  int iStack_c;
  int iStack_8;
  undefined4 *puStack_4;
  
  iVar3 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = iVar3 + -8;
  }
  lVar6 = (**(code **)(*(int *)(iVar3 + 8) + 0x118))();
  puVar2 = param_3;
  uVar5 = param_2;
  puVar1 = param_1;
  if ((((lVar6 != CONCAT44(param_2,param_1)) && ((int)*param_4 < (int)*param_3)) &&
      (uVar4 = LocateTaskFieldSlotAndType
                         ((uint)param_1,param_2,*param_4,param_4[1],&iStack_8,(int *)&param_1),
      (char)uVar4 != '\0')) &&
     ((uVar5 = LocateTaskFieldSlotAndType
                         ((uint)puVar1,uVar5,*puVar2,puVar2[1],&iStack_c,(int *)&puStack_4),
      (char)uVar5 != '\0' && ((*(uint *)(iStack_c + 4) & 0x40000000) != 0)))) {
    if ((*(uint *)(iStack_8 + 4) & 0x40000000) != 0) {
      param_1 = (undefined4 *)*param_1;
    }
    *puStack_4 = param_1;
  }
  return;
}

