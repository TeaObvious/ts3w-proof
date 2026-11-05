/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name, PC 1.67 TS3W.exe. ClipController factory used by the SACS play-node
   producer at 0x007F8DC0. With a usable animation owner (+0x24 and its +0xB0), allocate/initialize
   a ClipController and bind the request's clip reference at +0x1B0. If that reference is null,
   0x0093D68C calls 0x00571AD0 to obtain the animation manager's configured fallback CLIP;
   0x0093D694 still binds it via 0x0056A090. A missing requested clip is therefore not by itself a
   skip/no-controller branch. Allocation/owner failures and complete fallback playback timing are
   distinct and not established by this window. */

void * __thiscall AnimationComponent_CreateClipController(void *this,uint *controllerRequest)

{
  void *pvVar1;
  int *piVar2;
  
  (**(code **)(*(int *)this + 0x30))();
  if ((*(int *)((int)this + 0x24) == 0) || (*(int *)(*(int *)((int)this + 0x24) + 0xb0) == 0)) {
    return (void *)0x0;
  }
  pvVar1 = (void *)FUN_004e4500(0x600,"Animation/ClipController",0);
  if (pvVar1 == (void *)0x0) {
    pvVar1 = (void *)0x0;
  }
  else {
    pvVar1 = AnimationClipController_Construct(pvVar1,(int)this + 8,0.0);
  }
                    /* Request +0x1B0 is the clip metadata/reference member populated through
                       0x005A9510 by the SACS producer. A null member takes the configured fallback
                       lookup, then joins the same 0x0056A090 binding path as a non-null requested
                       clip. */
  piVar2 = (int *)controllerRequest[0x6c];
  if (piVar2 == (int *)0x0) {
    piVar2 = (int *)AnimationManager_GetConfiguredFallbackClip(DAT_011ce800);
  }
  AnimationClipController_BindResource(pvVar1,piVar2);
  FUN_005697a0(pvVar1,(undefined4 *)controllerRequest[0x6f]);
  FUN_00569930(pvVar1,controllerRequest);
  FUN_00569770(pvVar1,(char)controllerRequest[0x76]);
  FUN_00568640(pvVar1,*(undefined1 *)((int)controllerRequest + 0x1d9));
  if ((int *)controllerRequest[0x6e] != (int *)0x0) {
    FUN_00568770(pvVar1,(int *)controllerRequest[0x6e]);
  }
  if (*(char *)((int)controllerRequest + 0x1da) != '\0') {
    FUN_00568620(pvVar1,0);
  }
  return pvVar1;
}

