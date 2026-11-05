/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636c8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectGetPlacementMode [assembly=ScriptCore token=0x060007E1; objId:
   System.UInt64; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_ObjectGetPlacementMode(void)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_00937f80(iVar1);
    uVar3 = FUN_00b00b30(pvVar2);
    return uVar3;
  }
  return 0;
}

