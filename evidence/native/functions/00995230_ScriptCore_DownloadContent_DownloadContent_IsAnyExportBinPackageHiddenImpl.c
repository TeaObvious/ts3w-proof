/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011817b8 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_IsAnyExportBinPackageHiddenImpl [assembly=ScriptCore
   token=0x0600010B; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_DownloadContent__DownloadContent_IsAnyExportBinPackageHiddenImpl(void)

{
  bool bVar1;
  
  if (DAT_011ea6a4 != 0) {
    bVar1 = FUN_009a1660(DAT_011ea6a4);
    return bVar1;
  }
  return false;
}

