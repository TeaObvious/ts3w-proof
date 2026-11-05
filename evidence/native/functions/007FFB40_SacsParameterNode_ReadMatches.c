/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX node, five stack words RET14, AL
   reader status. Version<0101 with count==1 delegates legacy007F5F60. Otherwise resolves leading
   packed parameter ref via00726630; nonnull retains replacement/releases prior at node+50, then
   passes remaining words to shared007FF480. Unresolved ref fails AL0. Wrapper property extraction
   is not native word parsing; full legacy/shared-map reader layouts remain bounded. */

undefined1 __thiscall
SacsParameterNode_ReadMatches
          (void *param_1,uint param_2,uint *param_3,int param_4,void *param_5,undefined4 param_6)

{
  int *piVar1;
  undefined1 uVar2;
  int *piVar3;
  
  if ((param_2 < 0x101) && (param_4 == 1)) {
    uVar2 = FUN_007f5f60(param_2,param_3,1,param_5,(char)param_6);
    return uVar2;
  }
  piVar3 = RcolContext_ResolveOneBasedBlock(param_5,*param_3);
  if (piVar3 != (int *)0x0) {
    piVar1 = *(int **)((int)param_1 + 0x50);
    if (piVar3 != piVar1) {
      (**(code **)*piVar3)();
      *(int **)((int)param_1 + 0x50) = piVar3;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    uVar2 = FUN_007ff480(param_1,param_2,param_3 + 1,
                         param_4 - ((int)(param_3 + 1) - (int)param_3 >> 2),param_5,param_6);
    return uVar2;
  }
  return 0;
}

