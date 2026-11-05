/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011615f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_SetCookieValueByKey [assembly=ScriptCore
   token=0x0600063D; key: Sims3Launcher.S3L_CookieKeys, val: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_OnlineFeatures__OnlineFeaturesHost_SetCookieValueByKey
               (undefined4 param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  char *unaff_ESI;
  undefined1 *puVar4;
  char *allocation;
  int unaff_retaddr;
  undefined1 auStack_1e [2];
  undefined1 *apuStack_1c [2];
  char *apcStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (param_2 != 0)) {
    apcStack_14[0] = "Services/OnlineFeaturesHost";
    apuStack_1c[0] = &DAT_011c8e54;
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_2);
    puVar3 = Utf_ConvertWideSpanToByteStorage(apcStack_14,pWVar2,0xffffffff,(char *)0x0);
    puVar4 = &DAT_011c8e55;
    allocation = &DAT_011c8e54;
    if (puVar3 != (undefined4 *)(auStack_1e + -6)) {
      FUN_00405910(auStack_1e + -6,(void *)*puVar3,(undefined1 *)puVar3[1]);
      puVar4 = apuStack_1c[0];
      allocation = unaff_ESI;
    }
    if ((1 < iStack_c - (int)apcStack_14[0]) && (apcStack_14[0] != (char *)0x0)) {
      Memory_FreeIfNonNull(apcStack_14[0]);
    }
    if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
      FUN_00746850(*(void **)(DAT_011d5068 + 0x114),unaff_retaddr,allocation);
    }
    if ((1 < (int)puVar4 - (int)allocation) && (allocation != (char *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

