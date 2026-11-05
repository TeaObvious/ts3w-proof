/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181778 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  uint extraout_EAX;
  undefined4 extraout_EAX_00;
  uint local_18 [6];
  
  this = DAT_011ea6a4;
  if (DAT_011ec4f8 != 0) {
    FUN_007d7900(local_18);
    uVar1 = FUN_009a16e0(this,local_18);
    if ((char)uVar1 != '\0') {
      FUN_00ad4920(param_1,param_2,local_18);
      StreamReader_ReleaseAuxiliary(local_18);
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
    StreamReader_ReleaseAuxiliary(local_18);
    in_EAX = extraout_EAX;
  }
  return in_EAX & 0xffffff00;
}

