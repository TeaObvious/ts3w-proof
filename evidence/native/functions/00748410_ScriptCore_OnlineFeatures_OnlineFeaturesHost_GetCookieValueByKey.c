/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011615e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetCookieValueByKey [assembly=ScriptCore
   token=0x0600063C; key: Sims3Launcher.S3L_CookieKeys; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_OnlineFeatures__OnlineFeaturesHost_GetCookieValueByKey(int param_1)

{
  int *piVar1;
  void *pvVar2;
  void *unaff_ESI;
  undefined1 *puVar3;
  undefined1 auStack_44 [4];
  undefined1 *puStack_40;
  undefined1 *puStack_3c;
  undefined *puStack_38;
  char *pcStack_34;
  void *apvStack_30 [2];
  undefined **appuStack_28 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puStack_40 = &DAT_011c8e54;
  puStack_3c = &DAT_011c8e54;
  pcStack_34 = "Services/OnlineFeaturesHost";
  puStack_38 = &DAT_011c8e55;
  if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
    FUN_007468b0(*(void **)(DAT_011d5068 + 0x114),param_1,&puStack_40);
  }
  pvVar2 = FUN_004f3c90(apvStack_30,&puStack_40);
  appuStack_20[0] = &PTR_FUN_0100886c;
  uStack_16 = 0x13;
  uStack_18 = 0xb;
  FUN_004f59c0(appuStack_20,0x13,9,pvVar2,0x10,1);
  if ((2 < (int)((int)appuStack_28[0] - (int)apvStack_30[0] & 0xfffffffeU)) &&
     (apvStack_30[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(apvStack_30[0]);
  }
  puVar3 = auStack_44;
  (**(code **)(*piVar1 + 0x50))(appuStack_20);
  appuStack_28[0] = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_004f5760(appuStack_28,'\0');
  }
  if ((1 < (int)puStack_40 - (int)unaff_ESI) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return puVar3;
}

