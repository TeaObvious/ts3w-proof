/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011567d8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_TextSearchAddKeywordImpl [assembly=ScriptCore token=0x06000387;
   handle: System.UInt32, keyword: System.String, key: Sims3.SimIFace.ResourceKey;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_TextSearchAddKeywordImpl(uint param_1)

{
  int *piVar1;
  void *this;
  short *psVar2;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
      FUN_005ad440(this,psVar2,(uint *)&stack0xffffffe8);
    }
  }
  return;
}

