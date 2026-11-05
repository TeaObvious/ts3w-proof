/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161468 (original PC 1.67 TS3W.exe).
   ScriptCore.Objects::Objects_GetLevel [assembly=ScriptCore token=0x0600000E; id: System.UInt64;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Objects__Objects_GetLevel(void)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_00934260(this,DAT_011edf08);
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 0x18);
    }
  }
  return 0x7fffffff;
}

