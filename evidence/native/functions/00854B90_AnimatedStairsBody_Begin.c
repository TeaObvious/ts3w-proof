/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Copies native request, looks up stair clips by
   style/age/gender/species/direction. Directions2/3 fall back to0 if clips unavailable. Plants
   actor at start and selects initial internal state1/2/3 from request/options. Boolean success
   inAL, not fullEAX. */

bool __thiscall AnimatedStairsBody_Begin(void *this,void *request)

{
  void *this_00;
  char cVar1;
  int *piVar2;
  int iVar3;
  float afStack_44 [3];
  float fStack_38;
  float afStack_34 [5];
  undefined1 local_20 [28];
  
  FUN_00853610((void *)((int)this + 0xa0),request);
  this_00 = DAT_011da140;
  cVar1 = FUN_00844110(DAT_011da140,*(uint *)((int)this + 0x110),*(uint *)((int)this + 0x114),
                       *(uint *)((int)this + 0x118),*(int *)((int)this + 0x11c),
                       *(int *)((int)this + 0xb0),(void *)((int)this + 0x1c));
  if (cVar1 == '\0') {
    if ((*(int *)((int)this + 0xb0) != 2) && (*(int *)((int)this + 0xb0) != 3)) {
      return false;
    }
    *(undefined4 *)((int)this + 0xb0) = 0;
    cVar1 = FUN_00844110(this_00,*(uint *)((int)this + 0x110),*(uint *)((int)this + 0x114),
                         *(uint *)((int)this + 0x118),*(int *)((int)this + 0x11c),0,
                         (void *)((int)this + 0x1c));
    if (cVar1 == '\0') {
      return false;
    }
  }
  (**(code **)(**(int **)((int)this + 0x14) + 0x1c))(local_20);
  afStack_44[0] = *(float *)((int)this + 0xf0) - *(float *)((int)this + 0xd0);
  afStack_44[2] = *(float *)((int)this + 0xf8) - *(float *)((int)this + 0xd8);
  fStack_38 = *(float *)((int)this + 0xfc) - *(float *)((int)this + 0xdc);
  afStack_44[1] = 0.0;
  FUN_0085fb10(afStack_44,afStack_34);
  (**(code **)(**(int **)((int)this + 0x14) + 0x30))((int)this + 0xd0,afStack_34);
  *(int *)((int)this + 8) = *(int *)((int)this + 8) + 1;
  iVar3 = *(int *)((int)this + 0xc4);
  *(int *)((int)this + 0x150) = iVar3;
  if ((iVar3 < 2) && (*(int *)((int)this + 100) != 0)) {
    iVar3 = 2;
    goto LAB_00854cec;
  }
  if ((iVar3 == 2) && (*(int *)((int)this + 0x68) != 0)) {
    *(undefined4 *)((int)this + 0x150) = 1;
    iVar3 = 3;
    goto LAB_00854cec;
  }
  if (*(char *)((int)this + 0x84) == '\0') {
    if (*(char *)((int)this + 0x83) != '\0') {
      iVar3 = iVar3 + -1;
      goto LAB_00854ce5;
    }
  }
  else {
    iVar3 = iVar3 + -2;
LAB_00854ce5:
    *(int *)((int)this + 0x150) = iVar3;
  }
  iVar3 = 1;
LAB_00854cec:
  AnimatedStairsBody_Transition(this,iVar3);
  if ((*(int **)((int)this + 0x14c) != (int *)0x0) &&
     (piVar2 = (int *)(**(code **)(**(int **)((int)this + 0x14c) + 4))(0xf4c95ed2),
     piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 8))(0x3f800000);
  }
  iVar3 = *(int *)((int)this + 8) + -1;
  *(int *)((int)this + 8) = iVar3;
  if (iVar3 == 0) {
    *(undefined4 *)((int)this + 8) = 1;
    (*(code *)**(undefined4 **)((int)this + 4))(1);
  }
  return true;
}

