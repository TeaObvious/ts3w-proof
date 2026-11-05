/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original instruction review. ECX renderdriver. Loads globalfloat011CEDA0, passes
   same value to00693B90 and007010D0 renderer transition advance; remaining updates retained.
   Writer, units, simulation-speed/pause relationship of this global remain unresolved; no
   real-clock claim. */

void __thiscall RenderDriver_UpdateObjectVisuals(void *this)

{
  void *pvVar1;
  int iVar2;
  float delta;
  
  if ((DAT_011cfcc8 != 0) && (*(char *)(DAT_011cfcc8 + 0x8d) != '\0')) {
    FUN_006e3960((int)this + 0x10);
  }
  delta = _DAT_011ceda0;
  FUN_00693b90((void *)((int)this + 0x25c),_DAT_011ceda0);
  pvVar1 = (void *)FUN_006fdbe0();
  Renderer_AdvanceObjectVisualTransitions(pvVar1,delta);
  iVar2 = FUN_006e8170();
  if ((iVar2 != 0) && (DAT_011d2530 != (void *)0x0)) {
    FUN_006e2db0(DAT_011d2530,*(char *)(iVar2 + 0x270));
  }
  pvVar1 = (void *)FUN_006e8170();
  if (pvVar1 != (void *)0x0) {
    FUN_006e8330((int)pvVar1);
    FUN_006f3d20(pvVar1);
  }
  FUN_006e3160((void *)((int)this + 0x10),'\0');
  return;
}

