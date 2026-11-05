/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161c90 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_RemovePrivateFootprint [assembly=ScriptCore
   token=0x06001068; scriptHandle: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_RouteManager__RouteManager_RemovePrivateFootprint(void)

{
  int iVar1;
  void *this;
  undefined4 *puVar2;
  int *this_00;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 *puStack_4;
  
  iVar1 = GetGlobalInterfacePointer_11D5BBC();
  this_00 = (int *)0x0;
  if (iVar1 != 0) {
    this = ObjectRegistry_GetGlobal();
    this_00 = (int *)0x0;
    if (this != (void *)0x0) {
      puVar2 = ObjectRegistry_FindBorrowed(this,CONCAT44(in_stack_00000008,in_stack_00000004));
      if (puVar2 != (undefined4 *)0x0) {
        LOCK();
        puVar2[1] = puVar2[1] + 1;
        UNLOCK();
      }
      puStack_4 = puVar2;
      this_00 = (int *)thunk_FUN_00835d40();
      if (puVar2 != (undefined4 *)0x0) {
        if (this_00 != (int *)0x0) {
          uVar3 = FUN_00829ac0(this_00,puVar2,'\x01');
          uVar4 = FUN_007462e0((int *)&puStack_4);
          return CONCAT31((int3)((uint)uVar4 >> 8),(char)uVar3);
        }
        this_00 = puVar2 + 1;
        LOCK();
        iVar1 = *this_00;
        *this_00 = *this_00 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *this_00 = 1;
          UNLOCK();
          this_00 = (int *)(**(code **)*puVar2)(1);
        }
      }
    }
  }
  return (uint)this_00 & 0xffffff00;
}

