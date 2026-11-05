/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetStringPropertyImpl. Export
   ordinal(s): 1111. Entry VA: 0x10574b10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006CC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetStringPropertyImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  void *this;
  undefined4 *puVar4;
  undefined1 auStack_90 [4];
  undefined **ppuStack_8c;
  undefined **ppuStack_88;
  undefined1 auStack_84 [32];
  int aiStack_64 [2];
  int iStack_5c;
  undefined4 uStack_54;
  undefined4 *puStack_50;
  int aiStack_48 [3];
  undefined **appuStack_3c [2];
  byte bStack_34;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [20];
  int iStack_4;
  
  piVar2 = (int *)FUN_1055b120();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1), piVar3 != (int *)0x0)) &&
     (piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(), piVar3 != (int *)0x0)) {
    ppuStack_88 = &PTR_LAB_10b20c18;
    FUN_1091d570(auStack_84,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    (**(code **)(*piVar3 + 0x10))(auStack_18);
    this = (void *)FUN_10943d20(auStack_1c,aiStack_48,iStack_4,&ppuStack_8c);
    if ((this != (void *)0x0) &&
       (cVar1 = FUN_10943b20(this,&uStack_54,(int)aiStack_48,&ppuStack_8c), cVar1 != '\0')) {
      puVar4 = FUN_1006aaa0(aiStack_64,(short *)*puStack_50,(undefined4 *)&stack0xffffff50);
      puVar4 = FUN_102c0e40(appuStack_3c,puVar4);
      FUN_100c4ac0(&stack0xffffff54,(int)puVar4);
      appuStack_3c[0] = &PTR_FUN_10aca5b4;
      if ((bStack_34 & 4) != 0) {
        FUN_10928a90(appuStack_3c,'\0');
      }
      if ((2 < (int)(iStack_5c - aiStack_64[0] & 0xfffffffeU)) && (aiStack_64[0] != 0)) {
        FUN_10918e90(aiStack_64[0]);
      }
      (**(code **)(*piVar2 + 0x50))(&stack0xffffff54,&stack0xffffff4c);
      FUN_10928a90(&stack0xffffff4c,'\0');
      FUN_1091d660(auStack_90);
      return 0xeec58382;
    }
    ppuStack_8c = &PTR_LAB_10b20c18;
    FUN_1091d660(&ppuStack_88);
  }
  return 0;
}

