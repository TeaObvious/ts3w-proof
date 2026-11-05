/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX sole argument/no stack/RET. Shift mask left; signed
   compare>8 resets1 and increments bytez; if signed z>endZ resetsstartZ and incrementsbytex; if
   signed x>endX resetsstartX and incrementsbytelevel. Ordinary domain order quarter->z->x->level.
   Signedbyteoverflow behavior is not managed int raster behavior. */

void __fastcall TilePartRectangleIterator_Next(undefined1 *param_1)

{
  param_1[9] = param_1[9] << 1;
  if ('\b' < (char)param_1[9]) {
    param_1[7] = param_1[7] + '\x01';
    param_1[9] = 1;
    if ((char)param_1[4] < (char)param_1[7]) {
      param_1[6] = param_1[6] + '\x01';
      param_1[7] = param_1[1];
      if ((char)param_1[3] < (char)param_1[6]) {
        param_1[8] = param_1[8] + '\x01';
        param_1[6] = *param_1;
      }
    }
  }
  return;
}

