/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX component, parameter owner stack word, RET4; writes AL1 only.
   Looks up propertyF895EED5 and exact null-terminated byte strings Sim/GameSim/AnimatedBoat->1,
   Car->2, Bicycle->3, Paddleboat->4, Rail->5 into+94. Absent/unmatched leaves preexisting+94
   unchanged. Selected Sim branch also queries component/SimService walk style and updates speeds;
   Car branch samples owner metadata into+DC. A pure string classifier covers only the kind
   selection, not all side effects or repeated Init behavior. */

undefined4 __thiscall Steering_InitializeKindFromObjectParameters(void *this,void *param_1)

{
  char *pcVar1;
  undefined4 uVar2;
  undefined3 uVar3;
  void *this_00;
  void *this_01;
  int iVar4;
  char *pcVar5;
  char *pcVar6;
  bool bVar7;
  int local_10 [4];
  
  pcVar1 = (char *)FUN_00939660(param_1,0xf895eed5);
  this_00 = (void *)0x0;
  if (pcVar1 != (char *)0x0) {
    iVar4 = 4;
    bVar7 = true;
    pcVar5 = pcVar1;
    pcVar6 = "Sim";
    do {
      if (iVar4 == 0) break;
      iVar4 = iVar4 + -1;
      bVar7 = *pcVar5 == *pcVar6;
      pcVar5 = pcVar5 + 1;
      pcVar6 = pcVar6 + 1;
    } while (bVar7);
    if (!bVar7) {
      iVar4 = 8;
      bVar7 = true;
      pcVar5 = pcVar1;
      pcVar6 = "GameSim";
      do {
        if (iVar4 == 0) break;
        iVar4 = iVar4 + -1;
        bVar7 = *pcVar5 == *pcVar6;
        pcVar5 = pcVar5 + 1;
        pcVar6 = pcVar6 + 1;
      } while (bVar7);
      if (!bVar7) {
        iVar4 = 0xd;
        bVar7 = true;
        pcVar5 = pcVar1;
        pcVar6 = "AnimatedBoat";
        do {
          if (iVar4 == 0) break;
          iVar4 = iVar4 + -1;
          bVar7 = *pcVar5 == *pcVar6;
          pcVar5 = pcVar5 + 1;
          pcVar6 = pcVar6 + 1;
        } while (bVar7);
        if (!bVar7) {
          iVar4 = 4;
          bVar7 = true;
          pcVar5 = pcVar1;
          pcVar6 = "Car";
          do {
            if (iVar4 == 0) break;
            iVar4 = iVar4 + -1;
            bVar7 = *pcVar5 == *pcVar6;
            pcVar5 = pcVar5 + 1;
            pcVar6 = pcVar6 + 1;
          } while (bVar7);
          if (bVar7) {
            *(undefined4 *)((int)this + 0x94) = 2;
            this_00 = (void *)0x0;
            if (*(void **)((int)this + 4) != (void *)0x0) {
              uVar2 = FUN_00b03460(*(void **)((int)this + 4));
              *(char *)((int)this + 0xdc) = (char)uVar2;
              return CONCAT31((int3)((uint)uVar2 >> 8),1);
            }
          }
          else {
            iVar4 = 8;
            bVar7 = true;
            pcVar5 = pcVar1;
            pcVar6 = "Bicycle";
            do {
              if (iVar4 == 0) break;
              iVar4 = iVar4 + -1;
              bVar7 = *pcVar5 == *pcVar6;
              pcVar5 = pcVar5 + 1;
              pcVar6 = pcVar6 + 1;
            } while (bVar7);
            uVar3 = (undefined3)((uint)pcVar1 >> 8);
            if (bVar7) {
              *(undefined4 *)((int)this + 0x94) = 3;
              return CONCAT31(uVar3,1);
            }
            iVar4 = 0xb;
            bVar7 = true;
            pcVar5 = pcVar1;
            pcVar6 = "Paddleboat";
            do {
              if (iVar4 == 0) break;
              iVar4 = iVar4 + -1;
              bVar7 = *pcVar5 == *pcVar6;
              pcVar5 = pcVar5 + 1;
              pcVar6 = pcVar6 + 1;
            } while (bVar7);
            if (bVar7) {
              *(undefined4 *)((int)this + 0x94) = 4;
              return CONCAT31(uVar3,1);
            }
            iVar4 = 5;
            this_00 = (void *)0x0;
            bVar7 = true;
            pcVar5 = "Rail";
            do {
              if (iVar4 == 0) break;
              iVar4 = iVar4 + -1;
              bVar7 = *pcVar1 == *pcVar5;
              pcVar1 = pcVar1 + 1;
              pcVar5 = pcVar5 + 1;
            } while (bVar7);
            if (bVar7) {
              *(undefined4 *)((int)this + 0x94) = 5;
              return 1;
            }
          }
          goto LAB_00953a26;
        }
      }
    }
    *(undefined4 *)((int)this + 0x94) = 1;
    if (*(void **)((int)this + 4) == (void *)0x0) {
      this_01 = (void *)0x0;
    }
    else {
      this_01 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011dd484);
    }
    this_00 = (void *)FUN_005ebac0();
    if ((this_01 != (void *)0x0) && (this_00 != (void *)0x0)) {
      local_10[0] = 0;
      local_10[1] = 0;
      local_10[2] = 0;
      local_10[3] = 0;
      FUN_0093d700(this_01,local_10);
      uVar2 = FUN_005eccd0(this_00,local_10);
      *(undefined4 *)((int)this + 0xe8) = uVar2;
      *(undefined4 *)(*(int *)((int)this + 0x10c) + 0xb8) = uVar2;
      this_00 = (void *)FUN_00952520((int)this);
    }
  }
LAB_00953a26:
  return CONCAT31((int3)((uint)this_00 >> 8),1);
}

