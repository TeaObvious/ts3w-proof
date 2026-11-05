/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161210 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_GetLoadSaveFileInfoID_Impl [assembly=ScriptCore
   token=0x060001D8; h: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Looks up info, obtains wide ID via
   00AAAB00, builds/publishes string variant through host slot +50h and performs temporary cleanup.
   Pristine managed return uses StringFromVariantMarshaler; this is not an unowned raw BSTR return.
    */

undefined1 * __cdecl
ScriptCore.LoadSaveManager::LoadSaveManager_GetLoadSaveFileInfoID_Impl(int param_1)

{
  int *piVar1;
  void *this;
  undefined1 *puVar2;
  undefined1 *puStack_34;
  undefined1 *puStack_30;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    if (this != (void *)0x0) {
      puStack_34 = &DAT_011c8e54;
      puStack_30 = &DAT_011c8e54;
      pcStack_28 = "Scripting/LoadSaveManagerHost";
      ppuStack_2c = (undefined **)&DAT_011c8e56;
      FUN_00aaab00(this,&puStack_34);
      appuStack_24[0] = &PTR_FUN_00fba6f4;
      uStack_1c = 0;
      uStack_1a = 0;
      FUN_004f59c0(appuStack_24,0x13,9,&puStack_34,0x10,1);
      puVar2 = &stack0xffffffc8;
      (**(code **)(*piVar1 + 0x50))(appuStack_24);
      ppuStack_2c = &PTR_FUN_00fba6f4;
      if (((uint)appuStack_24[0] & 4) != 0) {
        FUN_004f5760(&ppuStack_2c,'\0');
      }
      if ((2 < (int)((int)puStack_34 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
        Memory_FreeIfNonNull((void *)param_1);
      }
      return puVar2;
    }
  }
  return (undefined1 *)0x0;
}

