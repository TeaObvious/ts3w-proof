/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetUInt32PropertyImpl. Export
   ordinal(s): 1160. Entry VA: 0x105716b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006C3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_SetUInt32PropertyImpl(uint param_1,uint param_2)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  void *this;
  int aiStack_50 [3];
  int iStack_44;
  undefined4 auStack_40 [3];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [44];
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) != 0x30000000) {
    return;
  }
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (param_1 == 0xeec1b000) {
    if (piVar1 == (int *)0x0) {
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar2 != (int *)0x0) {
      uVar3 = (**(code **)(*piVar2 + 0x28))();
      uVar3 = uVar3 ^ param_2;
      if (uVar3 == 0) {
        return;
      }
      do {
        uVar4 = -uVar3 & uVar3;
        uVar3 = uVar3 - uVar4;
        (**(code **)(*piVar2 + 0x74))(uVar4,(param_2 & uVar4) != 0);
      } while (uVar3 != 0);
      return;
    }
  }
  else if (param_1 == 0xeec1b004) {
    if (piVar1 == (int *)0x0) {
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x60))(param_2);
      return;
    }
  }
  else if (param_1 == 0xeec1b009) {
    if (piVar1 == (int *)0x0) {
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x70))(param_2);
      return;
    }
  }
  else if ((param_1 == 0xeec1d001) && (piVar2 = (int *)FUN_1056bbc0(piVar1), piVar2 != (int *)0x0))
  {
    (**(code **)(*piVar2 + 0x24))(param_2);
    return;
  }
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382), piVar1 != (int *)0x0)) {
    ppuStack_30 = &PTR_LAB_10b20c18;
    FUN_1091d570(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    (**(code **)(*piVar1 + 0x10))(auStack_40);
    this = (void *)FUN_10943d20(&iStack_44,aiStack_50,param_1,&ppuStack_34);
    if (this != (void *)0x0) {
      FUN_10943dc0(this,(int)aiStack_50,(undefined4 *)&stack0xffffffa4,&ppuStack_34);
      (**(code **)(iStack_44 + 0x1c))(auStack_40[0]);
    }
    ppuStack_34 = &PTR_LAB_10b20c18;
    FUN_1091d660(&ppuStack_30);
  }
  return;
}

