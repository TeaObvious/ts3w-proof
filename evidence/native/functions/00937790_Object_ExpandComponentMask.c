/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Repeatedly visits originally absent descriptor bits and
   invokes optional descriptor+18 dependency predicates with current mask. Then resource-property
   hashes add component masks, including Animation for8415534a. This pass is not proven a recursive
   fixed-point closure. */

uint __cdecl Object_ExpandComponentMask(uint baseMask,void *objectResource)

{
  int iVar1;
  char cVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar1 = DAT_011dd350;
  for (uVar7 = (1 << ((char)*(undefined4 *)(DAT_011dd350 + 0x11c8) - 1U & 0x1f)) * 2 - 1U &
               ~baseMask; uVar7 != 0; uVar7 = uVar7 & uVar7 - 1) {
    uVar6 = -uVar7 & uVar7;
    if (uVar6 == 0) {
      iVar5 = 0x20;
    }
    else {
      iVar5 = 1;
      uVar3 = uVar6;
      if ((uVar6 & 0xffff) == 0) {
        iVar5 = 0x11;
        uVar3 = uVar6 >> 0x10;
      }
      if ((char)uVar3 == '\0') {
        iVar5 = iVar5 + 8;
        uVar3 = uVar3 >> 8;
      }
      if ((uVar3 & 0xf) == 0) {
        iVar5 = iVar5 + 4;
        uVar3 = uVar3 >> 4;
      }
      if ((uVar3 & 3) == 0) {
        iVar5 = iVar5 + 2;
        uVar3 = uVar3 >> 2;
      }
      iVar5 = iVar5 - (uVar3 & 1);
    }
    if (iVar5 < *(int *)(iVar1 + 0x11c8)) {
      iVar5 = *(int *)(iVar1 + 0x1044 + iVar5 * 4);
    }
    else {
      iVar5 = 0;
    }
    if ((*(code **)(iVar5 + 0x18) != (code *)0x0) &&
       (cVar2 = (**(code **)(iVar5 + 0x18))(baseMask), cVar2 != '\0')) {
      baseMask = baseMask | uVar6;
    }
  }
  if (objectResource != (void *)0x0) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    uVar4 = FUN_00939690(objectResource,0x9e2a3b0e,&local_10);
    if ((char)uVar4 != '\0') {
      baseMask = baseMask | DAT_011ea114;
    }
    uVar4 = FUN_00939690(objectResource,0x8415534a,&local_10);
    if ((char)uVar4 != '\0') {
      baseMask = baseMask | DAT_011dd484;
    }
    uVar4 = FUN_00939690(objectResource,0x9cc7e9b2,&local_10);
    if ((char)uVar4 != '\0') {
      baseMask = baseMask | DAT_011e9fc0;
    }
    uVar4 = FUN_00939690(objectResource,0xff0f8907,&local_10);
    if ((char)uVar4 != '\0') {
      baseMask = baseMask | DAT_011e9fa8;
    }
    uVar4 = FUN_00939690(objectResource,0x389ced06,&local_10);
    if ((char)uVar4 != '\0') {
      baseMask = baseMask | DAT_011e9fa8;
    }
  }
  return baseMask;
}

