/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnailsForGroup.
 * Executable tokens are unchanged; generated types and signatures remain projections.
 * Reachable C can cross stored ownership; consult the original-byte ranges in the paired ASM.
 */



/* Verified PC 1.67 registration table at 0x01162ae8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnailsForGroup [assembly=ScriptCore
   token=0x0600017B; lotId: System.UInt64, cacheId: System.UInt64, sizeMask: System.UInt32, groupId:
   System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst behavior contract (static PC 1.67): registered request frontend for grouped lot
   thumbnails (lot ID, cache ID, size mask, group ID, callback); exact original Managed types are
   preserved above. The native callback test reads entry ESP+1Ch. Captures the manager at 011EEC30
   once in EDI. With null callback and nonnull manager, forwards inputs and a null notifier to
   00D613C0 without inspecting its return. On the null-callback path, a missing manager reaches the
   shared later epilogue without a request or fallback callback. Nonnull callback branches to
   007780E9 with the existing frontend frame and live EDI; that separate continuation supplies
   notifier and host-admission/callback paths. No local size-mask/group validation or eventual-image
   result is supplied. Frontend reserves 24h local bytes and uses plain RET. Qualified original-byte
   frontend evidence: 007780A0..007780E8; actual DB ownership remains [007780A0,007780E8]. No
   boundary repair, complete Managed bridge or standalone continuation ABI is inferred. Request
   acceptance, scheduling, notifier/delegate lifetime and eventual rendered/cache output remain
   dependencies; no original runtime execution claimed. */

void __cdecl
ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnailsForGroup
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,uint param_5,
          undefined4 param_6,int param_7)

{
  void *this;
  int *piVar1;
  void *this_00;
  int *piVar2;
  uint uVar3;
  uint unaff_EBX;
  undefined8 uVar4;
  undefined1 auStack_22 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
  this = DAT_011eec30;
  if (param_7 == 0) {
    if (DAT_011eec30 != (void *)0x0) {
      FUN_00d613c0(DAT_011eec30,param_1,param_2,param_3,param_4,param_5,param_6,(int *)0x0);
      return;
    }
  }
  else {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar4 = (**(code **)(*piVar1 + 0x118))();
    if (this != (void *)0x0) {
      this_00 = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_00777c70(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_7);
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 4))();
        }
      }
      uVar3 = FUN_00d613c0(this,param_1,param_2,param_3,param_4,param_5,param_6,piVar2);
      if ((char)uVar3 != '\0') {
        (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_7,0);
        (**(code **)(*piVar1 + 0x11c))();
        if (piVar2 == (int *)0x0) {
          return;
        }
        (**(code **)(*piVar2 + 8))();
        return;
      }
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 8))();
      }
    }
    appuStack_20[0] = &PTR_FUN_00fba6f4;
    uStack_10 = 0;
    uStack_16 = 1;
    uStack_18 = 0;
    (**(code **)(*piVar1 + 0x130))(param_7,uVar4,appuStack_20,0);
    if ((unaff_EBX & 4) != 0) {
      FUN_004f5760(auStack_22 + -0x12,'\0');
    }
  }
  return;
}

