/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011612c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LookAtTask::LookAt_CreateLookAtTaskImpl [assembly=ScriptCore token=0x06000FAF; handle:
   System.UInt64, priority: System.Int32, jointFilter: System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_LookAtTask__LookAt_CreateLookAtTaskImpl
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  void *pvVar2;
  undefined4 *this;
  int *piVar3;
  undefined4 uVar4;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
  if (pvVar2 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011dd484);
    if (pvVar2 != (void *)0x0) {
      if (*(int *)((int)pvVar2 + 0x28) == 0) {
        this = (undefined4 *)0x0;
      }
      else {
        this = FUN_00580840(*(int *)((int)pvVar2 + 4),param_3,param_4);
        if (this != (undefined4 *)0x0) {
          this[1] = this[1] + 1;
        }
      }
      uVar4 = 0xffffffff;
      if (this != (undefined4 *)0x0) {
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        uVar4 = (**(code **)(*piVar3 + 200))(this,0x46);
        FUN_00580530(this,'\x01');
        iVar1 = this[1];
        this[1] = iVar1 + -1;
        if (iVar1 + -1 == 0) {
          this[1] = 1;
          (**(code **)*this)(1);
        }
      }
      return uVar4;
    }
  }
  return 0;
}

