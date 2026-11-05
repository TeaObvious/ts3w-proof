/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_BuildTreeRandomFactors:


/* Analyst-assigned name. Builds four tree random factors from variation r and fall-variation
   vector. a=v.x*v.z,b=v.y*v.z; normalizes when a+b>1. Output(r,r,b/(a+b),r*a/(a+b)) there,
   else(r,r,b,r*a+.5-(a+b)*.5). Inputs/outputs are float storage. */

void __cdecl
Seasons_BuildTreeRandomFactors(float treeVariation,float *fallVariation,float *randomFactors)

{
  float fVar1;
  float fVar2;
  float fVar3;

  fVar2 = *fallVariation * fallVariation[2];
  fVar3 = fallVariation[1] * fallVariation[2];
  fVar1 = fVar3 + fVar2;
  if (1.0 < fVar1) {
    *randomFactors = treeVariation;
    randomFactors[1] = treeVariation;
    randomFactors[2] = (1.0 / fVar1) * fVar3;
    randomFactors[3] = (1.0 / fVar1) * fVar2 * treeVariation;
    return;
  }
  *randomFactors = treeVariation;
  randomFactors[1] = treeVariation;
  randomFactors[2] = fVar3;
  randomFactors[3] = (fVar2 * treeVariation + 0.5) - fVar1 * 0.5;
  return;
}


