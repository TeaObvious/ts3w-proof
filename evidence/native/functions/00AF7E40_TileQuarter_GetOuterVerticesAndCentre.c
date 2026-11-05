/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl4physicalDWORDs/plainRET, void. Packedquarter bytes
   x,z,level,onehotmask. Mask1 (-Z):
   outer(x+1,z),(x,z);2(+X):(x+1,z+1),(x+1,z);4(+Z):(x,z+1),(x+1,z+1);8(-X):(x,z),(x,z+1).
   Byteincrements wrap; MOVSX signedbytes producecentre x+.5,z+.5 and signedINTEGERlevel at+8.
   Masks3/5/6/7 branch toend, otherdefault returns withoutnormaloutputs. Centre output is
   LotXZLevel{float,float,int}, NOT threefloats despite old inferredfloat* pseudocode. */

void __cdecl
TileQuarter_GetOuterVerticesAndCentre(char *quarter,char *outerA,char *outerB,LotXZLevel *centre)

{
  char cVar1;
  char cVar2;
  
  switch(quarter[3]) {
  case '\x01':
    cVar2 = quarter[1];
    cVar1 = quarter[2];
    *outerA = *quarter + '\x01';
    outerA[1] = cVar2;
    outerA[2] = cVar1;
    cVar2 = quarter[1];
    cVar1 = quarter[2];
    *outerB = *quarter;
    outerB[1] = cVar2;
    outerB[2] = cVar1;
    break;
  case '\x02':
    cVar2 = *quarter;
    cVar1 = quarter[2];
    outerA[1] = quarter[1] + '\x01';
    *outerA = cVar2 + '\x01';
    outerA[2] = cVar1;
    cVar2 = quarter[1];
    cVar1 = quarter[2];
    *outerB = *quarter + '\x01';
    outerB[1] = cVar2;
    outerB[2] = cVar1;
    break;
  case '\x03':
  case '\x05':
  case '\x06':
  case '\a':
    goto switchD_00af7e56_default;
  case '\x04':
    cVar2 = quarter[1];
    cVar1 = quarter[2];
    *outerA = *quarter;
    outerA[1] = cVar2 + '\x01';
    outerA[2] = cVar1;
    cVar1 = quarter[1];
    cVar2 = *quarter + '\x01';
    goto LAB_00af7f30;
  case '\b':
    cVar2 = quarter[1];
    cVar1 = quarter[2];
    *outerA = *quarter;
    outerA[1] = cVar2;
    outerA[2] = cVar1;
    cVar1 = quarter[1];
    cVar2 = *quarter;
LAB_00af7f30:
    outerB[2] = quarter[2];
    outerB[1] = cVar1 + '\x01';
    *outerB = cVar2;
    break;
  default:
    return;
  }
  cVar2 = quarter[1];
  cVar1 = quarter[2];
  centre->x = (float)(int)*quarter + 0.5;
  centre->z = (float)(int)cVar2 + 0.5;
  centre->level = (int)cVar1;
switchD_00af7e56_default:
  return;
}

