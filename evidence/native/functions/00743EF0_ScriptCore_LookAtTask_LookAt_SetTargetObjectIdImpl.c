/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011612f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LookAtTask::LookAt_SetTargetObjectIdImpl [assembly=ScriptCore token=0x06000FB4;
   handle: System.UInt32, objId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.LookAtTask::LookAt_SetTargetObjectIdImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *this;
  void *pvVar3;
  undefined4 in_stack_00000008;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (this != (undefined4 *)0x0) {
      this[1] = this[1] + 1;
      pvVar3 = ObjectRegistry_GetGlobal();
      pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_00000008,param_1));
      if (pvVar3 != (void *)0x0) {
        FUN_00580370(this,(int)pvVar3);
      }
      iVar1 = this[1];
      this[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        this[1] = 1;
        (**(code **)*this)(1);
      }
    }
  }
  return;
}

