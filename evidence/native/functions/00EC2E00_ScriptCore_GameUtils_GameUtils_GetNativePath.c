/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197198 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_GetNativePath [assembly=ScriptCore token=0x06000245; path:
   System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_GetNativePath(int param_1)

{
  bool bVar1;
  int *piVar2;
  ushort *inputCodeUnits;
  int iVar3;
  void *pvVar4;
  void *unaff_EDI;
  int iStack_26c;
  undefined **ppuStack_268;
  undefined **ppuStack_264;
  char *pcStack_260;
  undefined **appuStack_25c [2];
  undefined2 uStack_254;
  undefined2 uStack_252;
  void *apvStack_23c [2];
  undefined **appuStack_234 [2];
  byte abStack_22c [32];
  byte abStack_20c [260];
  byte abStack_108 [264];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iStack_26c = param_1;
  inputCodeUnits = (ushort *)(**(code **)(*piVar2 + 0x58))();
  if (inputCodeUnits == (ushort *)0x0) {
    return 0;
  }
  iVar3 = FUN_0058e800();
  if ((iVar3 != 0) && (*(char *)(iVar3 + 0x2a8) != '\0')) {
    CodeUnits16_EncodeBoundedBytes(abStack_20c,inputCodeUnits,0x104,0xffffffff);
    bVar1 = FUN_00ec0f80(abStack_20c,abStack_108,0x104);
    if (bVar1) {
      pvVar4 = EaString_FromUtf8Bytes(apvStack_23c,abStack_108,0xffffffff,(byte *)0x0);
      FUN_005ab2a0(abStack_22c,pvVar4);
      if ((2 < (int)((int)appuStack_234[0] - (int)apvStack_23c[0] & 0xfffffffeU)) &&
         (apvStack_23c[0] != (void *)0x0)) {
        Memory_FreeIfNonNull(apvStack_23c[0]);
      }
      (**(code **)(*piVar2 + 0x50))(abStack_22c,appuStack_25c + -5);
      appuStack_234[0] = &PTR_FUN_00fba6f4;
      if ((abStack_22c[0] & 4) == 0) {
        return param_1;
      }
      FUN_004f5760(appuStack_234,'\0');
      return param_1;
    }
  }
  iStack_26c = 0;
  ppuStack_268 = (undefined **)0x0;
  ppuStack_264 = (undefined **)0x0;
  pcStack_260 = "Scripting/GameHost/TmpSrcPath";
  FUN_0040b590(&iStack_26c,(short *)inputCodeUnits);
  appuStack_25c[0] = &PTR_FUN_0100886c;
  uStack_252 = 0x13;
  uStack_254 = 0xb;
  FUN_004f59c0(appuStack_25c,0x13,9,&iStack_26c,0x10,1);
  (**(code **)(*piVar2 + 0x50))(appuStack_25c,appuStack_25c + -5);
  ppuStack_264 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_25c[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_264,'\0');
  }
  if ((2 < (int)(iStack_26c - (int)unaff_EDI & 0xfffffffeU)) && (unaff_EDI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EDI);
  }
  return param_1;
}

