/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetDrawablePropertyImpl. Export
   ordinal(s): 1098. Entry VA: 0x1056fa20. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006CF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetDrawablePropertyImpl(uint param_1,uint param_2)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  void *this;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iStack_50;
  uint uStack_4c;
  int aiStack_48 [3];
  undefined1 auStack_3c [8];
  undefined4 auStack_34 [2];
  undefined **ppuStack_2c;
  undefined **ppuStack_28;
  undefined1 auStack_24 [36];
  
  piVar2 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    ppuStack_28 = &PTR_LAB_10b20c18;
    FUN_1091d570(auStack_24,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (piVar3 != (int *)0x0) {
      piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(0xeec58382);
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x10))(auStack_3c);
        this = (void *)FUN_10943d20(auStack_3c,aiStack_48,param_1,&ppuStack_2c);
        if (this != (void *)0x0) {
          cVar1 = FUN_10943b20(this,(undefined4 *)&stack0xffffffac,(int)aiStack_48,&ppuStack_2c);
          if ((cVar1 != '\0') && (param_2 < uStack_4c)) {
            puVar4 = (undefined4 *)FUN_1056bbe0(*(int **)(iStack_50 + param_2 * 4));
            if (puVar4 != (undefined4 *)0x0) {
              (**(code **)*puVar4)();
              uVar5 = (**(code **)(*piVar2 + 200))(puVar4,0x30);
              FUN_1056b410(auStack_34);
              return uVar5;
            }
          }
        }
      }
    }
    ppuStack_2c = &PTR_LAB_10b20c18;
    FUN_1091d660(&ppuStack_28);
  }
  return 0;
}

