/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. Caller-cleaned one pointer word, plain RET, AL
   result only. Obtains current and successor path kind through virtual30/8C; Portal50660D52 forbids
   SimC6600B67/Portal; more vehicle/swim path cases exist. Success retains supplied reference
   via7462E0; failure releases it. Pure three-kind projection is narrower and does not reproduce
   intrusive ownership. */

undefined4 __cdecl PathLink_CanContinueToSuccessor(int *param_1)

{
  int iVar1;
  int *piVar2;
  int *in_EAX;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  bool bVar6;
  
  piVar2 = param_1;
  if (param_1 == (int *)0x0) goto LAB_0081f203;
  iVar3 = (**(code **)(*param_1 + 0x8c))();
  if (iVar3 == 0) goto LAB_0081f1e3;
  piVar4 = (int *)(**(code **)(*piVar2 + 0x30))();
  iVar3 = *piVar4;
  piVar4 = (int *)(**(code **)(*piVar2 + 0x8c))();
  piVar4 = (int *)(**(code **)(*piVar4 + 0x30))();
  iVar1 = *piVar4;
  if (iVar3 == 0x50660d52) {
    bVar6 = iVar1 == -0x399ff499;
LAB_0081f151:
    if (bVar6) goto LAB_0081f1e3;
LAB_0081f157:
    bVar6 = iVar1 == 0x50660d52;
LAB_0081f1aa:
    if (!bVar6) {
LAB_0081f1ac:
      if (((iVar1 != -0x72bc6af6) && (iVar1 != -0xff1de6e)) && (iVar1 != -0x7579c1ce)) {
LAB_0081f1c1:
        uVar5 = FUN_007462e0((int *)&param_1);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
  }
  else if (iVar3 == -0x399ff499) {
    if ((iVar1 != -0x1ea3503b) && (iVar1 != -0x16649a2b)) {
      bVar6 = iVar1 == -0x76560929;
      goto LAB_0081f1aa;
    }
  }
  else {
    if (iVar3 != -0x1ea3503b) {
      if (iVar3 == -0x65ff4834) goto LAB_0081f157;
      if (iVar3 == -0x16649a2b) {
        if (iVar1 == 0x50660d52) goto LAB_0081f1e3;
LAB_0081f1a5:
        bVar6 = iVar1 == -0x399ff499;
        goto LAB_0081f1aa;
      }
      if (iVar3 == -0x76560929) goto LAB_0081f1a5;
      if (iVar3 == -0x72bc6af6) {
        if (iVar1 == -0x72bc6af6) goto LAB_0081f1c1;
        goto LAB_0081f1e3;
      }
      goto LAB_0081f1ac;
    }
    if (iVar1 != -0x399ff499) {
      bVar6 = iVar1 == -0x1ea3503b;
      goto LAB_0081f151;
    }
  }
LAB_0081f1e3:
  in_EAX = piVar2 + 1;
  LOCK();
  iVar3 = *in_EAX;
  *in_EAX = *in_EAX + -1;
  UNLOCK();
  if (iVar3 == 1) {
    LOCK();
    *in_EAX = 1;
    UNLOCK();
    in_EAX = (int *)(**(code **)*piVar2)(1);
  }
LAB_0081f203:
  return (uint)in_EAX & 0xffffff00;
}

