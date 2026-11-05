/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 driver core request. Special state hash 0x66295BC8 resets driver and returns zero. Actor
   zero recurses over placed walkers with the same callback pointer. Missing actor returns -5;
   missing graph/state or Return pointer returns -3. After successful submission, driver error byte
   +0x145 can change result to -12. Registered RequestState passes zero for optional
   failure-callback-result argument; its native timeout is not a core argument.
   
   Analyst role/contract. PC1.67 driver core request: ECX driver with five physical stack
   words/RET14hex, signed EAX result. Special state66295BC8 resets; actor0 forwards the same
   retained callback to each placed actor (last negative result retained) or selects synchronized
   master. Unknown actor-5, unplaced-1, unresolved state/return-3; driver error byte145 may replace
   success with-12. Native registered caller supplies no managed TaskCompletionSource. Native
   timeout is outside this core signature; original callback list identity and one-shot return hash
   must not become a pre-reserved destination wait. */

int __thiscall
SACS_CoreRequestState_803e20
          (void *this,int param_1,int param_2,uint param_3,int *param_4,int param_5)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  char *pcVar4;
  undefined4 *puVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  longlong lVar9;
  undefined1 auStack_20 [32];
  
  iVar7 = -1;
  if (param_2 == 0x66295bc8) {
    SACS_ResetDriver_800fb0((int)this);
    return 0;
  }
  if (param_1 == 0) {
    if (*(char *)((int)this + 0x3c) != '\0') {
LAB_00803f21:
      if (param_1 != 0) goto LAB_00803f2a;
      pcVar4 = *(char **)((int)this + 0x40);
      goto LAB_00803f32;
    }
    piVar3 = *(int **)((int)this + 0x14);
    piVar8 = *(int **)((int)this + 0x10);
    iVar7 = 0;
    if (piVar8 != piVar3) {
      do {
        if (((*(int *)(piVar8[1] + 0x10) != 0) || (*(int *)(piVar8[1] + 0x1c) != 0)) &&
           (iVar2 = SACS_CoreRequestState_803e20(this,*piVar8,param_2,param_3,param_4,0), iVar2 != 0
           )) {
          iVar7 = iVar2;
        }
        piVar8 = piVar8 + 2;
      } while (piVar8 != piVar3);
      if (iVar7 < 0) goto LAB_00803eb8;
    }
  }
  else {
    if (*(char *)((int)this + 0x3c) != '\0') goto LAB_00803f21;
LAB_00803f2a:
    pcVar4 = (char *)SACS_LookupDestinationWalker_803c00(this,param_1);
LAB_00803f32:
    if (pcVar4 == (char *)0x0) {
      iVar7 = -5;
      goto LAB_00803eb8;
    }
    if (param_2 == 0) {
      uVar6 = *(uint *)(pcVar4 + 0x28);
      if (uVar6 == 0) {
LAB_00803f99:
        iVar7 = -3;
        goto LAB_00803eb8;
      }
      uVar1 = *(undefined4 *)(uVar6 + 0x28);
      puVar5 = FUN_007427b0();
      if (puVar5 == (undefined4 *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = FUN_008020a0(puVar5,9,uVar1,"%sreturning to <0x%08x>");
      }
      SACS_AdmitFilteredEvent(this,piVar3);
      SACS_RequestWalkerState_8029e0(this,pcVar4,uVar6,param_3,param_4);
      iVar7 = 0;
    }
    else {
      if ((*(int *)(pcVar4 + 0x10) == 0) && (*(int *)(pcVar4 + 0x1c) == 0)) goto LAB_00803eb8;
      if ((*(int *)((int)this + 0xc) == 0) ||
         (uVar6 = SACS_FindGraphStateByHash(*(int *)((int)this + 0xc)), uVar6 == 0))
      goto LAB_00803f99;
      SACS_RequestWalkerState_8029e0(this,pcVar4,uVar6,param_3,param_4);
      iVar7 = 0;
    }
  }
  if (*(char *)((int)this + 0x145) != '\0') {
    iVar7 = -0xc;
  }
LAB_00803eb8:
  if ((((char)param_5 != '\0') && (param_4 != (int *)0x0)) &&
     ((iVar7 != 0 && (lVar9 = (**(code **)(*param_4 + 0xc))(), lVar9 != 0)))) {
    param_5 = iVar7;
    FUN_004f6340(auStack_20,&param_5);
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar3 + 0x124))(lVar9,auStack_20);
    FUN_004f5820((undefined4 *)&stack0xffffffd4);
  }
  return iVar7;
}

