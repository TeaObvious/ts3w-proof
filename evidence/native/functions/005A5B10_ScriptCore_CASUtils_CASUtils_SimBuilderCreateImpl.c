/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156268 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderCreateImpl [assembly=ScriptCore token=0x060002F4; ;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SimBuilderCreateImpl(void)

{
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar2 = (undefined4 *)FUN_004e4500(0x280,"CAS/CASHost/SimBuilder",0);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2 = FUN_005e4880(puVar2);
    (**(code **)(*piVar1 + 200))(puVar2,0x35);
    return;
  }
  (**(code **)(*piVar1 + 200))(0,0x35);
  return;
}

