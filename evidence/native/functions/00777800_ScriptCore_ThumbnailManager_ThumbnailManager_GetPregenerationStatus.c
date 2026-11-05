/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a58 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_GetPregenerationStatus [assembly=ScriptCore
   token=0x06000169; ; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

longlong ScriptCore_ThumbnailManager__ThumbnailManager_GetPregenerationStatus(void)

{
  longlong lVar1;
  uint uStack_10;
  uint uStack_c;
  uint uStack_8;
  char cStack_3;
  
  if (DAT_011eec30 == (void *)0x0) {
    return 0;
  }
  FUN_00d4a8e0(DAT_011eec30,&uStack_10);
  lVar1 = (ulonglong)uStack_8 * 0x100000 + (ulonglong)uStack_10;
  lVar1 = __allmul((uint)lVar1,(int)((ulonglong)lVar1 >> 0x20),0x100000,0);
  lVar1 = lVar1 + (ulonglong)uStack_c;
  if (cStack_3 != '\0') {
    lVar1 = CONCAT44((int)((ulonglong)lVar1 >> 0x20) + -0x80000000,(int)lVar1);
  }
  return lVar1;
}

