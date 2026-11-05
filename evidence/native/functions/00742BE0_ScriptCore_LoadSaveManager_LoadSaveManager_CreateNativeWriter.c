/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01161230 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_CreateNativeWriter [assembly=ScriptCore
   token=0x060001DC; ; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Bounded PE window shows 9Ch-byte writer
   allocation, constructor 007D42A0, Begin 007D4750 and host registration with type 44h. Current
   stored body owns one byte and has ZERO actual Listing instructions; the 80-byte independent
   window is not a repaired or complete stored body. */

undefined4 ScriptCore_LoadSaveManager__LoadSaveManager_CreateNativeWriter(void)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_004e4500(0x9c,"Debug/NativeWriter",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = PersistWriter_ConstructStorage(puVar1);
    if (puVar1 != (undefined4 *)0x0) {
      PersistWriter_Begin();
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      uVar3 = (**(code **)(*piVar2 + 200))(puVar1,0x44);
      return uVar3;
    }
  }
  return 0;
}

