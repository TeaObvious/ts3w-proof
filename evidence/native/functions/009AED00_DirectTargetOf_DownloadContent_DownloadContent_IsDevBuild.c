/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.DownloadContent::DownloadContent_IsDevBuild at 0x00995730, bytes e9cb950100. This is a
   static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined1 DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild(void)

{
  LPCWSTR pWVar1;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  if (DAT_011ea6c1 != '\0') {
    return DAT_011ea6c0;
  }
  pWVar1 = (LPCWSTR)FUN_0058ac60(L"Version",L"GameVersion",L"0.0.0.0");
  FUN_009aecb0(&local_10,pWVar1);
  DAT_011ea6c0 = 1;
  DAT_011ea6c1 = 1;
  if ((((local_10 != 0) || (local_c != 0)) || (local_8 != 0)) || (local_4 != 0)) {
    DAT_011ea6c0 = 0;
  }
  return DAT_011ea6c0;
}

