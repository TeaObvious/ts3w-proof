/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl packed4bytecell/output12byteLotXZLevel*, plainRET void. MOVSX signedbyteX/Z,
   CVTSI2SS then ADDSS .5f stored as centre. Mask1 dz=-1/3f,2 dx=+1/3f,4 dz+=1/3f,8 dx-=1/3f in that
   order; ADDSS centre+offset independently. Exact oneThird Float32 bits3EAAAAAB (negativeBEAAAAAB),
   not independently rounded1/6f and not averaging selected quarters. CRITICAL AF81A4 MOVSX
   cell.level; AF81B4 MOV output+8,EDX copies SIGNED INT level, not float conversion (prior float*
   seed was wrong). Highermaskbits ignored; mask0/F usecentre. */

void __cdecl TilePart_GetLocalSamplePoint(char *cell,LotXZLevel *output)

{
  byte bVar1;
  float fVar2;
  float fVar3;
  
  output->level = (int)cell[2];
  output->x = (float)(int)*cell + 0.5;
  fVar2 = 0.0;
  output->z = (float)(int)cell[1] + 0.5;
  bVar1 = cell[3];
  fVar3 = 0.0;
  if ((bVar1 & 1) != 0) {
    fVar3 = -0.33333334;
  }
  if ((bVar1 & 2) != 0) {
    fVar2 = 0.33333334;
  }
  if ((bVar1 & 4) != 0) {
    fVar3 = fVar3 + 0.33333334;
  }
  if ((bVar1 & 8) != 0) {
    fVar2 = fVar2 - 0.33333334;
  }
  output->x = output->x + fVar2;
  output->z = output->z + fVar3;
  return;
}

