/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Four original GUID DWORDs plus object pointer, plainRET/caller
   cleanup. Recursively visit vector18/1C, query object+8 interface07A90300, call returned interface
   virtual+8 with all four DWORDs, then recursively visit vector28/2C. Inferred indirect-query ABI
   produces unaff_retaddr in C; physical pushes govern. */

void __cdecl
Undoable_VisitObjectReplacementTree
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,void *param_5
          )

{
  void *pvVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  undefined4 unaff_retaddr;
  
  if (param_5 != (void *)0x0) {
    uVar3 = 0;
    uVar4 = *(int *)((int)param_5 + 0x1c) - *(int *)((int)param_5 + 0x18) >> 2;
    if (uVar4 != 0) {
      do {
        pvVar1 = (void *)FUN_00d1aa20(param_5,uVar3);
        Undoable_VisitObjectReplacementTree(param_1,param_2,param_3,param_4,pvVar1);
        uVar3 = uVar3 + 1;
      } while (uVar3 < uVar4);
    }
    piVar2 = (int *)(**(code **)(*(int *)((int)param_5 + 8) + 4))(0x7a90300);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))(unaff_retaddr,param_1,param_2,param_4);
    }
    uVar4 = 0;
    uVar3 = *(int *)((int)param_5 + 0x2c) - *(int *)((int)param_5 + 0x28) >> 2;
    if (uVar3 != 0) {
      do {
        pvVar1 = (void *)FUN_00d1aa40(param_5,uVar4);
        Undoable_VisitObjectReplacementTree(unaff_retaddr,param_1,param_2,param_4,pvVar1);
        uVar4 = uVar4 + 1;
      } while (uVar4 < uVar3);
    }
  }
  return;
}

