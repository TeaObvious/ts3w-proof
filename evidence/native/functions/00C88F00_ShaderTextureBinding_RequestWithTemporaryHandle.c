/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. Three caller-cleaned stack words are forwarded
   to C88B40 with an address of a stack-local temporary output handle. The handle is not
   retained/read by this wrapper. Child result registers are not normalized here; preserve existing
   signature and do not infer a new void/Boolean ABI from decompiler projection. Selected two water
   producers ignore its result. */

void __cdecl
ShaderTextureBinding_RequestWithTemporaryHandle(void *param_1,char *param_2,wchar_t *param_3)

{
  uint local_4;
  
  ShaderTextureBinding_RequestAndPublish(param_1,param_2,param_3,&local_4);
  return;
}

