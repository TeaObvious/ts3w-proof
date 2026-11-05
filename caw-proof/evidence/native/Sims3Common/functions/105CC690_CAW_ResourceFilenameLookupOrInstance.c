/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Consults associated filename lookup by instance low/high
   words. With no mapping, formats the instance as eight lowercase hexadecimal high digits,
   apostrophe, then eight low digits. It does not format type:group:instance. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

undefined4 * __cdecl CAW_ResourceFilenameLookupOrInstance(undefined4 *param_1)

{
  char *pcVar1;
  char *pcVar2;
  char *pcVar3;
  
  param_1[3] = "Scratch/ResourceSystem";
  *param_1 = &_Dst_10ca8244;
  param_1[1] = &_Dst_10ca8244;
  param_1[2] = &DAT_10ca8245;
  pcVar2 = (char *)CAW_ResourceAssociatedFilenameLookup();
  pcVar1 = pcVar2;
  if (pcVar2 == (char *)0x0) {
    FUN_1000f080(param_1,"%08x\'%08x");
    return param_1;
  }
  do {
    pcVar3 = pcVar1;
    pcVar1 = pcVar3 + 1;
  } while (*pcVar3 != '\0');
  FUN_1000e8a0(param_1,pcVar2,pcVar3);
  return param_1;
}

