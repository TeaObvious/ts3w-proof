/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnails.
 * Executable tokens are unchanged; generated types and signatures remain projections.
 * Stored ownership is a singleton; reachable C is not complete owned-function coverage.
 */



/* Verified PC 1.67 registration table at 0x01162ae0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnails [assembly=ScriptCore
   token=0x0600017A; lotId: System.UInt64, cacheId: System.UInt64, sizeMask: System.UInt32,
   callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst behavior contract (static PC 1.67): registered request frontend for lot thumbnails (lot
   ID, cache ID, size mask, callback); exact original Managed types are preserved above. The native
   callback test reads entry ESP+18h. Captures the manager at 011EEC30 once in EDI. With null
   callback and nonnull manager, forwards inputs and a null notifier to 00D61B00 without inspecting
   its return. On the null-callback path, a missing manager reaches the shared later epilogue
   without a request or fallback callback. Nonnull callback branches to 00777F74 with the existing
   frontend frame and live EDI; that separate continuation supplies notifier and
   host-admission/callback paths. No local size-mask/group validation or eventual-image result is
   supplied. Frontend reserves 24h local bytes and uses plain RET. Qualified original-byte frontend
   evidence: 00777F30..00777F73; actual DB ownership remains singleton [00777F30,00777F30] with zero
   Listing instructions. No boundary repair, complete Managed bridge or standalone continuation ABI
   is inferred. Request acceptance, scheduling, notifier/delegate lifetime and eventual
   rendered/cache output remain dependencies; no original runtime execution claimed. */

void ScriptCore_ThumbnailManager__ThumbnailManager_GenerateLotThumbnails
               (int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,
               int param_6)

{
  void *this;
  byte bVar1;
  int *piVar2;
  void *this_00;
  int *piVar3;
  uint unaff_EBX;
  undefined8 uVar4;
  undefined1 auStack_22 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
  this = DAT_011eec30;
  if (param_6 == 0) {
    if (DAT_011eec30 != (void *)0x0) {
      FUN_00d61b00(DAT_011eec30,param_1,param_2,param_3,param_4,param_5,(int *)0x0);
      return;
    }
  }
  else {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar4 = (**(code **)(*piVar2 + 0x118))();
    if (this != (void *)0x0) {
      this_00 = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
      if (this_00 == (void *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = FUN_00777c70(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_6);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 4))();
        }
      }
      bVar1 = FUN_00d61b00(this,param_1,param_2,param_3,param_4,param_5,piVar3);
      if (bVar1 != 0) {
        (**(code **)(*piVar2 + 0x120))(uVar4,0xffffffff,param_6,0);
        (**(code **)(*piVar2 + 0x11c))();
        if (piVar3 == (int *)0x0) {
          return;
        }
        (**(code **)(*piVar3 + 8))();
        return;
      }
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 8))();
      }
    }
    appuStack_20[0] = &PTR_FUN_00fba6f4;
    uStack_10 = 0;
    uStack_16 = 1;
    uStack_18 = 0;
    (**(code **)(*piVar2 + 0x130))(param_6,uVar4,appuStack_20,0);
    if ((unaff_EBX & 4) != 0) {
      FUN_004f5760(auStack_22 + -0x12,'\0');
    }
  }
  return;
}

