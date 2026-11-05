/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163290 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_MoveObjectToObjectManager [assembly=ScriptCore token=0x0600074F;
   scriptHandle: System.UInt64, mgrId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_MoveObjectToObjectManager
               (undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  void *pvVar1;
  int *piVar2;
  int *piVar3;
  void *pvStack_4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((pvVar1 != (void *)0x0) &&
     (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)), pvVar1 != (void *)0x0)
     ) {
    LOCK();
    *(int *)((int)pvVar1 + 4) = *(int *)((int)pvVar1 + 4) + 1;
    UNLOCK();
    pvStack_4 = pvVar1;
    if (DAT_011edbc4 == (void *)0x0) {
      FUN_007462e0((int *)&pvStack_4);
      return;
    }
    piVar3 = (int *)0x0;
    if (((param_3 == 0 && param_4 == 0) ||
        (((piVar3 = *(int **)((int)DAT_011edbc4 + 0xb0), param_3 == piVar3[0x12] &&
          (param_4 == piVar3[0x13])) ||
         (piVar3 = WorldObjects_FindByGuid(DAT_011edbc4,param_3,param_4,(uint *)0x0),
         piVar3 != (int *)0x0)))) && (piVar2 = (int *)FUN_0068f130((int)pvVar1), piVar3 != piVar2))
    {
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x3c))(pvVar1,0);
      }
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x30))(pvVar1);
      }
    }
    FUN_007462e0((int *)&pvStack_4);
  }
  return;
}

