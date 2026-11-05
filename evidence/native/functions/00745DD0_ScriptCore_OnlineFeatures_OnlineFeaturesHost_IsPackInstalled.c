/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161560 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsPackInstalled [assembly=ScriptCore
   token=0x0600062A; packageId: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char ScriptCore_OnlineFeatures__OnlineFeaturesHost_IsPackInstalled(void)

{
  char cVar1;
  void *this;
  int *piVar2;
  ushort *puVar3;
  undefined1 auStack_2c [8];
  undefined4 uStack_24;
  
  this = DownloadContent_GetOwnerFromGlobalLink();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this == (void *)0x0) || (piVar2 == (int *)0x0)) {
    return '\0';
  }
  puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))();
  uStack_24 = 0x745e02;
  FUN_005020a0(auStack_2c + 0x18,puVar3,0x10);
  FUN_00500c90(auStack_2c,(undefined4 *)(auStack_2c + 0x18));
  cVar1 = FUN_0098a3c0(this);
  return cVar1;
}

