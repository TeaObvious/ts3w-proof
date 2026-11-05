/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197198 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_GetNativePath [assembly=ScriptCore token=0x06000245; path:
   System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_GetNativePath(int param_1)

{
  bool bVar1;
  int *piVar2;
  ushort *puVar3;
  int iVar4;
  void *pvVar5;
  int unaff_EDI;
  int aiStack_26c [2];
  undefined **ppuStack_264;
  char *pcStack_260;
  undefined **appuStack_25c [2];
  undefined2 uStack_254;
  undefined2 uStack_252;
  int aiStack_23c [2];
  undefined **appuStack_234 [2];
  byte abStack_22c [32];
  byte abStack_20c [260];
  WCHAR aWStack_108 [132];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  aiStack_26c[0] = param_1;
  puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))();
  if (puVar3 == (ushort *)0x0) {
    return 0;
  }
  iVar4 = FUN_0058e800();
  if ((iVar4 != 0) && (*(char *)(iVar4 + 0x2a8) != '\0')) {
    FUN_004fdfa0(abStack_20c,puVar3,0x104,-1);
    bVar1 = FUN_00ec0f80(abStack_20c,aWStack_108,0x104);
    if (bVar1) {
      pvVar5 = FUN_004f3b50(aiStack_23c,aWStack_108,0xffffffff,(char *)0x0);
      FUN_005ab2a0(abStack_22c,pvVar5);
      if ((2 < (int)((int)appuStack_234[0] - aiStack_23c[0] & 0xfffffffeU)) && (aiStack_23c[0] != 0)
         ) {
        FUN_004e44e0(aiStack_23c[0]);
      }
      (**(code **)(*piVar2 + 0x50))(abStack_22c,&stack0xfffffd90);
      appuStack_234[0] = &PTR_FUN_00fba6f4;
      if ((abStack_22c[0] & 4) == 0) {
        return param_1;
      }
      FUN_004f5760(appuStack_234,'\0');
      return param_1;
    }
  }
  aiStack_26c[0] = 0;
  aiStack_26c[1] = 0;
  ppuStack_264 = (undefined **)0x0;
  pcStack_260 = "Scripting/GameHost/TmpSrcPath";
  FUN_0040b590(aiStack_26c,(short *)puVar3);
  appuStack_25c[0] = &PTR_FUN_0100886c;
  uStack_252 = 0x13;
  uStack_254 = 0xb;
  FUN_004f59c0(appuStack_25c,0x13,9,aiStack_26c,0x10,1);
  (**(code **)(*piVar2 + 0x50))(appuStack_25c,&stack0xfffffd90);
  ppuStack_264 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_25c[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_264,'\0');
  }
  if ((2 < (int)(aiStack_26c[0] - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
    FUN_004e44e0(unaff_EDI);
  }
  return param_1;
}

