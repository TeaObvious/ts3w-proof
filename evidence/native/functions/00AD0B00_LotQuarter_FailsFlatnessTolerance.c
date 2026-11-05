/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: exact original AD0B00 callback operand atB3C399 (PUSH address) and entry flow
   recovered without clearing bytes. Callback ABI and numeric contract reviewed separately before
   final publication; original bytes unchanged.
   
   PC1.67 original static instructions. OriginalcallbackPUSH atB3C399 establishes exactentry.
   Physicalcdecl2DWORDs lot/packedquarter, ordinaryRET; EAX0flat, EAX1failure (caller consumesAL),
   NOT a positive IsFlat result. AF7E40 gives2outervertices andcentre atrequestedlevel;
   loadbinary32outerheights throughlot+290 grid, samplecentreA8C690. x87 FSUB/FABS, tolerance FLD
   original01066B24 bits3D4CCCCD. FCOMIP/JA branches only if STRICTgreater: equality passes,
   unordered does not takeJA under masked FP semantics. No explicit IsFinite checks here; host
   finiteguard is a supported-domain policy. x87centre return is not forcibly rounded tofloat before
   second difference. Ambient x87 control/NaNexception behavior remains unproved. */

uint __cdecl LotQuarter_FailsFlatnessTolerance(void *lot,char *quarter)

{
  float fVar1;
  void *pvVar2;
  int iVar3;
  float10 fVar4;
  char cStack_18;
  char cStack_17;
  char cStack_16;
  char cStack_14;
  char cStack_13;
  char cStack_12;
  float fStack_10;
  LotXZLevel LStack_c;
  
  cStack_18 = -1;
  cStack_17 = -1;
  cStack_14 = -1;
  cStack_13 = -1;
  cStack_16 = '\0';
  cStack_12 = '\0';
  LStack_c.x = -1.0;
  LStack_c.z = -1.0;
  LStack_c.level = 0;
  TileQuarter_GetOuterVerticesAndCentre(quarter,&cStack_18,&cStack_14,&LStack_c);
  pvVar2 = *(void **)((int)lot + 0x290);
  iVar3 = *(int *)((int)pvVar2 + 0x24);
  fVar1 = *(float *)(*(int *)(iVar3 + 0x10) +
                    ((((int)cStack_16 - *(int *)((int)pvVar2 + 0x10)) * *(int *)(iVar3 + 4) +
                     (int)cStack_18) * *(int *)(iVar3 + 8) + (int)cStack_17) * 4);
  iVar3 = *(int *)((int)pvVar2 + 0x24);
  fStack_10 = *(float *)(*(int *)(iVar3 + 0x10) +
                        ((((int)cStack_12 - *(int *)((int)pvVar2 + 0x10)) * *(int *)(iVar3 + 4) +
                         (int)cStack_14) * *(int *)(iVar3 + 8) + (int)cStack_13) * 4);
  fVar4 = LotLevelHeight_SampleLocalPosition(pvVar2,&LStack_c);
  if ((ABS((float10)fVar1 - (float10)fStack_10) <= (float10)0.05) &&
     (ABS((float10)fStack_10 - fVar4) <= (float10)0.05)) {
    return 0;
  }
  return 1;
}

