/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetStringPropertyImpl. Export
   ordinal(s): 1158. Entry VA: 0x1056f9f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006CB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_SetStringPropertyImpl(uint param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  void *this;
  undefined4 unaff_retaddr;
  int aiStack_50 [2];
  int iStack_48;
  undefined4 uStack_44;
  undefined1 auStack_40 [8];
  undefined1 auStack_38 [4];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [32];
  undefined4 uStack_c;
  
  piVar1 = (int *)FUN_1055b120();
  if (((param_1 & 0xff000000) == 0x30000000) && (param_3 != 0)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (param_1 == 0xeec1b00a) {
      if (piVar2 == (int *)0x0) {
        return;
      }
      piVar3 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
      if (piVar3 != (int *)0x0) {
        uVar4 = (**(code **)(*piVar1 + 0x58))(param_2);
        (**(code **)(*piVar3 + 0x78))(uVar4);
        return;
      }
    }
    if ((piVar2 != (int *)0x0) &&
       (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeec58382), piVar2 != (int *)0x0)) {
      ppuStack_30 = &PTR_LAB_10b20c18;
      FUN_1091d570(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar2 + 0x10))(auStack_40);
      this = (void *)FUN_10943d20(&uStack_44,aiStack_50,param_1,&ppuStack_34);
      if (this != (void *)0x0) {
        uStack_c = (**(code **)(*piVar1 + 0x58))(unaff_retaddr);
        FUN_10943dc0(this,(int)&stack0xffffffac,(undefined4 *)&stack0xffffffa0,auStack_38);
        (**(code **)(iStack_48 + 0x1c))(uStack_44);
      }
      ppuStack_34 = &PTR_LAB_10b20c18;
      FUN_1091d660(&ppuStack_30);
    }
  }
  return;
}

