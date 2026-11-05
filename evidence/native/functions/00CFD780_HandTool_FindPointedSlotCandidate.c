/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX hand tool plus seven stack DWORDs, RET1Ch; only AL success is established. Resets
   the collector with actual held native pointer and global011EE7B8 mode byte, chooses direct
   picked-host versus nearby-host candidate production through CCA4D0/CCA840, then CCB570 selects
   the first validated result. Outputs native host pointer, slot INDEX, distance and yaw; broader
   geometry/managed callback equivalence is not inferred. */

uint __thiscall
HandTool_FindPointedSlotCandidate
          (void *this,int *param_1,float *param_2,float param_3,uint *param_4,uint *param_5,
          uint *param_6,uint *param_7)

{
  void *pvVar1;
  char cVar2;
  uint in_EAX;
  int iVar3;
  void *pvVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  float local_20 [7];
  
  if (*(char *)((int)this + 0x100) != '\0') {
LAB_00cfd926:
    return in_EAX & 0xffffff00;
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    in_EAX = *(uint *)((int)this + 0x5c);
  }
  else {
    in_EAX = *(uint *)((int)this + 0x60);
  }
  if ((in_EAX == 0) || (pvVar1 = *(void **)(in_EAX + 0x58), pvVar1 == (void *)0x0))
  goto LAB_00cfd926;
  FUN_00ad77d0((int)this + 0x270);
  in_EAX = DAT_011ea0f8;
  if (((*(uint *)((int)pvVar1 + 0x2c) & DAT_011ea0f8) == 0) ||
     (*(void **)((int)this + 0x1c4) == (void *)0x0)) goto LAB_00cfd926;
  SlotValidationCache_BeginHold(*(void **)((int)this + 0x1c4),(int)pvVar1,DAT_011ee7b8);
  iVar3 = FUN_00cef500();
  iVar3 = *(int *)(iVar3 + 0x154);
  pvVar4 = FUN_00ccf730(this,local_20,'\x01','\0');
  if (pvVar4 == pvVar1) {
    pvVar4 = (void *)0x0;
LAB_00cfd823:
    if (param_1 != (int *)0x0) {
      uVar5 = FUN_00b01090((int)pvVar1);
      if ((char)uVar5 != '\0') {
        uVar5 = Object_HasSteeringWithoutSim((int)pvVar1);
        if ((char)uVar5 != '\0') {
          pvVar4 = FUN_00cfbb60(param_1,param_2,local_20,pvVar1);
        }
      }
    }
LAB_00cfd85a:
    if (((pvVar4 != (void *)0x0) && (pvVar4 != pvVar1)) &&
       ((*(uint *)((int)pvVar4 + 0x2c) & DAT_011ea0f8) != 0)) {
      cVar2 = ObjectIntersection_InvokeHandToolAllowCallback
                        (*(void **)((int)this + 0xc),*(undefined4 *)((int)pvVar1 + 8),
                         *(undefined4 *)((int)pvVar1 + 0xc),*(undefined4 *)((int)pvVar4 + 8),
                         *(undefined4 *)((int)pvVar4 + 0xc),param_2,param_3);
      if (cVar2 == '\0') {
        SlotCandidates_CollectFromHost(*(void **)((int)this + 0x1c4),pvVar4,local_20,0,DAT_00fab220)
        ;
        goto LAB_00cfd8fd;
      }
    }
  }
  else {
    if (pvVar4 == (void *)0x0) goto LAB_00cfd823;
    iVar6 = FUN_005805e0(pvVar4);
    if (iVar6 == 0) goto LAB_00cfd85a;
    iVar6 = FUN_00950290(iVar6);
    if (iVar6 != 0) goto LAB_00cfd85a;
  }
  FUN_00cca840(*(void **)((int)this + 0x1c4),param_1,param_2,iVar3,0);
LAB_00cfd8fd:
  uVar7 = SlotCandidates_SelectFirstValidated
                    (*(void **)((int)this + 0x1c4),param_4,param_5,param_6,param_7,
                     (void *)((int)this + 0x270));
  return uVar7;
}

