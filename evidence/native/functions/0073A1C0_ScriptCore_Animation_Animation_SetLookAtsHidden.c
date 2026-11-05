/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb10 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_SetLookAtsHidden [assembly=ScriptCore token=0x06000DB5; id:
   System.UInt64, bHidden: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Animation__Animation_SetLookAtsHidden
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_00934260(this,DAT_011dd484);
    if (iVar1 != 0) {
      if (param_3 != '\0') {
        *(uint *)(iVar1 + 0x2c) = *(uint *)(iVar1 + 0x2c) | 0x2000;
        return;
      }
      *(uint *)(iVar1 + 0x2c) = *(uint *)(iVar1 + 0x2c) & 0xffffdfff;
    }
  }
  return;
}

