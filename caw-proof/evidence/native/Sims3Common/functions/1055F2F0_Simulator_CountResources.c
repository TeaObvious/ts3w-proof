/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_CountResources. Export ordinal(s): 743.
   Entry VA: 0x1055f2f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010E4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl
Simulator_CountResources(undefined4 param_1,undefined4 param_2,undefined4 param_3,int ****param_4)

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
  
                    /* 0x55f2f0  743  Simulator_CountResources */
  local_24 = param_1;
  local_20 = param_2;
  local_1c = (int ******)param_4;
  local_18 = param_3;
  local_c = FUN_10722830();
  local_14 = (int ***)&local_14;
  iVar5 = 0;
  local_8 = 0;
  local_4 = "Scratch/SimulatorHost/CountResources/dbList";
  local_10 = local_14;
  piVar2 = (int *)FUN_108e50d0();
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

