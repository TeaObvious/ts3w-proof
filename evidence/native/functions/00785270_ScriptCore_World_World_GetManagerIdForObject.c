/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632a0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetManagerIdForObject [assembly=ScriptCore token=0x06000751;
   scriptHandle: System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_GetManagerIdForObject(void)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    uVar2 = FUN_00937f80(iVar1);
    if (uVar2 != 0) {
      iVar1 = FUN_0068f130(uVar2);
      if (iVar1 != 0) {
        return *(undefined8 *)(iVar1 + 0x48);
      }
      return 0;
    }
  }
  return 0;
}

