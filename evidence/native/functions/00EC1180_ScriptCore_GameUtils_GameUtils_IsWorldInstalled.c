/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197338 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_IsWorldInstalled [assembly=ScriptCore token=0x06000279; id:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_IsWorldInstalled(uint param_1)

{
  void *this;
  undefined4 uVar1;
  
  this = (void *)FUN_00aa99c0();
  if (this != (void *)0x0) {
    uVar1 = FUN_00aae430(this,param_1);
    if ((char)uVar1 != '\0') {
      return 1;
    }
  }
  return 0;
}

