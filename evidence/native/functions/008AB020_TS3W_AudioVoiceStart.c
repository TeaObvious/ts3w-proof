/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Reviewed PC 1.67 native voice start. Property 0x98AC8996 supplies authored fade-in duration at
   voice +0xA8C. Initialize the embedded envelope (voice +0xA88) enabled, elapsed=0, stage=1. The
   property-read ABI is imperfectly decompiled: verify the stack temporary against
   0x008AB149..0x008AB17E. */

uint __thiscall TS3W_AudioVoiceStart(void *this,undefined4 param_1,int param_2)

{
  char cVar1;
  uint uVar2;
  undefined4 uVar3;
  int *piVar4;
  float unaff_ESI;
  undefined8 uStack_1c;

  (**(code **)(*(int *)this + 100))(param_1);
  uVar2 = *(uint *)((int)this + 0xadc);
  if ((uVar2 & 0x20) != 0) {
LAB_008ab247:
    return CONCAT31((int3)(uVar2 >> 8),1);
  }
  if (-1 < (char)uVar2) {
    if (*(char *)((int)this + 0xaf) != '\0') {
      uVar2 = (**(code **)(*(int *)this + 0x20))(0xffffffff,0);
      if ((char)uVar2 != '\0') goto LAB_008ab099;
    }
    if (((*(byte *)((int)this + 0xd0) & 8) != 0) && (5.0 < *(float *)((int)this + 0x330))) {
      uVar3 = FUN_008aa980((int)this);
      if ((char)uVar3 == '\0') {
        uVar2 = (**(code **)(*(int *)this + 0x98))(4,1);
        goto LAB_008ab099;
      }
    }
    if (*(int *)((int)this + 0x58) == 0) {
      cVar1 = (**(code **)(*(int *)this + 0x7c))();
      if (cVar1 == '\0') goto LAB_008ab0b9;
      if (param_2 != 0) {
        (**(code **)(**(int **)((int)this + 0x58) + 0x44))(param_2);
      }
      if ((*(uint *)((int)this + 0xadc) & 0x40000) != 0) {
        (**(code **)(**(int **)((int)this + 0x58) + 0x34))(0x4f8f9be,0x3f800000,1);
      }
      cVar1 = (**(code **)(**(int **)((int)this + 0x58) + 0x10))();
      if (cVar1 == '\0') {
        uVar2 = (**(code **)(*(int *)this + 0x98))(4,0);
        return uVar2 & 0xffffff00;
      }
    }
    uVar3 = *(undefined4 *)((int)this + 0x40);
    (**(code **)(**(int **)((int)this + 0x58) + 0x2c))();
                    /* Read authored fadein property 0x98AC8996; its stack output becomes envelope
                       duration +0xA8C. */
    cVar1 = (**(code **)(*(int *)this + 0xcc))(0x98ac8996,&stack0xffffffe0);
    if (cVar1 != '\0') {
      *(undefined4 *)((int)this + 0xa8c) = uVar3;
    }
    *(undefined1 *)((int)this + 0xaa4) = 1;
    *(undefined4 *)((int)this + 0xaa8) = 0;
    *(undefined4 *)((int)this + 0xaa0) = 1;
    (**(code **)(**(int **)((int)this + 0x58) + 0x4c))(0);
    cVar1 = (**(code **)(*(int *)this + 0x20))(0xffffffff,1);
    if (cVar1 != '\0') {
      (**(code **)(**(int **)((int)this + 0x58) + 0x1c))(1);
    }
    (**(code **)(*(int *)this + 0x90))();
    uVar2 = (**(code **)(*(int *)this + 0xb4))(0,0,1);
    if ((*(byte *)((int)this + 0xadc) & 0x80) == 0) {
      cVar1 = (**(code **)(**(int **)((int)this + 0x58) + 0x14))(*(undefined8 *)((int)this + 0xac0))
      ;
      if (cVar1 == '\0') {
LAB_008ab0b9:
        uVar2 = (**(code **)(*(int *)this + 0x98))(4,0);
        return uVar2 & 0xffffff00;
      }
      cVar1 = (**(code **)(**(int **)((int)this + 0x58) + 0x38))(0xba03d0cd,(int)&uStack_1c + 4);
      if (cVar1 != '\0') {
        uStack_1c = (longlong)ROUND(unaff_ESI);
        *(undefined4 *)((int)this + 0xad0) = (undefined4)uStack_1c;
      }
      *(undefined4 *)((int)this + 0x330) = 0;
      *(uint *)((int)this + 0xadc) = *(uint *)((int)this + 0xadc) | 0x20;
      piVar4 = (int *)FUN_008afe00();
      uVar2 = (**(code **)(*piVar4 + 300))();
      goto LAB_008ab247;
    }
  }
LAB_008ab099:
  return uVar2 & 0xffffff00;
}

