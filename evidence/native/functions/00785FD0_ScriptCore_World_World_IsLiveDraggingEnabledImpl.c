/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b10 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsLiveDraggingEnabledImpl [assembly=ScriptCore token=0x06000864; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

byte ScriptCore_World__World_IsLiveDraggingEnabledImpl(void)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = FUN_00937570();
  if (iVar2 != 0) {
    uVar3 = FUN_00937f80(iVar2);
    if (uVar3 != 0) {
      iVar2 = FUN_00c8ebb0(DAT_011ee034,(uint *)(uVar3 + 0x18));
      if (iVar2 != 0) {
        bVar1 = FUN_00c97740(iVar2);
        return bVar1;
      }
    }
  }
  return 0;
}

