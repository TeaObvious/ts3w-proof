/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163598 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsOnRoofImpl [assembly=ScriptCore token=0x060007B7; objId: System.UInt64;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_IsOnRoofImpl(void)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_00937f80(iVar1);
    if (pvVar2 != (void *)0x0) {
      uVar3 = FUN_00b006c0(pvVar2);
      return uVar3;
    }
  }
  return 0;
}

