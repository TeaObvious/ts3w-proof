/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetUICallbacksImpl [assembly=ScriptCore token=0x06000E23;
   pEventCallback: System.Delegate, pLocaleChangedCallback: System.Delegate,
   pResolutionChangedCallback: System.Delegate, pWindowShutdownCallback: System.Delegate,
   pNewContentInstalledCallback: System.Delegate, pInGameStoreCallback: System.Delegate,
   pNewHotInstallDataCallback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. SetUICallbacks actual physical seven stack DWORDs, plain
   RET/caller-clean cdecl. Existing stdcall metadata was incorrect. Load global UIHost011D7988 and
   store the seven borrowed callback words in order at+0x28, +0x2C, +0x30, +0x34, +0x38, +0x3C,
   +0x40. No null-host guard, thread marker, delegate conversion, native retain or callback
   invocation occurs in this body. Fourth pointer is consumed by77EBB0; first by780510. Preserve
   original binding name and prior annotations. */

void __cdecl
ScriptCore_UIManager__UIManager_SetUICallbacksImpl
          (void *eventCallback,void *localeCallback,void *resolutionCallback,void *shutdownCallback,
          void *newContentCallback,void *storeCallback,void *hotInstallCallback)

{
  int iVar1;
  
  iVar1 = DAT_011d7988;
  *(void **)(DAT_011d7988 + 0x28) = eventCallback;
  *(void **)(iVar1 + 0x2c) = localeCallback;
  *(void **)(iVar1 + 0x30) = resolutionCallback;
  *(void **)(iVar1 + 0x34) = shutdownCallback;
  *(void **)(iVar1 + 0x38) = newContentCallback;
  *(void **)(iVar1 + 0x3c) = storeCallback;
  *(void **)(iVar1 + 0x40) = hotInstallCallback;
  return;
}

