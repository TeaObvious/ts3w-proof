/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161498 (original PC 1.67 TS3W.exe).
   ScriptCore.Objects::Objects_IsVisibleForLOS [assembly=ScriptCore token=0x06000014; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_Objects__Objects_IsVisibleForLOS(void)

{
  undefined1 uVar1;
  int iVar2;
  void *this;
  
  iVar2 = FUN_00937570();
  if (iVar2 != 0) {
    this = (void *)FUN_00937f80(iVar2);
    if (this != (void *)0x0) {
      iVar2 = FUN_00934260(this,DAT_011e9fc8);
      if (iVar2 != 0) {
        uVar1 = FUN_008a62b0(iVar2);
        return uVar1;
      }
    }
  }
  return 0;
}

