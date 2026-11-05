/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetRectFloatPropertyImpl. Export
   ordinal(s): 1155. Entry VA: 0x1056f9b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006C7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_SetRectFloatPropertyImpl(uint param_1,undefined4 param_2,undefined4 *param_3)

{
  int *piVar1;
  int *piVar2;
  void *this;
  int aiStack_54 [2];
  undefined4 uStack_4c;
  undefined4 uStack_48;
  int iStack_44;
  undefined4 auStack_40 [3];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [44];
  
  piVar1 = (int *)FUN_1055b120();
  if (((param_1 & 0xff000000) == 0x30000000) && (param_3 != (undefined4 *)0x0)) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (param_1 == 0xeec1b005) {
      if (piVar1 == (int *)0x0) {
        return;
      }
      piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar2 != (int *)0x0) {
        uStack_4c = *param_3;
        uStack_48 = param_3[1];
        iStack_44 = param_3[2];
        auStack_40[0] = param_3[3];
        (**(code **)(*piVar2 + 100))(&uStack_4c);
        return;
      }
    }
    if ((piVar1 != (int *)0x0) &&
       (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382), piVar1 != (int *)0x0)) {
      ppuStack_30 = &PTR_LAB_10b20c18;
      FUN_1091d570(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar1 + 0x10))(auStack_40);
      this = (void *)FUN_10943d20(&iStack_44,aiStack_54,param_1,&ppuStack_34);
      if (this != (void *)0x0) {
        FUN_10943dc0(this,(int)aiStack_54,(undefined4 *)&stack0xffffffa0,&ppuStack_34);
        (**(code **)(iStack_44 + 0x1c))(auStack_40[0]);
      }
      ppuStack_34 = &PTR_LAB_10b20c18;
      FUN_1091d660(&ppuStack_30);
    }
  }
  return;
}

