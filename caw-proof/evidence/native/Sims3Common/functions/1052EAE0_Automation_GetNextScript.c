/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Automation_GetNextScript. Export ordinal(s): 49.
   Entry VA: 0x1052eae0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000363. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * Automation_GetNextScript(void)

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
  WCHAR aWStack_410 [6];
  undefined1 auStack_404 [1028];
  
                    /* 0x52eae0  49  Automation_GetNextScript */
  piVar3 = *(int **)(DAT_10c786b8 + 4);
  aiStack_440[1] = 0;
  aiStack_440[0] = 0x1052eafa;
  cVar1 = (**(code **)(*piVar3 + 100))();
  if (cVar1 != '\0') {
    aiStack_440[0] = 0;
    uStack_444 = 0x400;
    iVar2 = (**(code **)(piVar3[0x1f] + 0x40))();
    if (0 < iVar2) {
      *(undefined1 *)((int)aWStack_410 + iVar2) = 0;
      FUN_10926db0(aiStack_440,aWStack_410,0x400,"Debug");
      appuStack_430[0] = &PTR_FUN_10aca5b4;
      uStack_426 = 0x13;
      uStack_428 = 0xb;
      FUN_10928b90(appuStack_430,0x13,9,aiStack_440,0x10,1);
      piVar3 = (int *)FUN_1055b120();
      puVar4 = &uStack_444;
      (**(code **)(*piVar3 + 0x50))(appuStack_430);
      if (((uint)appuStack_430[0] & 4) != 0) {
        FUN_10928a90(&stack0xfffffbc8,'\0');
      }
      if ((2 < (int)(aiStack_440[0] - (int)auStack_404 & 0xfffffffeU)) &&
         (auStack_404 != (undefined1 *)0x0)) {
        FUN_10918e90((int)auStack_404);
      }
      return puVar4;
    }
  }
  return (undefined4 *)0x0;
}

