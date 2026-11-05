/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX drawable; material pointer, low-byte replaceBaseMaterial,
   parameter-context pointer, RET0C, void. Optional base+28 retain-before-release; effective+2C
   changes or context stamp+10 mismatch rebuild parameter binding through690DE0, update attachment
   references and retain/release material. No geometry-state selection or base draw-range rewrite.
   Inferred pointer/structure types remain opaque. */

void __thiscall
Drawable_RebindEffectiveMaterial
          (void *this,void *material,uchar replaceBaseMaterial,void *parameterContext)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  if ((replaceBaseMaterial != '\0') && (piVar2 = *(int **)((int)this + 0x28), material != piVar2)) {
    if (material != (void *)0x0) {
      (*(code *)**(undefined4 **)material)();
    }
    *(void **)((int)this + 0x28) = material;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  if ((material != *(void **)((int)this + 0x2c)) ||
     ((parameterContext != (void *)0x0 &&
      (*(int *)((int)this + 200) != *(int *)((int)parameterContext + 0x10))))) {
    puVar3 = *(undefined4 **)((int)this + 0x24);
    if (puVar3 != (undefined4 *)0x0) {
      piVar2 = puVar3 + 1;
      *(undefined4 *)((int)this + 0x24) = 0;
      LOCK();
      iVar1 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
    if (material != (void *)0x0) {
      if (DAT_011d2530 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = FUN_006e0d10(DAT_011d2530);
      }
      FUN_00690de0(this,material,uVar4,parameterContext);
      (*(code *)**(undefined4 **)material)();
      if (*(int *)this != 0) {
        FUN_006dea80((void *)(*(int *)this + 0x28),(int)material + 0x28);
      }
    }
    if (*(int *)((int)this + 0x2c) != 0) {
      if (*(int *)this != 0) {
        FUN_006deb00((void *)(*(int *)this + 0x28),*(int *)((int)this + 0x2c) + 0x28);
      }
      (**(code **)(**(int **)((int)this + 0x2c) + 4))();
    }
    *(void **)((int)this + 0x2c) = material;
    if (material != (void *)0x0) {
      *(byte *)((int)this + 0xc1) =
           *(byte *)((int)this + 0xc1) ^
           ((-1 < *(int *)((int)material + 0x74)) << 5 ^ *(byte *)((int)this + 0xc1)) & 0x20;
    }
  }
  return;
}

