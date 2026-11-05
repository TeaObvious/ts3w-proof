/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162008 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  undefined4 uStack_40;
  undefined4 uStack_2c;
  undefined *puStack_28;
  undefined **ppuStack_24;
  undefined **local_20;
  int local_1c;
  int iStack_18;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  uStack_40 = (int *)0x76d49c;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_40 = (int *)0x76d4a3;
  piVar4 = (int *)FUN_004afe80();
  iVar6 = 0;
  uStack_40 = (int *)0x0;
  local_20 = &PTR_LAB_00fd92b0;
  local_1c = 0x2dc343f;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "Scripting/SimulatorHost";
  (**(code **)(*piVar4 + 0x20))(&local_10,&local_20);
  FUN_004afe30(&local_1c);
  (**(code **)(*piVar3 + 0x88))((int)register0x00000010 + -0x34,iStack_18 - local_1c >> 4);
  ppuVar1 = local_20;
  ppuVar7 = ppuStack_24;
  if (ppuStack_24 != local_20) {
    do {
      uStack_40 = (int *)0x0;
      cVar2 = (**(code **)(*piVar4 + 0xc))(ppuVar7,&uStack_40,0,0,0,0);
      if (cVar2 == '\0') {
LAB_0076d581:
        if (uStack_40 != (int *)0x0) {
          (**(code **)(*uStack_40 + 4))();
        }
      }
      else if (uStack_40 != (int *)0x0) {
        iVar5 = (**(code **)(*uStack_40 + 0xc))(0x2dc3450);
        if (iVar5 != 0) {
          uStack_2c = *ppuVar7;
          puStack_28 = ppuVar7[1];
          (**(code **)(*piVar3 + 0xa0))((int)register0x00000010 + -0x3c,&uStack_2c,iVar6,1);
        }
        goto LAB_0076d581;
      }
      ppuVar7 = ppuVar7 + 4;
      iVar6 = iVar6 + 1;
    } while (ppuVar7 != ppuVar1);
  }
  if (ppuStack_24 != (undefined **)0x0) {
    Memory_FreeIfNonNull(ppuStack_24);
  }
  return unaff_EDI;
}

