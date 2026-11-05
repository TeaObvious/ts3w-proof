/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl object pointer
   to transform component using key 0x011ea158. NULL object returns NULL. Multi-object footprint
   query calls this then unconditionally world-position getter, so NULL comparison entries have no
   local safe-skip. */

void * __cdecl Object_GetTransformComponentOrNull(void *param_1)

{
  void *pvVar1;
  
  if (param_1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(param_1,DAT_011ea158);
    return pvVar1;
  }
  return (void *)0;
}

