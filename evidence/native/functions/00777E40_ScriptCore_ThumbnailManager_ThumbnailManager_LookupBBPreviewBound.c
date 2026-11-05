/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b78 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_LookupBBPreviewBound [assembly=ScriptCore
   token=0x0600018D; objectId: System.UInt64; return=System.Single[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.ThumbnailManager::ThumbnailManager_LookupBBPreviewBound
          (undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int *piVar2;
  undefined1 auStack_6c [8];
  undefined4 local_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  if (DAT_011eec30 != (void *)0x0) {
    uVar1 = FUN_00d4f0e0(DAT_011eec30,param_1,param_2,&local_60,&local_40);
    if ((char)uVar1 != '\0') {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      if (piVar2 != (int *)0x0) {
        local_28 = local_60;
        local_20 = uStack_58;
        local_24 = uStack_5c;
        local_1c = local_40;
        local_50 = local_40;
        uStack_4c = uStack_3c;
        uStack_48 = uStack_38;
        uStack_44 = uStack_34;
        local_64 = 0;
        local_18 = uStack_3c;
        local_14 = uStack_38;
        (**(code **)(*piVar2 + 0x8c))(&local_64,6);
        uVar1 = 6;
        (**(code **)(*piVar2 + 0xa8))(auStack_6c,auStack_30,0);
        return uVar1;
      }
    }
  }
  return 0;
}

