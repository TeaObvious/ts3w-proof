/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. ECX new footprint;
   three stackslots RET 0x0C:lotOwner,level low byte,kind32 low byte. Return EAX same footprint
   pointer. Polygon base 80EB50(1,kind!=1F), install vtable FECD98 and secondary FECD70, store kind
   +0x35 and level +0x36,retain/release lot owner at +0x40. Same concrete class handles kind 3 and
   kind 21; constructor does not assign a rendering Foundation role. */

void * __thiscall LotFloorFootprint_Construct(void *this,void *lotOwner,byte level,int kind)

{
  int *piVar1;
  
  FUN_0080eb50(this,1,kind != 0x1f);
  *(undefined ***)this = &PTR_FUN_00fecd98;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fecd70;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(char *)((int)this + 0x35) = (char)kind;
  *(byte *)((int)this + 0x36) = level;
  piVar1 = *(int **)((int)this + 0x40);
  if (lotOwner != piVar1) {
    if (lotOwner != (void *)0x0) {
      (*(code *)**(undefined4 **)lotOwner)();
    }
    *(void **)((int)this + 0x40) = lotOwner;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  return this;
}

