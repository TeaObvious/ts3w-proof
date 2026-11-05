/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Writes one byte of bits1,2,4,8 for negative planar cross
   against the quad's successive directed edges. Cross equal zero remains inside that edge. Used for
   self-overlap quick rejection and for all newly clipped vertices. Analyst-assigned helper names
   are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __cdecl CAW_RoadQuadPointOutcode(float *param_1,float *param_2,char *param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  fVar1 = *param_1;
  fVar2 = param_1[1];
  fVar3 = param_1[4];
  fVar4 = param_1[5];
  fVar5 = param_1[8];
  fVar6 = param_1[9];
  fVar7 = param_1[0xc];
  fVar8 = param_1[0xd];
  fVar9 = *param_2;
  fVar10 = param_2[1];
  *param_3 = '\0';
  if ((fVar10 - fVar2) * (fVar3 - fVar1) - (fVar4 - fVar2) * (fVar9 - fVar1) < 0.0) {
    *param_3 = '\x01';
  }
  if ((fVar10 - fVar4) * (fVar5 - fVar3) - (fVar6 - fVar4) * (fVar9 - fVar3) < 0.0) {
    *param_3 = *param_3 + '\x02';
  }
  if ((fVar10 - fVar6) * (fVar7 - fVar5) - (fVar8 - fVar6) * (fVar9 - fVar5) < 0.0) {
    *param_3 = *param_3 + '\x04';
  }
  if ((fVar10 - fVar8) * (fVar1 - fVar7) - (fVar2 - fVar8) * (fVar9 - fVar7) < 0.0) {
    *param_3 = *param_3 + '\b';
  }
  return;
}

