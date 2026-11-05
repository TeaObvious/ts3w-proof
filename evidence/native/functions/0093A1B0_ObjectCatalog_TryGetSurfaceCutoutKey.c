/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. Two cdecl stack pointers: product typed key and key
   output. Requires global catalog service and successful typed product lookup. Product field
   address50BC90 supplies16key bytes, copied before the nonzero instance64 test. Returns AL1 iff
   copied instance64 is nonzero; early missing service/product clears only AL and leaves output
   untouched. Plain RET, caller cleanup; high EAX is not the Boolean contract. Complete
   catalog-service initialization/lifetime remain separate. */

uint __cdecl ObjectCatalog_TryGetSurfaceCutoutKey(uint *param_1,int *param_2)

{
  uint in_EAX;
  int iVar1;
  int *piVar2;
  
  if (DAT_011ee034 != (void *)0x0) {
    iVar1 = ObjectCatalog_FindByTypedKey(DAT_011ee034,param_1);
    in_EAX = 0;
    if (iVar1 != 0) {
      piVar2 = (int *)ObjectProduct_SurfaceCutoutKeyAddress(iVar1);
      *param_2 = *piVar2;
      param_2[1] = piVar2[1];
      param_2[2] = piVar2[2];
      param_2[3] = piVar2[3];
      if (*param_2 != 0 || param_2[1] != 0) {
        return 1;
      }
      return 0;
    }
  }
  return in_EAX & 0xffffff00;
}

