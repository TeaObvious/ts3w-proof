/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161580 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetAvailableEntitlements [assembly=ScriptCore
   token=0x0600062F; source: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_OnlineFeatures__OnlineFeaturesHost_GetAvailableEntitlements(void)

{
  undefined4 uVar1;
  
  EnterCriticalSection((LPCRITICAL_SECTION)&DAT_011d5008);
  if ((DAT_011d5000 != 0) && (*(int *)(DAT_011d5000 + 0x30) == 2)) {
    uVar1 = *(undefined4 *)(DAT_011d5000 + 0x2c);
    LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011d5008);
    return uVar1;
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011d5008);
  return 0;
}

