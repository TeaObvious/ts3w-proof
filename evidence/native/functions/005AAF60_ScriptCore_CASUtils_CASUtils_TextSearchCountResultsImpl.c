/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011567f8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_TextSearchCountResultsImpl [assembly=ScriptCore token=0x0600038B;
   handle: System.UInt32, searchHandle: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl ScriptCore.CASUtils::CASUtils_TextSearchCountResultsImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      iVar2 = FUN_005aace0(iVar2);
      return iVar2;
    }
  }
  return 0;
}

