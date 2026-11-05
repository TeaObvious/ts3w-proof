/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161418 (original PC 1.67 TS3W.exe).
   ScriptCore.Objects::Objects_GetBoundingBox [assembly=ScriptCore token=0x06000004; id:
   System.UInt64; return=Sims3.SimIFace.BoundingBox]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_Objects__Objects_GetBoundingBox(undefined4 *param_1)

{
  int iVar1;
  void *this;
  undefined4 *puVar2;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_00934260(this,DAT_011e9fc4);
    if (iVar1 != 0) {
      puVar2 = (undefined4 *)FUN_00948880(iVar1);
      FUN_0076c1a0(param_1,puVar2);
      return param_1;
    }
  }
  FUN_0076bf70(param_1,0,0,0);
  FUN_0076bf70(param_1 + 3,0,0,0);
  return param_1;
}

