/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163160 (original PC 1.67 TS3W.exe).
   ScriptCore.VideoRecorder::VideoRecorder_GetLastSnapshotPath [assembly=ScriptCore
   token=0x06000D02; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.VideoRecorder::VideoRecorder_GetLastSnapshotPath(void)

{
  int *piVar1;
  undefined4 local_34;
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined2 *local_28;
  undefined **local_24;
  undefined **ppuStack_20;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  byte bStack_18;
  
  local_34 = 0;
  piVar1 = (int *)FUN_009dff90();
  if (piVar1 != (int *)0x0) {
    local_30 = &DAT_011c8e54;
    local_2c = &DAT_011c8e54;
    local_24 = (undefined **)0x1011440;
    local_28 = &DAT_011c8e56;
    (**(code **)(*piVar1 + 0x20))(&local_30);
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    local_24 = &PTR_FUN_0100886c;
    uStack_1a = 0x13;
    uStack_1c = 0xb;
    FUN_004f59c0(&local_24,0x13,9,&local_34,0x10,1);
    (**(code **)(*piVar1 + 0x50))(&local_24,&stack0xffffffc8);
    ppuStack_20 = &PTR_FUN_00fba6f4;
    if ((bStack_18 & 4) != 0) {
      FUN_004f5760(&ppuStack_20,'\0');
    }
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined1 *)0x0))
    {
      FUN_004e44e0((int)local_30);
    }
  }
  return local_34;
}

