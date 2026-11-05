/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011817d8 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_IsDevBuild [assembly=ScriptCore token=0x060000B5; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_DownloadContent__DownloadContent_IsDevBuild(void)

{
  LPCWSTR pWVar1;
  int iStack_10;
  int iStack_c;
  int iStack_8;
  int iStack_4;
  
  if (DAT_011ea6c1 != '\0') {
    return DAT_011ea6c0;
  }
  pWVar1 = (LPCWSTR)FUN_0058ac60(L"Version",L"GameVersion",L"0.0.0.0");
  FUN_009aecb0(&iStack_10,pWVar1);
  DAT_011ea6c0 = 1;
  DAT_011ea6c1 = 1;
  if ((((iStack_10 != 0) || (iStack_c != 0)) || (iStack_8 != 0)) || (iStack_4 != 0)) {
    DAT_011ea6c0 = 0;
  }
  return DAT_011ea6c0;
}

