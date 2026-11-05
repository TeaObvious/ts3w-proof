/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011816c0 (TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ExportLotContentsToTravelBinImpl [assembly=ScriptCore
   token=0x060000A6; id: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: cdecl full 64-bit  householdcontentid. Requiresglobal managed host; resets
   prior memory TravelBin, acquires new bin, adapts as stream, calls00ad4e80 with full ID, disposes
   adapter and releases reference. Void entry doesnot expose export status; separate from permanent
   TravelDB records. */

void __cdecl
ScriptCore.DownloadContent::DownloadContent_ExportLotContentsToTravelBinImpl
          (uint param_1,undefined4 param_2)

{
  void *this;
  int iVar1;
  void *local_1c;
  undefined4 local_18 [6];
  
  iVar1 = GetGlobalInterfacePointer_11D5BBC();
  this = DAT_011ea6a4;
  if (iVar1 != 0) {
    DownloadContent_ResetTravelBinDatabase(DAT_011ea6a4);
    local_1c = (void *)0x0;
    DownloadContent_AcquireTravelBinDatabase(this,&local_1c);
    if (local_1c != (void *)0x0) {
      FUN_007d7920(local_18,local_1c,1);
      LotContent_ExportHouseholdToTravelDatabase(param_1,param_2,local_18);
      FUN_007d7990((int)local_18);
      if (local_1c != (void *)0x0) {
        (**(code **)(*(int *)((int)local_1c + 4) + 4))();
      }
    }
  }
  return;
}

