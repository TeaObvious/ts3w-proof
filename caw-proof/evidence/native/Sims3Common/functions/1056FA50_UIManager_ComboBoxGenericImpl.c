/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_ComboBoxGenericImpl. Export ordinal(s):
   1072. Entry VA: 0x1056fa50. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006D3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl UIManager_ComboBoxGenericImpl(uint param_1,undefined4 param_2)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  undefined4 unaff_retaddr;
  float fVar7;
  undefined4 uStack_4;
  
  piVar2 = (int *)FUN_1055b120();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(), piVar3 != (int *)0x0)) &&
     (piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(0x2f5528d9), piVar3 != (int *)0x0)) {
    uVar4 = (**(code **)(*piVar2 + 0x58))(param_2);
    switch(uStack_4) {
    case 0:
      (**(code **)(*piVar3 + 0x20))(uVar4);
      iVar5 = (**(code **)(*piVar3 + 0x3c))();
      return iVar5 - 1;
    case 1:
      (**(code **)(*piVar3 + 0x24))(unaff_retaddr,uVar4);
      return 1;
    case 2:
      (**(code **)(*piVar3 + 0x28))(unaff_retaddr);
      return 1;
    case 3:
      (**(code **)(*piVar3 + 0x2c))();
      return 1;
    case 4:
      (**(code **)(*piVar3 + 0x30))(unaff_retaddr,uVar4);
      return 1;
    case 5:
      uVar6 = (**(code **)(*piVar3 + 0x38))(uVar4);
      return uVar6;
    case 6:
                    /* WARNING: Could not recover jumptable at 0x1056ec6c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar6 = (**(code **)(*piVar3 + 0x3c))();
      return uVar6;
    case 7:
                    /* WARNING: Could not recover jumptable at 0x1056ec7a. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar6 = (**(code **)(*piVar3 + 0x40))();
      return uVar6;
    case 8:
      (**(code **)(*piVar3 + 0x44))(unaff_retaddr,1);
      return 1;
    case 9:
      piVar2 = (int *)FUN_1093d2e0();
      iVar5 = *piVar2;
      fVar7 = 0.0;
      uVar4 = (**(code **)(*piVar3 + 0x10))(&stack0xffffffd8);
      uVar4 = (**(code **)(*piVar3 + 0x10))(uVar4);
      (**(code **)(iVar5 + 0x10))(uVar4);
      return (int)fVar7;
    case 10:
      cVar1 = (**(code **)(*piVar3 + 0x90))();
      return (uint)(cVar1 != '\0');
    }
  }
  return 0;
}

