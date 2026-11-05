/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 static instruction evidence; analyst-assigned name. Physical thiscall ECX brush
   product, one UInt32 interface ID at stack4; direct match04ED4893 returns same ECX in EAX and
   RET4. Other IDs tail-jump C92FE0 with original stackword/cleanup. Paint C9AE80, sculpt C9B030 and
   water C9B3A0 query wrappers all tail-jump here; their constructed vtables have slot20=513D50
   (ALtrue), so CEF6B0 selects Build scaling and this interface bypasses floor for all three brush
   families. Result is scaled binary32 before float return conversion; no household billing or final
   stroke rounding is established by this interface. */

void * __thiscall TerrainBrushProduct_QueryInterface(void *this,int param_1)

{
  undefined *puVar1;
  
  if (param_1 == 0x4ed4893) {
    return this;
  }
  puVar1 = CatalogProduct_QueryBaseInterface(this,param_1);
  return puVar1;
}

