/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetImagePropertyImpl. Export
   ordinal(s): 1153. Entry VA: 0x1056fa00. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006CD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_SetImagePropertyImpl(uint param_1,uint param_2,uint param_3)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  void *this;
  undefined4 uVar5;
  int iStack_60;
  uint uStack_5c;
  int aiStack_58 [2];
  int iStack_50;
  undefined4 auStack_4c [4];
  undefined1 auStack_3c [16];
  undefined **ppuStack_2c;
  undefined **ppuStack_28;
  undefined1 auStack_24 [36];
  
  piVar2 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    ppuStack_28 = &PTR_LAB_10b20c18;
    FUN_1091d570(auStack_24,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if ((piVar3 != (int *)0x0) &&
       (piVar4 = (int *)(**(code **)(*piVar3 + 0xc))(0xeec58382), piVar4 != (int *)0x0)) {
      (**(code **)(*piVar4 + 0x10))(auStack_3c);
      this = (void *)FUN_10943d20(auStack_3c,aiStack_58,param_1,&ppuStack_2c);
      if ((this != (void *)0x0) &&
         (cVar1 = FUN_10943b20(this,(undefined4 *)&stack0xffffff9c,(int)aiStack_58,&ppuStack_2c),
         cVar1 != '\0')) {
        if ((param_3 & 0xff000000) == 0x30000000) {
          uVar5 = (**(code **)(*piVar2 + 0xcc))(param_3);
        }
        else {
          uVar5 = 0;
        }
        if (param_2 < uStack_5c) {
          *(undefined4 *)(iStack_60 + param_2 * 4) = uVar5;
          FUN_10943dc0(this,(int)aiStack_58,(undefined4 *)&stack0xffffff9c,&ppuStack_2c);
          piVar2 = (int *)FUN_1056bba0(piVar3);
          (**(code **)(*piVar2 + 0x10))(auStack_4c);
          (**(code **)(iStack_50 + 0x1c))(auStack_4c[0]);
        }
      }
    }
    ppuStack_2c = &PTR_LAB_10b20c18;
    FUN_1091d660(&ppuStack_28);
  }
  return;
}

