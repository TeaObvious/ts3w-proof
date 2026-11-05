/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181790 (TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ImportHouseholdContentsFromTravelBinImpl
   [assembly=ScriptCore token=0x060000A9; ; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: cdecl no arguments, uint64 return in EDX:EAX. Missing host or
   memoryTravelBin yieldszero. Acquiresbin, adapts as stream, calls00ad6150, disposes adapter and
   releases reference; returns remapped imported household content ID. */

undefined8
ScriptCore.DownloadContent::DownloadContent_ImportHouseholdContentsFromTravelBinImpl(void)

{
  int iVar1;
  undefined8 uVar2;
  void *local_1c;
  uint local_18 [6];
  
  iVar1 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar1 == 0) {
    return 0;
  }
  local_1c = (void *)0x0;
  DownloadContent_AcquireTravelBinDatabase(DAT_011ea6a4,&local_1c);
  if (local_1c == (void *)0x0) {
    return 0;
  }
  FUN_007d7920(local_18,local_1c,1);
  uVar2 = LotContent_ImportTravelHouseholdAndRemapId(local_18);
  FUN_007d7990((int)local_18);
  if (local_1c != (void *)0x0) {
    (**(code **)(*(int *)((int)local_1c + 4) + 4))();
  }
  return uVar2;
}

