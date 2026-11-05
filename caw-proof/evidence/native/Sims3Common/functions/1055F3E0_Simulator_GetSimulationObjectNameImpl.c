/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_GetSimulationObjectNameImpl. Export
   ordinal(s): 756. Entry VA: 0x1055f3e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010F0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 Simulator_GetSimulationObjectNameImpl(void)

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
  
                    /* 0x55f3e0  756  Simulator_GetSimulationObjectNameImpl */
  FUN_1055b120();
  pcVar1 = (char *)FUN_105cbf00();
  if (pcVar1 == (char *)0x0) {
    pcVar1 = "Key not found";
  }
  local_40[0] = 0;
  local_40[1] = 0;
  local_40[2] = 0;
  local_34 = "Scripting/SimulatorHost";
  FUN_1006f780(local_40,pcVar1);
  FUN_10926ef0(local_30,local_40);
  local_20[0] = &PTR_FUN_10aca5b4;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_10928b90(local_20,0x13,9,local_30,0x10,1);
  local_44 = 0;
  piVar2 = (int *)FUN_1055b120();
  (**(code **)(*piVar2 + 0x50))(local_20,&local_44);
  appuStack_28[0] = &PTR_FUN_10aca5b4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_10928a90(appuStack_28,'\0');
  }
  if ((2 < (int)(local_30[0] - local_40[2] & 0xfffffffeU)) && (local_40[2] != 0)) {
    FUN_10918e90(local_40[2]);
  }
  if ((1 < local_40[0] - unaff_ESI) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return unaff_EDI;
}

