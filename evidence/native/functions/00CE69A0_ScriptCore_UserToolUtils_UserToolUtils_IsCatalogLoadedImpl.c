/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f50 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_IsCatalogLoadedImpl [assembly=ScriptCore
   token=0x06000C11; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UserToolUtils__UserToolUtils_IsCatalogLoadedImpl(void)

{
  if (DAT_011ee034 != 0) {
    return CONCAT31((int3)((uint)DAT_011ee034 >> 8),*(undefined1 *)(DAT_011ee034 + 5));
  }
  return 0;
}

