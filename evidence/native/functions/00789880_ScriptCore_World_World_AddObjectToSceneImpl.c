/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163298 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_AddObjectToSceneImpl [assembly=ScriptCore token=0x06000750; scriptHandle:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_AddObjectToSceneImpl(void)

{
  int *piVar1;
  int iVar2;
  void *this;
  undefined4 *object;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  this = ObjectRegistry_GetGlobal();
  object = ObjectRegistry_FindBorrowed(this,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (object != (undefined4 *)0x0) {
    piVar1 = object + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    ObjectEvents_Dispatch(0xb,object,(void *)0x0);
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
  return;
}

