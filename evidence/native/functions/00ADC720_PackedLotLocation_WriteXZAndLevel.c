/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Two caller-cleaned stack pointers. Sign-extend byte X/Z then convert/store
   float lanes0/1; sign-extend level byte2 and store raw Int32 lane2, with NO float conversion.
   Stored float-pointer display does not prove a float level. No complete source/output type or
   world transformation is inferred. Descriptive role, not recovered symbol. */

void __cdecl PackedLotLocation_WriteXZAndLevel(char *param_1,float *param_2)

{
  *param_2 = (float)(int)*param_1;
  param_2[1] = (float)(int)param_1[1];
  param_2[2] = (float)(int)param_1[2];
  return;
}

