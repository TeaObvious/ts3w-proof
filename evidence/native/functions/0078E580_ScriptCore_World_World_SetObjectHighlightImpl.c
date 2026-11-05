/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163bd8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_SetObjectHighlightImpl [assembly=ScriptCore token=0x0600087D; objId:
   System.UInt64, bTurnOn: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetObjectHighlightImpl
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int *piVar1;
  int iVar2;
  void *this;
  undefined4 *puVar3;
  
  this = ObjectRegistry_GetGlobal();
  if ((this != (void *)0x0) &&
     (puVar3 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1)),
     puVar3 != (undefined4 *)0x0)) {
    piVar1 = puVar3 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    FUN_00b00160(puVar3,param_3);
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar3)(1);
    }
  }
  return;
}

