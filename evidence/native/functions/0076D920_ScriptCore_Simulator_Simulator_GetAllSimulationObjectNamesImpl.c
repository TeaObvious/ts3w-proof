/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162010 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_GetAllSimulationObjectNamesImpl [managed declarations=0; exact
   native prototype unresolved]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Simulator::Simulator_GetAllSimulationObjectNamesImpl(void)

{
  char *pcVar1;
  int *piVar2;
  int unaff_ESI;
  undefined4 unaff_EDI;
  undefined4 local_44;
  int local_40 [3];
  char *local_34;
  int local_30 [2];
  undefined **appuStack_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  GetGlobalInterfacePointer_11D5BBC();
  pcVar1 = (char *)FUN_007d9040();
  if (pcVar1 == (char *)0x0) {
    pcVar1 = "Key not found";
  }
  local_40[0] = 0;
  local_40[1] = 0;
  local_40[2] = 0;
  local_34 = "Scripting/SimulatorHost";
  FUN_00405ad0(local_40,pcVar1);
  FUN_004f3c90(local_30,local_40);
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x13,9,local_30,0x10,1);
  local_44 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar2 + 0x50))(local_20,&local_44);
  appuStack_28[0] = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(appuStack_28,'\0');
  }
  if ((2 < (int)(local_30[0] - local_40[2] & 0xfffffffeU)) && (local_40[2] != 0)) {
    FUN_004e44e0(local_40[2]);
  }
  if ((1 < local_40[0] - unaff_ESI) && (unaff_ESI != 0)) {
    FUN_004e44e0(unaff_ESI);
  }
  return unaff_EDI;
}

