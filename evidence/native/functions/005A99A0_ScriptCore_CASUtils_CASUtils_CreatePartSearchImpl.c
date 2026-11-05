/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156200 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_CreatePartSearchImpl [assembly=ScriptCore token=0x060002DF; ;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_CreatePartSearchImpl(void)

{
  int *piVar1;
  void *pvVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar2 = (void *)FUN_004e4500(0x18,"CAS/CASHost/sCreatePartSearch",0);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = FUN_005a98e0(pvVar2,0x34aeecb);
    (**(code **)(*piVar1 + 200))(pvVar2,0x35);
    return;
  }
  (**(code **)(*piVar1 + 200))(0,0x35);
  return;
}

