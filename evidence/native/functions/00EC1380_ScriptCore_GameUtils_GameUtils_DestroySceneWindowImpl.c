/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197148 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_DestroySceneWindowImpl [assembly=ScriptCore token=0x06000239; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_DestroySceneWindowImpl(void)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)FUN_0050af90();
  piVar1 = (int *)(**(code **)(*piVar1 + 4))();
  iVar2 = (**(code **)(*piVar1 + 0xf4))(0x34b248b,0);
  if (iVar2 != 0) {
    (**(code **)(*piVar1 + 0xe4))(iVar2);
  }
  return;
}

