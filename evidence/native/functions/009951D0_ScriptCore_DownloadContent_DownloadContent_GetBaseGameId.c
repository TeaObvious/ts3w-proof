/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181798 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetBaseGameId [assembly=ScriptCore token=0x060000EE;
   part0: System.UInt64&, part1: System.UInt64&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DownloadContent__DownloadContent_GetBaseGameId(longlong *param_1,longlong *param_2)

{
  longlong lVar1;
  undefined4 auStack_10 [4];
  
  FUN_00999500(auStack_10);
  lVar1 = FUN_00500a40(auStack_10,0);
  *param_1 = lVar1;
  lVar1 = FUN_00500a40(auStack_10,1);
  *param_2 = lVar1;
  return;
}

