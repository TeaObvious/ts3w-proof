/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_IsConnectedToInternet. Export
   ordinal(s): 510. Entry VA: 0x10537580. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000591. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint OnlineFeaturesHost_IsConnectedToInternet(void)

{
  int iVar1;
  DWORD DVar2;
  undefined4 uStack_4;
  
                    /* 0x537580  510  OnlineFeaturesHost_IsConnectedToInternet */
  uStack_4 = 0;
  iVar1 = InternetGetConnectedState(&uStack_4,0);
  if (iVar1 == 0) {
    DVar2 = GetLastError();
    return DVar2 & 0xffffff00;
  }
  return CONCAT31((int3)((uint)iVar1 >> 8),1);
}

