/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163660 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectSetElevationOffset [assembly=ScriptCore token=0x060007D0; objId:
   System.UInt64, elevation: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetElevationOffset
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  int iVar2;
  undefined4 uVar3;
  
  iVar1 = FUN_00937570();
  if (((iVar1 != 0) && (this = (void *)FUN_00937f80(iVar1), this != (void *)0x0)) &&
     (iVar1 = FUN_00934260(this,DAT_011edf08), iVar1 != 0)) {
    iVar2 = FUN_00affdb0((int)this);
    uVar3 = FUN_00b032e0((void *)0x0,iVar2);
    if ((char)uVar3 != '\0') {
      *(undefined4 *)(iVar1 + 0x24) = param_3;
    }
  }
  return;
}

