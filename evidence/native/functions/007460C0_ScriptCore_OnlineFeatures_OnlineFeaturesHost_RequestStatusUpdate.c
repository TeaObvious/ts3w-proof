/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161600 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_RequestStatusUpdate [assembly=ScriptCore
   token=0x0600063F; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_OnlineFeatures__OnlineFeaturesHost_RequestStatusUpdate(void)

{
  if (DAT_011d4ffc == '\0') {
    DAT_011d4ffc = '\x01';
    if ((DAT_011d5068 != 0) && ((void *)(DAT_011d5068 + -8) != (void *)0x0)) {
      FUN_00882880((void *)(DAT_011d5068 + -8),0);
    }
  }
  return;
}

