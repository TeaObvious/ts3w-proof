/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162008 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_GetAllSimulationObjectKeysImpl [assembly=ScriptCore
   token=0x06000552; ; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Simulator::Simulator_GetAllSimulationObjectKeysImpl(void)

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
  
  piStack_40 = (int *)0x76d49c;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piStack_40 = (int *)0x76d4a3;
  piVar4 = (int *)FUN_004afe80();
  iVar6 = 0;
  piStack_40 = (int *)0x0;
  local_20 = &PTR_LAB_00fd92b0;
  local_1c = 0x2dc343f;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Scripting/SimulatorHost";
  (**(code **)(*piVar4 + 0x20))(&local_10,&local_20);
  FUN_004afe30(&local_1c);
  (**(code **)(*piVar3 + 0x88))(&stack0xffffffcc,iStack_18 - local_1c >> 4);
  ppuVar1 = local_20;
  ppuVar7 = ppuStack_24;
  do {
    if (ppuVar7 == ppuVar1) {
      if (ppuStack_24 != (undefined **)0x0) {
        FUN_004e44e0((int)ppuStack_24);
      }
      return unaff_EDI;
    }
    piStack_40 = (int *)0x0;
    cVar2 = (**(code **)(*piVar4 + 0xc))(ppuVar7,&piStack_40,0,0,0,0);
    if (cVar2 == '\0') {
LAB_0076d581:
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
      goto LAB_0076d581;
    }
    ppuVar7 = ppuVar7 + 4;
    iVar6 = iVar6 + 1;
  } while( true );
}

