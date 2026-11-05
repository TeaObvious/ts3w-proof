/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615a0 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsConnectedToInternet [assembly=ScriptCore
   token=0x06000633; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_OnlineFeatures__OnlineFeaturesHost_IsConnectedToInternet(void)

{
  int iVar1;
  DWORD DVar2;
  undefined4 uStack_4;
  
  uStack_4 = 0;
  iVar1 = InternetGetConnectedState(&uStack_4,0);
  if (iVar1 == 0) {
    DVar2 = GetLastError();
    return DVar2 & 0xffffff00;
  }
  return CONCAT31((int3)((uint)iVar1 >> 8),1);
}

