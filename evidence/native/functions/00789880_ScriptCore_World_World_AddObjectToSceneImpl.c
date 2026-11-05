/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163298 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_AddObjectToSceneImpl [assembly=ScriptCore token=0x06000750; scriptHandle:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_AddObjectToSceneImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
  iVar2 = FUN_00937570();
  puVar3 = (undefined4 *)FUN_00937f80(iVar2);
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    FUN_009356c0(0xb,puVar3,0);
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

