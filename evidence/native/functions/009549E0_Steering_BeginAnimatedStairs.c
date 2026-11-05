/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Clears prior steering body/state; eligible animated
   actor allocates0x160 Locomotion/AnimatedSimStairsBody and initializes request. Successful body
   start returnsuint0; unsuitable/failure fallback applies endpoint orientation/position and
   returnsuint2(Skip). Completion normally follows animation events, but body Begin can invoke
   completion synchronously on missing-clip fallback; callback delivery timing remains a separate
   host contract. */

uint __thiscall Steering_BeginAnimatedStairs(void *this,void *request)

{
  int *this_00;
  int *piVar1;
  char cVar2;
  bool bVar3;
  void *pvVar4;
  float *pfVar5;
  void *pvVar6;
  undefined4 auStack_20 [7];
  
  FUN_00953720((int)this);
  this_00 = (int *)((int)this + 8);
  FUN_00839980(this_00,(undefined4 *)0x0);
  piVar1 = *(int **)((int)this + 0x98);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x98) = 0;
    (**(code **)(*piVar1 + 0x14))();
  }
  if ((*(void **)((int)this + 4) == (void *)0x0) ||
     (pvVar4 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea158),
     pvVar4 == (void *)0x0)) {
LAB_00954a48:
    cVar2 = FUN_00952c70(this,(float *)((int)request + 0x30));
    if ((cVar2 == '\0') &&
       (cVar2 = FUN_00952c70(this,(float *)((int)request + 0x50)), cVar2 == '\0'))
    goto LAB_00954b03;
  }
  else {
    pfVar5 = TransformComponent_GetWorldPosition(pvVar4,auStack_20);
    cVar2 = FUN_00952c70(this,pfVar5);
    if (cVar2 == '\0') goto LAB_00954a48;
  }
  if (*(int *)((int)this + 0x94) == 1) {
    pvVar4 = (void *)FUN_004e4500(0x160,"Locomotion/AnimatedSimStairsBody",0);
    if (pvVar4 == (void *)0x0) {
      pvVar4 = (void *)0x0;
    }
    else if ((*(void **)((int)this + 4) == (void *)0x0) ||
            (pvVar6 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011dd484),
            pvVar6 == (void *)0x0)) {
      pvVar4 = AnimatedStairsBody_Initialize(pvVar4,this_00,(void *)0x0);
    }
    else {
      pvVar4 = AnimatedStairsBody_Initialize(pvVar4,this_00,(void *)((int)pvVar6 + 8));
    }
    FUN_008397e0(this_00,(int)pvVar4);
    bVar3 = AnimatedStairsBody_Begin(pvVar4,request);
    if (bVar3) {
      return 0;
    }
    FUN_00953720((int)this);
  }
LAB_00954b03:
  (**(code **)(*this_00 + 0x30))((int)request + 0x50,(int)request + 0x60);
  return 2;
}

