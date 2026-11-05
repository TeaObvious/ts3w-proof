/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. NONSTANDARDmachineABI: EAXalignedfloat4response pointer
   plusONEcaller-cleanedstackfloatlimit, FLOATresultinXMM0, RET.
   Customstoragecapturesactualinputs/output;
   __cdecllabelmerelyrecordsstackcleanupanddoesNOTmeanEAXisstackargument.
   Previousvoid/noargsCwasincorrect. LoadsRGB; COMISS/JBE ordered-greaterselection makesm=R
   thenifG>m m=G thenifB>m m=B. If limit>m ordered setsdenominatorlimit elsem;
   DIVSSlimit/denominator. Forfinitepositive m/limit thisismin(1,limit/m),
   butzero/negative/NaNdetailsfolloworiginalcomparisonsandDIVSS, noaddedguards. */

float __cdecl Rig_ResponseLimitRatio(float *response,float limit)

{
  float fVar1;
  
  fVar1 = *response;
  if (*response < response[1]) {
    fVar1 = response[1];
  }
  if (fVar1 < response[2]) {
    fVar1 = response[2];
  }
  if (fVar1 < limit) {
    fVar1 = limit;
  }
  return limit / fVar1;
}

