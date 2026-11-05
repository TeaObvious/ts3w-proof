/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161f98 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_CountResources [assembly=ScriptCore token=0x06000543; instanceId:
   System.UInt64, groupId: System.UInt32, typeId: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl
ScriptCore.Simulator::Simulator_CountResources
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int ****param_4)

{
  int *******pppppppiVar1;
  int *piVar2;
  int iVar3;
  int *******pppppppiVar4;
  int iVar5;
  undefined4 local_24;
  undefined4 local_20;
  int ******local_1c;
  undefined4 local_18;
  int ***local_14;
  int ***local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_24 = param_1;
  local_20 = param_2;
  local_1c = (int ******)param_4;
  local_18 = param_3;
  local_c = FUN_0092f9c0();
  local_14 = (int ***)&local_14;
  iVar5 = 0;
  local_8 = 0;
  local_4 = "Scratch/SimulatorHost/CountResources/dbList";
  local_10 = local_14;
  piVar2 = (int *)FUN_004afe80();
  iVar3 = (**(code **)(*piVar2 + 0x48))(&local_14,&local_24);
  if (iVar3 == 0) {
    pppppppiVar4 = (int *******)local_1c;
    if ((int *******)local_1c != &local_1c) {
      do {
        pppppppiVar1 = (int *******)*pppppppiVar4;
        (*(code *)(*local_14)[3])(pppppppiVar4,0xc);
        pppppppiVar4 = pppppppiVar1;
      } while (pppppppiVar1 != &local_1c);
    }
    return 0;
  }
  pppppppiVar4 = (int *******)local_1c;
  if ((int *******)local_1c != &local_1c) {
    do {
      pppppppiVar4 = (int *******)*pppppppiVar4;
      iVar5 = iVar5 + 1;
    } while (pppppppiVar4 != &local_1c);
  }
  pppppppiVar4 = (int *******)local_1c;
  if ((int *******)local_1c != &local_1c) {
    do {
      pppppppiVar1 = (int *******)*pppppppiVar4;
      (*(code *)(*local_14)[3])(pppppppiVar4,0xc);
      pppppppiVar4 = pppppppiVar1;
    } while (pppppppiVar1 != &local_1c);
  }
  return iVar5;
}

