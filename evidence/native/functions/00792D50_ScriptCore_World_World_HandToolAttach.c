/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163790 (original PC 1.67 TS3W.exe).
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
  puVar2 = FUN_00adf150();
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_FUN_01065f8c;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_FUN_01065f8c;
  }
  puVar2[2] = param_1;
  *(undefined1 *)(puVar2 + 4) = param_3;
  puVar2[3] = param_2;
  uVar3 = (**(code **)(*piVar1 + 0x18))(0x45ad6e5,puVar2,0);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

