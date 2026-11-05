/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163790 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HandToolAttach [assembly=ScriptCore token=0x060007F6; objId:
   System.UInt64, dropOnMouseUp: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_World__World_HandToolAttach(undefined4 param_1,undefined4 param_2,undefined1 param_3)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)FUN_007693a0();
  puVar2 = FloorMessagePool_AcquireStorage();
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_DestroyPooledFloorMessage_01065f8c;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_DestroyPooledFloorMessage_01065f8c;
  }
  puVar2[2] = param_1;
  *(undefined1 *)(puVar2 + 4) = param_3;
  puVar2[3] = param_2;
  uVar3 = (**(code **)(*piVar1 + 0x18))(0x45ad6e5,puVar2,0);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

