/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181680 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_DeleteLotContentsImpl [assembly=ScriptCore
   token=0x060000A4; id: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_DownloadContent__DownloadContent_DeleteLotContentsImpl
               (int *param_1,undefined4 param_2)

{
  uint in_EAX;
  uint uVar1;
  
  if (DAT_011ec4f8 != (void *)0x0) {
    uVar1 = FUN_00ad4d20(DAT_011ec4f8,param_1,param_2);
    return uVar1;
  }
  return in_EAX & 0xffffff00;
}

