/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67: checks three listener places for a clear sound path. When muffled, same-floor
   attenuation is G with Walls Up, otherwise G+(1-G)/2; each separating floor multiplies G, using
   the smaller separation of two listener places. The corresponding full mixer output was not
   measured. Original instruction review preserves these earlier facts; obsolete private
   scratch-file reference removed.
   
   Analyst PC1.67 outside sampling and occlusion instruction contract. ECX sound plus SIX explicit
   stack words:4binary32 position lanes,optional template pointer,optional byte output; RET0x18 on
   both returns, x87 ST0 result. Previous decompiler types and indirect cleanup were wrong;
   source-address870280 is INSIDE this function, not a circle sampler. Whole original
   body870050..870439 is1002bytes; following6INT3 padding excluded. Calls864BD0 with indices2,3,1 to
   fill three placement arrays when relevant gates require them. Template property39FF78D1 uses
   CVTTSS2SI;5DBED967 uses x87 truncate-to-int64 then lowDWORD. Clear-path loop examines all3
   places, while floor separation is minimum of two signed absolute DWORD differences, then repeated
   SSE multiplications by receiver+18B0; it is not MathF.Pow. Transition from previous occluded to
   clear may restore backend properties647A7836/49EB68DB only when backend+58 exists and no output
   pointer supplied; output pointer path writes byte and avoids that restoration branch. Full
   input-place producer identities, room/walls setting ownership, base8AB250 gain and backend
   property effects remain unexpanded static paths; no render/audio runtime acceptance implied.
   Decompiler limitation: scoped 870083 callsite now represents ECX+six stack words, but actual C
   may retain extraout_ST0 because unexpanded callee8AB250 has conflicting database return metadata.
   Original call is followed immediately by FSTP binary32 at87008D; extraout_ST0 is that returned
   ST0 value, not an uninitialized source value. Reused stack variables may be spelled as
   float/pointer casts: preserve original bits, not numeric pointer conversions. The optional output
   pointer is original entry stack+18, not a seventh stack argument. */

float10 __thiscall
Audio_ComputeOcclusion
          (void *sound,float positionX,float positionY,float positionZ,float positionW,
          void *optionalTemplate,bool *occludedOut)

{
  float fVar1;
  float fVar2;
  bool bVar3;
  uint uVar4;
  float *pfVar5;
  bool **ppbVar6;
  float fVar7;
  int iVar8;
  void *pvVar9;
  int *piVar10;
  ushort in_FPUControlWord;
  float10 extraout_ST0;
  float10 fVar11;
  void *pvVar12;
  int iStack_2c;
  int local_24 [9];
  
  pvVar9 = optionalTemplate;
  iStack_2c = 0;
                    /* ECX + six physical stack words; original caller FSTPbinary32 at87008D
                       captures returned ST0. extraout_ST0 in actual C is conflicting
                       unexpanded-callee metadata, not an uninitialized source value. Do not
                       manufacture a C return or edit original bytes. */
  FUN_008ab250(sound,positionX,positionY,positionZ,positionW,optionalTemplate,0);
  positionZ = (float)extraout_ST0;
  if (DAT_011d9c40 == 0) {
    positionY = 0.0;
  }
  else {
    positionY = (float)(DAT_011d9c40 + -0x27bd0);
  }
  fVar7 = positionY;
  if (pvVar9 == (void *)0x0) {
    pvVar9 = sound;
  }
  if ((*(int *)((int)sound + 0x18a8) != 0) || (*(char *)((int)sound + 0x18c0) != '\0')) {
    FUN_00864bd0((void *)positionY,2,local_24 + 3,local_24,local_24 + 6);
    FUN_00864bd0((void *)fVar7,3,local_24 + 4,local_24 + 1,local_24 + 7);
    FUN_00864bd0((void *)fVar7,1,local_24 + 5,local_24 + 2,local_24 + 8);
  }
  pvVar12 = (void *)0x0;
  if ((*(void **)((int)sound + 0x18a8) != (void *)0x0) && (0.0 < positionZ)) {
    if ((*(int **)((int)sound + 0x18ac) != (int *)0x0) &&
       (*(int **)((int)sound + 0x18ac) == local_24 + 3)) {
      pvVar12 = (void *)1.0;
    }
    optionalTemplate = pvVar12;
    fVar11 = AudioCurve_EvaluateLinear(*(void **)((int)sound + 0x18a8),(float)pvVar12);
    positionZ = (float)(fVar11 * (float10)positionZ);
  }
  optionalTemplate = (void *)CONCAT31(optionalTemplate._1_3_,*(undefined1 *)((int)sound + 0x18c1));
  *(undefined1 *)((int)sound + 0x18c1) = 0;
  if ((*(char *)((int)sound + 0x18c0) != '\0') && (0.0 < positionZ)) {
    piVar10 = (int *)((int)pvVar9 + 4);
    iVar8 = 0;
    positionW = 0.0;
    bVar3 = (**(code **)(*(int *)((int)pvVar9 + 4) + 0x10))(piVar10,0x39ff78d1,&positionW);
    if (bVar3) {
      iVar8 = (int)positionW;
    }
    positionX = 0.0;
    bVar3 = (**(code **)(*piVar10 + 0x10))(piVar10,0x5dbed967,&positionX);
    fVar7 = positionY;
    if (bVar3) {
      positionW = (float)CONCAT22(positionW._2_2_,in_FPUControlWord);
      iStack_2c = (int)(longlong)ROUND(positionX);
      positionX = (float)(in_FPUControlWord | 0xc00);
    }
    *(undefined1 *)((int)sound + 0x18c1) = 1;
    uVar4 = 0;
    do {
      if (*(char *)((int)positionY + 0x27d09) != '\0') {
        if ((*(int *)((int)sound + 0x18ac) != *(int *)((int)local_24 + uVar4 + 0xc)) ||
           (iStack_2c != *(int *)((int)local_24 + uVar4))) {
          if (iStack_2c == 0) {
            bVar3 = *(int *)((int)local_24 + uVar4) == 0;
            goto LAB_0087024a;
          }
          goto LAB_0087024c;
        }
LAB_00870256:
        *(undefined1 *)((int)sound + 0x18c1) = 0;
        break;
      }
      if ((iStack_2c == 0) && (*(int *)((int)local_24 + uVar4) == 0)) goto LAB_00870256;
      if ((*(int *)((int)sound + 0x18ac) == *(int *)((int)local_24 + uVar4 + 0xc)) &&
         ((iStack_2c != 0 && (*(int *)((int)local_24 + uVar4) != 0)))) {
        bVar3 = iVar8 == *(int *)((int)local_24 + uVar4 + 0x18);
LAB_0087024a:
        if (bVar3) goto LAB_00870256;
      }
LAB_0087024c:
      uVar4 = uVar4 + 4;
    } while (uVar4 < 0xc);
    if (*(char *)((int)sound + 0x18c1) != '\0') {
      uVar4 = iVar8 - local_24[7] >> 0x1f;
      positionW = (float)((iVar8 - local_24[7] ^ uVar4) - uVar4);
      uVar4 = iVar8 - local_24[6] >> 0x1f;
                    /* This SUB is part of signed absolute floor-difference calculation; NOT a
                       circle sampling function entry. */
      positionY = (float)((iVar8 - local_24[6] ^ uVar4) - uVar4);
      pfVar5 = &positionW;
      if ((int)positionY <= (int)positionW) {
        pfVar5 = &positionY;
      }
      fVar2 = *pfVar5;
      if (fVar2 == 0.0) {
        if (*(char *)((int)fVar7 + 0x27d09) == '\0') {
          fVar7 = (1.0 - *(float *)((int)sound + 0x18b0)) * 0.5 + *(float *)((int)sound + 0x18b0);
        }
        else {
          fVar7 = *(float *)((int)sound + 0x18b0);
        }
        positionZ = fVar7 * positionZ;
      }
      else {
        fVar7 = 0.0;
        if (3 < (int)fVar2) {
          fVar1 = *(float *)((int)sound + 0x18b0);
          iVar8 = ((int)fVar2 - 4U >> 2) + 1;
          fVar7 = (float)(iVar8 * 4);
          do {
            iVar8 = iVar8 + -1;
                    /* Repeated binary32 MULSS in original order (unrolled4 then remaining);
                       replacing by Pow need not preserve rounding. */
            positionZ = fVar1 * positionZ * fVar1 * fVar1 * fVar1;
          } while (iVar8 != 0);
        }
        if ((uint)fVar7 < (uint)fVar2) {
          iVar8 = (int)fVar2 - (int)fVar7;
          do {
            iVar8 = iVar8 + -1;
            positionZ = *(float *)((int)sound + 0x18b0) * positionZ;
          } while (iVar8 != 0);
        }
      }
    }
  }
  if (((*(bool *)((int)sound + 0x18c1) == false) && ((char)optionalTemplate != '\0')) &&
     (*(int *)((int)sound + 0x58) != 0)) {
    if (occludedOut == (bool *)0x0) {
      piVar10 = (int *)((int)sound + 4);
      occludedOut = (bool *)0x0;
      bVar3 = (**(code **)(*(int *)((int)sound + 4) + 0x10))
                        (piVar10,0x647a7836,(float *)&occludedOut);
      if (bVar3) {
        fVar11 = AudioCurve_EvaluateLinear
                           ((void *)((int)sound + 0xae0),*(float *)((int)sound + 0x5c));
        positionW = (float)fVar11;
        ppbVar6 = (bool **)&positionW;
        if ((float10)(float)occludedOut <= fVar11) {
          ppbVar6 = &occludedOut;
        }
        occludedOut = *ppbVar6;
        (**(code **)(**(int **)((int)sound + 0x58) + 0x34))
                  (*(int **)((int)sound + 0x58),0x647a7836,(float)occludedOut,1);
      }
      optionalTemplate = (void *)0x0;
      bVar3 = (**(code **)(*piVar10 + 0x10))(piVar10,0x49eb68db,(float *)&optionalTemplate);
      if (bVar3) {
        (**(code **)(**(int **)((int)sound + 0x58) + 0x34))
                  (*(int **)((int)sound + 0x58),0x49eb68db,(float)optionalTemplate,1);
                    /* RET0x18: six explicit stack words, with ECX receiver and ST0 return. Same
                       cleanup at870437. */
        return (float10)positionZ;
      }
      goto LAB_0087042c;
    }
  }
  else if (occludedOut == (bool *)0x0) goto LAB_0087042c;
  *occludedOut = *(bool *)((int)sound + 0x18c1);
LAB_0087042c:
  return (float10)positionZ;
}

