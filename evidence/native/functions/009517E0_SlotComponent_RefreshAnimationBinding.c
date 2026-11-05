/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, ONE UNUSED stackword RET4; ALalways1. Corrected
   missing stackparameter and falseDWORD result. If owning object+4 exists, get Animation component
   via registeredmask11DD484 and invoke its interface atcomponent+8 virtual20 withECX(interface).
   Missing yieldsbinding0. If currentbinding40==0 AND wrapping totalfivecounts+dynamiccount==0,
   calls950EC0; thenstores newlyobtainedbinding40 regardlessresourceoutcome. Whole Animation
   bindingword semantics separate. */

bool __thiscall SlotComponent_RefreshAnimationBinding(void *this,uint unusedArgument)

{
  void *pvVar1;
  uint uVar2;
  
  if (*(void **)((int)this + 4) != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011dd484);
    if (pvVar1 != (void *)0x0) {
      uVar2 = (**(code **)(*(int *)((int)pvVar1 + 8) + 0x20))((void *)((int)pvVar1 + 8));
      goto LAB_0095180b;
    }
  }
  uVar2 = 0;
LAB_0095180b:
  if ((*(int *)((int)this + 0x40) == 0) &&
     ((*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2) + *(int *)((int)this + 0x28) +
      *(int *)((int)this + 0x20) + *(int *)((int)this + 0x18) + *(int *)((int)this + 0x10) +
      *(int *)((int)this + 8) == 0)) {
    SlotComponent_TryResourceAndComplete(this);
  }
  *(uint *)((int)this + 0x40) = uVar2;
                    /* RET4 proves ignored stackword exists even though original decompiler omitted
                       it. */
  return true;
}

