/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Routing-system height adapter: null terrain/lot backend+0x964
   returns x87 zero. Last flag selects00c6a380 vs00c6a090; caller supplies signed integer level and
   two boolean choices. This is height selection, not path planner. */

float10 __thiscall
RoutingSystem_QueryHeightForLevel
          (void *param_1,float param_2,float param_3,int param_4,char param_5,char param_6)

{
  void *pvVar1;
  float10 fVar2;
  
  pvVar1 = *(void **)((int)param_1 + 0x964);
  if (pvVar1 == (void *)0x0) {
    return (float10)0;
  }
  if (param_6 != '\0') {
    fVar2 = FUN_00c6a380(pvVar1,param_2,param_3,param_4,param_5,'\x01',(char *)0x0,(undefined1 *)0x0
                         ,(char *)0x0,(char *)0x0,(undefined1 *)0x0,'\x01');
    return fVar2;
  }
  fVar2 = FUN_00c6a090(pvVar1,param_2,param_3,param_4,'\x01','\0',(undefined1 *)0x0,
                       (undefined1 *)0x0,'\0','\x01');
  return fVar2;
}

