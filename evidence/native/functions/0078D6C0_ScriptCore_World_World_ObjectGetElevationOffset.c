/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163668 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectGetElevationOffset [assembly=ScriptCore token=0x060007D1; objId:
   System.UInt64; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_World__World_ObjectGetElevationOffset(void)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    this = (void *)FUN_00937f80(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_00934260(this,DAT_011edf08);
      if (iVar1 != 0) {
        return (float10)*(float *)(iVar1 + 0x24);
      }
    }
  }
  return (float10)0;
}

