/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 diagnostic formatter for TexCompFixupLOD. Instructions use ECX as receiver and
   one stackword as destination, although the inferred signature omits the receiver. Formats
   receiver+08 diffuse key and+18 specular key into TexCompFixupLOD - Diffuse:%s Specular:%s and
   releases temporary key strings. Does not apply overrides or acquire textures; prototype and
   physical RET4 are preserved. */

void TexCompFixupLOD_FormatDescription(void *param_1)

{
  void *local_20 [2];
  int local_18;
  void *local_10 [2];
  int local_8;
  
  FUN_007d95d0(local_10);
  FUN_007d95d0(local_20);
  FUN_00567870(param_1,"TexCompFixupLOD - Diffuse:%s Specular:%s");
  if ((1 < local_18 - (int)local_20[0]) && (local_20[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_20[0]);
  }
  if ((1 < local_8 - (int)local_10[0]) && (local_10[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_10[0]);
  }
  return;
}

