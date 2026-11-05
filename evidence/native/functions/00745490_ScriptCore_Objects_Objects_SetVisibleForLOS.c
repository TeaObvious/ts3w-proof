/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011614a0 (original PC 1.67 TS3W.exe).
   ScriptCore.Objects::Objects_SetVisibleForLOS [assembly=ScriptCore token=0x06000015; objId:
   System.UInt64, visible: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_Objects__Objects_SetVisibleForLOS
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *pvVar2;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_00937f80(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011e9fc8);
      if (pvVar2 == (void *)0x0) {
        return param_3 == '\0';
      }
      FUN_0094c4f0(pvVar2,param_3);
      return true;
    }
  }
  return false;
}

