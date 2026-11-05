/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635d8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectPreloadMaterial [assembly=ScriptCore token=0x060007BF; objId:
   System.UInt64, materialSetName: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectPreloadMaterial
               (undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  void *this;
  int *piVar2;
  wint_t *pwVar3;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    this = (void *)FUN_00937f80(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_00934260(this,DAT_011e9fc4);
      if (iVar1 != 0) {
        piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
        if (param_3 != 0) {
          pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_3);
          FUN_007d0020(pwVar3);
        }
      }
    }
  }
  return;
}

