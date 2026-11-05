/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_GetAllSimulationObjectKeysImpl. Export
   ordinal(s): 754. Entry VA: 0x1055ef50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010EF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 Simulator_GetAllSimulationObjectKeysImpl(void)

{
  undefined **ppuVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  undefined **ppuVar7;
  undefined4 unaff_EDI;
  int *piStack_40;
  undefined *puStack_2c;
  undefined *puStack_28;
  undefined **ppuStack_24;
  undefined **local_20;
  int local_1c;
  int iStack_18;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x55ef50  754  Simulator_GetAllSimulationObjectKeysImpl */
  piStack_40 = (int *)0x1055ef5c;
  piVar3 = (int *)FUN_1055b120();
  piStack_40 = (int *)0x1055ef63;
  piVar4 = (int *)FUN_108e50d0();
  iVar6 = 0;
  piStack_40 = (int *)0x0;
  local_20 = &PTR_LAB_10ab5a24;
  local_1c = 0x2dc343f;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Scripting/SimulatorHost";
  (**(code **)(*piVar4 + 0x20))(&local_10,&local_20);
  FUN_108e5080(&local_1c);
  (**(code **)(*piVar3 + 0x88))(&stack0xffffffcc,iStack_18 - local_1c >> 4);
  ppuVar1 = local_20;
  ppuVar7 = ppuStack_24;
  do {
    if (ppuVar7 == ppuVar1) {
      if (ppuStack_24 != (undefined **)0x0) {
        FUN_10918e90((int)ppuStack_24);
      }
      return unaff_EDI;
    }
    piStack_40 = (int *)0x0;
    cVar2 = (**(code **)(*piVar4 + 0xc))(ppuVar7,&piStack_40,0,0,0,0);
    if (cVar2 == '\0') {
LAB_1055f041:
      if (piStack_40 != (int *)0x0) {
        (**(code **)(*piStack_40 + 4))();
      }
    }
    else if (piStack_40 != (int *)0x0) {
      iVar5 = (**(code **)(*piStack_40 + 0xc))(0x2dc3450);
      if (iVar5 != 0) {
        puStack_2c = *ppuVar7;
        puStack_28 = ppuVar7[1];
        (**(code **)(*piVar3 + 0xa0))(&stack0xffffffc4,&puStack_2c,iVar6,1);
      }
      goto LAB_1055f041;
    }
    ppuVar7 = ppuVar7 + 4;
    iVar6 = iVar6 + 1;
  } while( true );
}

