/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Analyst: interprets a stored SSET selector program to compute the shader variant index. The
   11-entry jump table at 0x0079ff58 maps opcodes 1..11: 1 unsigned shift with
   (old|0xfffffffe)&(old>>1); 2 unsigned shift OR old bit0; 3 toggle bit0; 4/5 conditional skip and
   unsigned shift; 6 append a bit from the 32-bit option-presence mask; 7 append a bit from
   packed-option membership; 8 invalid -> 0xffffffff; 9 write one of 32 uint counters; 10 add to a
   counter; 11 skip words. Zero terminates and sums all 32 counters. The decompiler reports
   unsettled type propagation, so these expressions are checked against original instructions.
   Bounds for opcode 9/10 counter indices and program-word exhaustion are not visibly enforced by
   this body; malformed-input behavior remains open. */

int __thiscall ShaderSet_EvaluateVariantProgram(void *this,uint *param_1,uint param_2)

{
  int *piVar1;
  uint *puVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint *puVar8;
  uint local_80 [32];
  
  piVar1 = *(int **)((int)this + 0x1c);
  if (piVar1 == *(int **)((int)this + 0x20)) {
    return 0;
  }
  local_80[0] = 0;
  memset(local_80 + 1,0,0x7c);
  uVar5 = piVar1[*piVar1 + piVar1[*piVar1 + 1] + 2];
  uVar6 = 0;
  puVar2 = (uint *)(piVar1 + *piVar1 + piVar1[*piVar1 + 1] + 2);
  do {
    if (uVar5 == 0) {
      iVar4 = 0;
      uVar5 = 0;
      do {
        uVar6 = uVar5 + 4;
        iVar4 = iVar4 + local_80[uVar5 + 3] + local_80[uVar5 + 2] + local_80[uVar5 + 1] +
                        local_80[uVar5];
        uVar5 = uVar6;
      } while (uVar6 < 0x20);
      return iVar4;
    }
    puVar8 = puVar2 + 1;
    uVar7 = uVar6;
    switch(uVar5 & 0xffff) {
    case 1:
      uVar7 = (uVar6 | 0xfffffffe) & uVar6 >> 1;
      break;
    case 2:
      uVar7 = uVar6 & 1 | uVar6 >> 1;
      break;
    case 3:
      uVar7 = uVar6 ^ 1;
      break;
    case 4:
      if ((uVar6 & 1) == 0) {
        puVar8 = puVar8 + (uVar5 >> 0x10);
      }
      goto LAB_0079fe99;
    case 5:
      if ((uVar6 & 1) != 0) {
        uVar6 = uVar6 >> 1;
        goto LAB_0079ff07;
      }
LAB_0079fe99:
      uVar7 = uVar6 >> 1;
      break;
    case 6:
      uVar7 = uVar6 * 2;
      if ((param_2 & 1 << ((byte)(uVar5 >> 0x10) & 0x1f)) != 0) {
LAB_0079fec0:
        uVar7 = uVar6 * 2 + 1;
      }
      break;
    case 7:
      uVar7 = uVar6 * 2;
      uVar3 = 0;
      puVar2 = param_1;
      if (*param_1 != 0) {
        do {
          if (puVar2[1] == uVar5 >> 0x10) goto LAB_0079fec0;
          uVar3 = uVar3 + 1;
          puVar2 = puVar2 + 1;
        } while (uVar3 < *param_1);
      }
      break;
    default:
      return -1;
    case 9:
      local_80[uVar5 >> 0x10] = *puVar8;
      puVar8 = puVar2 + 2;
      break;
    case 10:
      local_80[uVar5 >> 0x10] = local_80[uVar5 >> 0x10] + *puVar8;
      puVar8 = puVar2 + 2;
      break;
    case 0xb:
LAB_0079ff07:
      puVar8 = puVar8 + (uVar5 >> 0x10);
      uVar7 = uVar6;
    }
    uVar5 = *puVar8;
    uVar6 = uVar7;
    puVar2 = puVar8;
  } while( true );
}

