/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ebd0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.AutomationUtils::Automation_GetNextScript [assembly=ScriptCore token=0x06000621; ;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_AutomationUtils__Automation_GetNextScript(void)

{
  char cVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined4 uStack_444;
  int aiStack_440 [2];
  undefined **appuStack_430 [2];
  undefined2 uStack_428;
  undefined2 uStack_426;
  byte abStack_410 [12];
  undefined1 auStack_404 [1028];
  
  piVar3 = *(int **)(DAT_011d4e38 + 4);
  aiStack_440[1] = 0;
  aiStack_440[0] = 0x73c5ea;
  cVar1 = (**(code **)(*piVar3 + 100))();
  if (cVar1 != '\0') {
    aiStack_440[0] = 0;
    uStack_444 = 0x400;
    iVar2 = (**(code **)(piVar3[0x1f] + 0x40))();
    if (0 < iVar2) {
      abStack_410[iVar2] = 0;
      EaString_FromUtf8Bytes(aiStack_440,abStack_410,0x400,(byte *)"Debug");
      appuStack_430[0] = &PTR_FUN_0100886c;
      uStack_426 = 0x13;
      uStack_428 = 0xb;
      FUN_004f59c0(appuStack_430,0x13,9,aiStack_440,0x10,1);
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      puVar4 = &uStack_444;
      (**(code **)(*piVar3 + 0x50))(appuStack_430);
      if (((uint)appuStack_430[0] & 4) != 0) {
        FUN_004f5760(aiStack_440 + 2,'\0');
      }
      if ((2 < (int)(aiStack_440[0] - (int)auStack_404 & 0xfffffffeU)) &&
         (auStack_404 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(auStack_404);
      }
      return puVar4;
    }
  }
  return (undefined4 *)0x0;
}

