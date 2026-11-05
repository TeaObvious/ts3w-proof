/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. this points to component+8. Calls
   full component vtable+0x30 EnsureActiveRuntime, checks incoming controller, runtime+0x24 and
   track manager runtime+0xb0. Registers manager as controller listener, finds/creates per-track
   SequenceController and retains it. Mode1=replace pending/queue00567c40; mode2=replace
   active00567db0; other mode=append00567070. Returns low AL only, including mode1 AL0 for queued
   path; bridge callers discard it. */

bool __thiscall
AnimationComponentInterface_AttachTrackController
          (void *this,uint track,int *controller,uint mode,float blendIn,float blendOut,bool flag1,
          uint syncToken,bool syncFlag,bool flag8)

{
  int iVar1;
  int *piVar2;
  int *listener;
  undefined4 uVar3;
  void *this_00;
  undefined3 in_stack_00000019;
  undefined3 in_stack_00000025;
  char cVar4;
  char cVar5;
  
  (**(code **)(*(int *)((int)this + -8) + 0x30))();
  piVar2 = controller;
  if (((controller != (int *)0x0) && (iVar1 = *(int *)((int)this + 0x1c), iVar1 != 0)) &&
     (*(int *)(iVar1 + 0xb0) != 0)) {
    if (iVar1 == 0) {
      listener = (int *)0x0;
    }
    else {
      listener = *(int **)(iVar1 + 0xb0);
    }
    AnimationController_RegisterListener(controller + 3,listener,-1);
    if (*(int *)((int)this + 0x1c) == 0) {
      this_00 = (void *)0x0;
    }
    else {
      this_00 = *(void **)(*(int *)((int)this + 0x1c) + 0xb0);
    }
    controller = AnimationTrackMap_GetSequence(this_00,track);
    if (controller != (int *)0x0) {
      controller[1] = controller[1] + 1;
      cVar4 = (char)_flag1;
      cVar5 = (char)_flag8;
      if (mode == 1) {
        uVar3 = AnimationSequenceController_ReplacePendingOrQueue
                          (controller,piVar2,(int)blendIn,(int)blendOut,cVar4,syncToken,
                           (uint)(syncFlag != false),cVar5);
        FUN_00565d20((int *)&controller);
        return SUB41(uVar3,0);
      }
      if (mode != 2) {
        uVar3 = FUN_00567070(controller,piVar2,(int)blendIn,(int)blendOut,cVar4,syncToken,
                             (uint)(syncFlag != false),cVar5);
        FUN_00565d20((int *)&controller);
        return SUB41(uVar3,0);
      }
      uVar3 = AnimationSequenceController_ReplaceCurrent
                        (controller,piVar2,blendIn,blendOut,cVar4,cVar5);
      FUN_00565d20((int *)&controller);
      return SUB41(uVar3,0);
    }
  }
  return false;
}

