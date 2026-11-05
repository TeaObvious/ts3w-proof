/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181778 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_DeleteHouseholdContentsImpl [assembly=ScriptCore
   token=0x060000A0; id: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.DownloadContent::DownloadContent_DeleteHouseholdContentsImpl
          (ushort *param_1,ushort *param_2)

{
  void *this;
  uint in_EAX;
  undefined4 uVar1;
  uint local_18 [6];
  
  this = DAT_011ea6a4;
  if (DAT_011ec4f8 != 0) {
    FUN_007d7900(local_18);
    uVar1 = FUN_009a16e0(this,local_18);
    if ((char)uVar1 != '\0') {
      FUN_00ad4920(param_1,param_2,local_18);
      uVar1 = FUN_007d7990((int)local_18);
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
    in_EAX = FUN_007d7990((int)local_18);
  }
  return in_EAX & 0xffffff00;
}

