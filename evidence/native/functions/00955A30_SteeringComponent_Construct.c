/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67: constructor initializes steering component and returns this. Original00955a39
   forms EDI=this+8, owner input is stored component+4 at00955a44, and00955a5b stores
   vtable0x010455a8 throughEDI. Full component vtable0x01045630 is stored at+0;
   additionalinterface+0x3c uses0x01045590. Original dword0x01045600 =0x00954660 is
   steeringinterface slot+0x58, consumed by AnimatedStairsBody_Transition0x008542e0. Therefore
   callback ECX is component+8 and its owner pointer atinterface-4 corresponds thisconstructor's
   component+4. Base steering initializer00839870 receives component+8 before specific vtable
   assignment. Initializes owned-controller list at+0x68 and locomotion/default/control fields,
   registers with global011da140, allocates0xc0 avoidance field, initializes it with0085cc40 and
   retains viaatomicrefcount when assignedcomponent+0x10c. Owner input's object-pointer type is
   inferred from callbackconsumer reading ownerGUID+8/+c; constructor simply stores itsDWORD without
   an owner AddRef visible here. This is original stair-routing interface producer, not worldtravel.
   Preserve originalbinary32 defaults rather than rounding decompilerdisplay. No
   originalbyteschanged. */

void * __thiscall SteeringComponent_Construct(void *this,void *ownerObject)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  
  *(undefined ***)this = &PTR_LAB_01044278;
  *(void **)((int)this + 4) = ownerObject;
  FUN_00839870((undefined4 *)((int)this + 8));
  uVar4 = DAT_00f998f8;
  *(undefined ***)((int)this + 0x3c) = &PTR_FUN_00fc2c0c;
  *(undefined4 *)((int)this + 8) = &PTR_LAB_010455a8;
  *(undefined ***)this = &PTR_LAB_01045630;
  *(undefined ***)((int)this + 0x3c) = &PTR_FUN_01045590;
  iVar1 = (int)this + 0x68;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined1 *)((int)this + 100) = 0;
  *(char **)((int)this + 0x70) = "Locomotion/OwnedControllerList";
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x6c) = iVar1;
  *(undefined4 *)((int)this + 0x74) = uVar4;
  *(undefined4 *)((int)this + 0x78) = 0xffffffff;
  *(undefined4 *)((int)this + 0x7c) = 0xffffffff;
  *(undefined4 *)((int)this + 0x80) = 0xffffffff;
  *(undefined4 *)((int)this + 0x84) = 0;
  *(undefined4 *)((int)this + 0x88) = 0;
  *(undefined1 *)((int)this + 0x8d) = 0;
  *(undefined1 *)((int)this + 0x8e) = 0;
  *(undefined1 *)((int)this + 0x8f) = 0;
  *(undefined1 *)((int)this + 0x90) = 0;
  *(undefined1 *)((int)this + 0x91) = 1;
  *(undefined1 *)((int)this + 0x92) = 1;
  *(undefined1 *)((int)this + 0x93) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(undefined4 *)((int)this + 0x98) = 0;
  FUN_00858f30((undefined4 *)((int)this + 0x9c));
  uVar4 = _DAT_01062bc8;
  *(undefined4 *)((int)this + 0xc0) = _DAT_01062bc8;
  *(undefined4 *)((int)this + 0xc4) = uVar4;
  *(undefined4 *)((int)this + 0xbc) = 0;
  *(undefined1 *)((int)this + 200) = 0;
  *(undefined1 *)((int)this + 0xc9) = 0;
  *(undefined1 *)((int)this + 0xca) = 0;
  *(undefined1 *)((int)this + 0xcb) = 0;
  *(char **)((int)this + 0xd8) = "Objects/SteeringComponent/DebugName";
  *(undefined **)((int)this + 0xd4) = &DAT_011c8e55;
  *(undefined1 **)((int)this + 0xcc) = &DAT_011c8e54;
  *(undefined1 **)((int)this + 0xd0) = &DAT_011c8e54;
  *(undefined1 *)((int)this + 0xdc) = 0;
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0xe8) = 0;
  *(undefined1 *)((int)this + 0xec) = 0;
  *(undefined1 *)((int)this + 0xed) = 0;
  *(undefined4 *)((int)this + 0xf0) = 0;
  *(undefined4 *)((int)this + 0xf4) = 0;
  *(undefined4 *)((int)this + 0xf8) = 0;
  *(undefined2 *)((int)this + 0xfc) = 0;
  *(undefined4 *)((int)this + 0x100) = 0;
  *(undefined1 *)((int)this + 0x104) = 0xff;
  *(undefined1 *)((int)this + 0x105) = 0xff;
  *(undefined2 *)((int)this + 0x106) = 0xffff;
  *(undefined4 *)((int)this + 0x108) = 0;
  *(undefined4 *)((int)this + 0x10c) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  FUN_0083a5d0(DAT_011da140,(int)this);
  puVar5 = (undefined4 *)FUN_004e4500(0xc0,"Objects/SteeringComponent/AvoidanceField",0);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    puVar5 = FUN_0085cc40(puVar5);
  }
  puVar3 = *(undefined4 **)((int)this + 0x10c);
  if (puVar5 != puVar3) {
    if (puVar5 != (undefined4 *)0x0) {
      LOCK();
      puVar5[1] = puVar5[1] + 1;
      UNLOCK();
    }
    *(undefined4 **)((int)this + 0x10c) = puVar5;
    if (puVar3 != (undefined4 *)0x0) {
      piVar2 = puVar3 + 1;
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
  }
  return this;
}

