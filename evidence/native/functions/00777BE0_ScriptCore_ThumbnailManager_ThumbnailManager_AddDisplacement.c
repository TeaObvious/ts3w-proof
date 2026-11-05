/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a70 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_AddDisplacement [assembly=ScriptCore
   token=0x0600016C; x: System.Single, y: System.Single, z: System.Single; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.ThumbnailManager::ThumbnailManager_AddDisplacement
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if (DAT_011eec30 != (void *)0x0) {
    local_20 = param_1;
    uStack_1c = param_2;
    uStack_18 = param_3;
    uStack_14 = param_1;
    FUN_00d52480(DAT_011eec30,&local_20);
  }
  return;
}

