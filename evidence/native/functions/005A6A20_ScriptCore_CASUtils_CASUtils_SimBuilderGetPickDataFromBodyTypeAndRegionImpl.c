/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156450 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl [assembly=ScriptCore
   token=0x06000323; handle: System.UInt32, bodyType: System.Int32, region: System.Int32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl
          (uint param_1,int param_2)

{
  int *piVar1;
  void *this;
  int iVar2;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      iVar2 = FUN_005e0a90(this,param_1,param_2);
      return iVar2;
    }
  }
  return 0;
}

