/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_EffectListGenericImpl. Export
   ordinal(s): 1085. Entry VA: 0x1056fa90. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006DD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl UIManager_EffectListGenericImpl(uint param_1,uint param_2)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  int unaff_EBX;
  int iVar7;
  int unaff_ESI;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar2 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218), piVar2 != (int *)0x0)) {
    switch(unaff_retaddr) {
    case 0:
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
      iVar7 = FUN_1056bc60(piVar1);
      if (iVar7 != 0) {
        (**(code **)(*piVar2 + 0x108))(iVar7);
      }
      return 1;
    case 1:
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
      iVar7 = FUN_1056bc60(piVar1);
      if (iVar7 != 0) {
        (**(code **)(*piVar2 + 0x10c))(iVar7);
      }
      return 1;
    case 2:
      piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(0);
      while (piVar1 != (int *)0x0) {
        iVar7 = (**(code **)(*piVar1 + 0xc))(0x8f2b630b);
        if ((iVar7 != 0) ||
           (iVar7 = (**(code **)(*piVar1 + 0xc))(0x8239c2f), piVar3 = (int *)0x0, iVar7 != 0)) {
          piVar3 = piVar1;
        }
        piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(piVar1);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar2 + 0x10c))(piVar3);
        }
      }
      return 1;
    case 3:
      for (piVar3 = (int *)(**(code **)(*piVar2 + 0x110))(0); piVar3 != (int *)0x0;
          piVar3 = (int *)(**(code **)(*piVar2 + 0x110))(piVar3)) {
        puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xc))(0x8f2b630b);
        if (puVar4 != (undefined4 *)0x0) {
          if (unaff_EBX == unaff_ESI) goto LAB_1056f084;
          unaff_ESI = unaff_ESI + 1;
        }
        puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xc))(0x8239c2f);
        if (puVar4 != (undefined4 *)0x0) {
          if (unaff_EBX == unaff_ESI) {
LAB_1056f084:
            (**(code **)*puVar4)();
            iVar7 = (**(code **)(*piVar1 + 200))(puVar4,0x30);
            return iVar7;
          }
          unaff_ESI = unaff_ESI + 1;
        }
      }
      break;
    case 4:
      if ((param_2 & 0xff000000) == 0x30000000) {
        piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
        iVar7 = FUN_1056bc20(piVar1);
        iVar5 = FUN_1056bc40(piVar1);
        piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(0);
        if (piVar1 != (int *)0x0) {
          while( true ) {
            iVar6 = (**(code **)(*piVar1 + 0xc))(0x8f2b630b);
            if ((iVar6 != 0) && (iVar6 == iVar7)) {
              return 1;
            }
            iVar6 = (**(code **)(*piVar1 + 0xc))(0x8239c2f);
            if ((iVar6 != 0) && (iVar6 == iVar5)) break;
            piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(piVar1);
            if (piVar1 == (int *)0x0) {
              return 0;
            }
          }
          return 1;
        }
      }
      break;
    case 5:
      piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(0);
      iVar7 = 0;
      for (; piVar1 != (int *)0x0; piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(piVar1)) {
        iVar5 = (**(code **)(*piVar1 + 0xc))(0x8f2b630b);
        iVar6 = (**(code **)(*piVar1 + 0xc))(0x8239c2f);
        if ((iVar5 != 0) || (iVar6 != 0)) {
          iVar7 = iVar7 + 1;
        }
      }
      return iVar7;
    }
  }
  return 0;
}

