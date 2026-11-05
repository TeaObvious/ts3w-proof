/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0050eb00. Physical ECX DrawContext/plainRET. Obtain actual builder result;
   immediatebyte94 routes retained object to selected renderer with begin/end switching, otherwise
   append command to native list+58 retaining draw object. Clears94. Original renderer virtuals,
   allocation and native GPU/resource completion remain their providers; no managed resource
   ownership inferred. */

void __fastcall UiDrawContext_FlushCommands(int param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)FUN_00505d70(param_1 + 0x60);
  if (piVar1 != (int *)0x0) {
    if (*(char *)(param_1 + 0x94) != '\0') {
      (**(code **)*piVar1)();
      piVar2 = *(int **)(param_1 + 0x54);
      if (*(int **)(param_1 + 0x40) != piVar2) {
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 0x18))();
        }
        (**(code **)(**(int **)(param_1 + 0x40) + 0x10))();
      }
      (**(code **)(**(int **)(param_1 + 0x40) + 0x14))(param_1,piVar1);
      if (*(int **)(param_1 + 0x40) != *(int **)(param_1 + 0x54)) {
        (**(code **)(**(int **)(param_1 + 0x40) + 0x18))();
        if (*(int **)(param_1 + 0x54) != (int *)0x0) {
          (**(code **)(**(int **)(param_1 + 0x54) + 0x10))();
        }
      }
      (**(code **)(*piVar1 + 4))();
      *(undefined1 *)(param_1 + 0x94) = 0;
      return;
    }
    piVar2 = (int *)FUN_0050a160();
    (**(code **)*piVar1)();
    piVar2[2] = (int)piVar1;
    piVar2[3] = *(int *)(param_1 + 0x40);
    piVar2[1] = *(int *)(param_1 + 0x5c);
    *piVar2 = param_1 + 0x58;
    *(int **)(param_1 + 0x5c) = piVar2;
    *(int **)piVar2[1] = piVar2;
  }
  *(undefined1 *)(param_1 + 0x94) = 0;
  return;
}

