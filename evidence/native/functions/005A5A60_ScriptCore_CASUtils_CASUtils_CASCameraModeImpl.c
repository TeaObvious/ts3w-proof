/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156498 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_CASCameraModeImpl [assembly=ScriptCore token=0x060002F1; activate:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_CASCameraModeImpl(char param_1)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar1 != (void *)0x0) {
    iVar2 = (-(uint)(param_1 != '\0') & 0xf) + 1;
    FUN_006e8260(pvVar1,iVar2,0x7ffff000);
    *(char *)((int)pvVar1 + 0x269) = param_1;
    pvVar1 = *(void **)((int)pvVar1 + 0x38);
    if (pvVar1 != (void *)0x0) {
      FUN_006dedb0(pvVar1,param_1 == '\0');
      FUN_006deda0(pvVar1,param_1);
      FUN_006ded80(pvVar1,iVar2,0x7ffff000);
    }
  }
  iVar2 = FUN_00969bd0();
  pvVar1 = (void *)FUN_00f21ff0(iVar2);
  if (pvVar1 != (void *)0x0) {
    if (param_1 != '\0') {
      if (*(int *)((int)pvVar1 + 0x90) != 4) {
        DAT_011561e4 = *(int *)((int)pvVar1 + 0x90);
      }
      FUN_0096b060(pvVar1,4,'\0');
      FUN_006e9930();
      return;
    }
    FUN_0096b060(pvVar1,DAT_011561e4,'\0');
  }
  FUN_006e9930();
  return;
}

