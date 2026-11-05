/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original cdecl output key pointer andsource key pointer; calls0099a2b0 withthird argument null
   andreturns output pointer in EAX. Caller SimStorage_WriteSimRecordAndDependencies requestsfresh
   key when supplied instance64 iszero; key generator's fullconditions arein0099a2b0. */

uint * __cdecl DownloadContent_GenerateSimRecordKey(uint *param_1,uint *param_2)

{
  DownloadContent_GenerateUnusedResourceKey(param_1,param_2,(undefined4 *)0x0);
  return param_1;
}

