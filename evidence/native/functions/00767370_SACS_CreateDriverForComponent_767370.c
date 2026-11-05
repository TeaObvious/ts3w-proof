/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete62-instruction body, ordinary valid allocation path: allocate0x14C with
   StateMachineDriver tag, call804B00, then retain through driver+8 first slot. Optional
   graph/resource argument release follows the supplied low-byte flag; nonnegative priority
   overwrites driver+38. Call94D5B0(component,driver), retain again, call802D70, obtain global
   interface and call virtual+C8(driver,0x20), then release the temporary driver+8 reference and
   return that virtual result. Registered AcquireDriver callers establish its returned handle use.
   Full manager+C8 reference ownership and802D70 effects remain open; do not infer exact
   script/table/component count distribution or add allocation-failure recovery.
   
   Analyst note (PC1.67 SACS migration contract): Selected actual obtained graph bound to newly
   created component-owned driver. Existing constructor/retain/handle publication evidence
   preserved. This is native mechanism; original managed StateMachineClient still owns gameplay
   acquisition/default/actor choices. */

undefined4 __cdecl
SACS_CreateDriverForComponent_767370(void *param_1,int *param_2,int param_3,char param_4)

{
  void *pvVar1;
  int *piVar2;
  undefined4 uVar3;
  
  pvVar1 = (void *)FUN_004e4500(0x14c,"Objects/SacsComponent/StateMachineDriver",0);
  if (pvVar1 == (void *)0x0) {
    pvVar1 = (void *)0x0;
  }
  else {
    pvVar1 = SACS_DriverConstruct_804B00(pvVar1,param_2,1);
    if (pvVar1 != (void *)0x0) {
      (*(code *)**(undefined4 **)((int)pvVar1 + 8))();
    }
  }
  if (param_4 != '\0') {
    (**(code **)(*param_2 + 4))();
  }
  if (-1 < param_3) {
    *(int *)((int)pvVar1 + 0x38) = param_3;
  }
  SACS_ComponentRetainAndStoreDriver_94D5B0(param_1,(int)pvVar1);
  (*(code *)**(undefined4 **)((int)pvVar1 + 8))();
  FUN_00802d70(pvVar1);
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar3 = (**(code **)(*piVar2 + 200))(pvVar1,0x20);
  (**(code **)(*(int *)((int)pvVar1 + 8) + 4))();
  return uVar3;
}

