/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Iterates the authored brush component list in order;
   applies profile/image metadata, per-component strengths and the original action switch. Profiled
   components route through 0x10068E90; action0/2 route to RaiseLower/Level. Declared falloff fields
   alone do not prove they enter every profiled action. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_SculptDispatchComponents(void *this,int param_1,float param_2,int *param_3)

{
  int iVar1;
  char cVar2;
  uint uVar3;
  wchar_t *pwVar4;
  code *pcVar5;
  int *piVar6;
  undefined4 *puVar7;
  undefined *puVar8;
  float fVar9;
  char cVar10;
  int local_424;
  float local_420;
  int local_41c;
  float local_418;
  int *local_414;
  undefined1 local_410 [1040];
  
  if ((PTR__Dst_10ca8244_10c0e51c != PTR__Dst_10ca8244_10c0e520) &&
     (uVar3 = FUN_10910e20((LPCWSTR)PTR__Dst_10ca8244_10c0e51c), (char)uVar3 != '\0')) {
    piVar6 = *(int **)(param_3[1] + 0x1c);
    local_414 = *(int **)(param_3[1] + 0x20);
    local_424 = param_1;
    local_420 = param_2;
    local_41c = param_1;
    local_418 = param_2;
    if (piVar6 != local_414) {
      do {
        param_3[6] = (int)piVar6;
        if ((*piVar6 != piVar6[1]) && (piVar6[5] == 0)) {
          FUN_10922390(local_410,(ushort *)PTR__Dst_10ca8244_10c0e51c);
          FUN_10922620(local_410,*(short **)param_3[6],0);
          cVar10 = '\x01';
          puVar7 = (undefined4 *)(param_3[6] + 0x14);
          cVar2 = '\x01';
          pwVar4 = (wchar_t *)FUN_10a2ece0(local_410);
          cVar2 = FUN_1025ef60(pwVar4,puVar7,cVar2,cVar10);
          if (cVar2 == '\0') {
            return;
          }
          *(undefined4 *)(param_3[6] + 0x18) = *(undefined4 *)(*(int *)(param_3[6] + 0x14) + 0x18);
          *(undefined4 *)(param_3[6] + 0x1c) = *(undefined4 *)(*(int *)(param_3[6] + 0x14) + 0x1c);
        }
        iVar1 = param_3[6];
        if (*(char *)(iVar1 + 0x20) == '\0') {
          puVar8 = *(undefined **)(param_3[1] + 0x2c);
        }
        else {
          puVar8 = *(undefined **)(param_3[1] + 0x30);
        }
        fVar9 = *(float *)(*param_3 + 0x18) * *(float *)(iVar1 + 0x24);
        param_3[8] = (int)(*(float *)(*param_3 + 0x14) * *(float *)(iVar1 + 0x28));
        switch(*(undefined4 *)(iVar1 + 0x10)) {
        case 0:
          pcVar5 = CAW_SculptRaiseLowerSample;
          break;
        case 1:
          pcVar5 = (code *)&LAB_10069600;
          break;
        case 2:
          pcVar5 = CAW_SculptLevelSample;
          break;
        case 3:
          pcVar5 = (code *)&LAB_10069a20;
          break;
        default:
          goto switchD_1006a4ac_default;
        }
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(iVar1 + 0x14) == 0) {
            FUN_1006a010(this,param_1,(int)param_2,fVar9,(float)puVar8,pcVar5,param_3,&local_424);
          }
          else {
            CAW_SculptApplyProfileRaster(this,param_1,param_2,fVar9,puVar8,(int)pcVar5,param_3);
          }
        }
switchD_1006a4ac_default:
        if (((*(int *)(param_3[6] + 0x10) == 1) && (local_424 <= local_41c)) &&
           ((int)local_420 <= (int)local_418)) {
          FUN_10068ab0(this,&local_424,1);
        }
        FUN_10068b30(param_3 + 2,param_3 + 2,&local_424);
        piVar6 = piVar6 + 0xc;
      } while (piVar6 != local_414);
    }
  }
  return;
}

