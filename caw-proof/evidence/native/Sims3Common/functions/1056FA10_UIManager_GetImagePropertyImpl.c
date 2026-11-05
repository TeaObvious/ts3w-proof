/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetImagePropertyImpl. Export
   ordinal(s): 1101. Entry VA: 0x1056fa10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006CE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetImagePropertyImpl(uint param_1,uint param_2)

{
  undefined4 *puVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  void *this;
  undefined4 uVar5;
  int iStack_50;
  uint uStack_4c;
  int aiStack_48 [3];
  undefined1 auStack_3c [8];
  undefined4 auStack_34 [2];
  undefined **ppuStack_2c;
  undefined **ppuStack_28;
  undefined1 auStack_24 [36];
  
  piVar3 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    ppuStack_28 = &PTR_LAB_10b20c18;
    FUN_1091d570(auStack_24,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    piVar4 = (int *)(**(code **)(*piVar3 + 0xcc))(param_1);
    if (piVar4 != (int *)0x0) {
      piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0xeec58382);
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 0x10))(auStack_3c);
        this = (void *)FUN_10943d20(auStack_3c,aiStack_48,param_1,&ppuStack_2c);
        if (this != (void *)0x0) {
          cVar2 = FUN_10943b20(this,(undefined4 *)&stack0xffffffac,(int)aiStack_48,&ppuStack_2c);
          if (((cVar2 != '\0') && (param_2 < uStack_4c)) &&
             (puVar1 = *(undefined4 **)(iStack_50 + param_2 * 4), puVar1 != (undefined4 *)0x0)) {
            (**(code **)*puVar1)();
            uVar5 = (**(code **)(*piVar3 + 200))(puVar1,0x30);
            FUN_1056b410(auStack_34);
            return uVar5;
          }
        }
      }
    }
    ppuStack_2c = &PTR_LAB_10b20c18;
    FUN_1091d660(&ppuStack_28);
  }
  return 0;
}

