/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl [assembly=ScriptCore
   token=0x0600033C; winHandle: System.UInt32, scriptHandle: System.UInt64, callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  void *this;
  undefined4 *object;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    this = ObjectRegistry_GetGlobal();
    object = ObjectRegistry_FindBorrowed(this,CONCAT44(in_stack_0000000c,in_stack_00000008));
    if (object != (undefined4 *)0x0) {
      piVar1 = object + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      ObjectEvents_Dispatch(0xc,object,(void *)0x0);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*object)(1);
      }
    }
  }
  return;
}

