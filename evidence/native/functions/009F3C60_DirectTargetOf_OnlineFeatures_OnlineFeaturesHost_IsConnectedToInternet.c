/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsConnectedToInternet at 0x00745e30, bytes
   e92bde2a00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

uint DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_IsConnectedToInternet(void)

{
  int iVar1;
  DWORD DVar2;
  undefined4 local_4;
  
  local_4 = 0;
  iVar1 = InternetGetConnectedState(&local_4,0);
  if (iVar1 == 0) {
    DVar2 = GetLastError();
    return DVar2 & 0xffffff00;
  }
  return CONCAT31((int3)((uint)iVar1 >> 8),1);
}

