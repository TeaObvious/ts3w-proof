/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Queued demotion callback iterates object vector+14..18.
   Dispatches ObjectEvents event0xc when force or00624bc0(lot) or !00b07080(object); other objects
   are retained. Does not directly destroy every object or clear lot pointers. */

void __thiscall Lot_DispatchDetailDemotionToObjects(void *this,uchar force)

{
  undefined4 *puVar1;
  void *object;
  undefined4 uVar2;
  undefined4 *puVar3;
  
  puVar1 = *(undefined4 **)((int)this + 0x18);
  for (puVar3 = *(undefined4 **)((int)this + 0x14); puVar3 != puVar1; puVar3 = puVar3 + 1) {
    object = (void *)*puVar3;
    if (((force != '\0') || (uVar2 = FUN_00624bc0((int)this), (char)uVar2 != '\0')) ||
       (uVar2 = FUN_00b07080((int)object), (char)uVar2 == '\0')) {
      ObjectEvents_Dispatch(0xc,object,(void *)0x0);
    }
  }
  return;
}

