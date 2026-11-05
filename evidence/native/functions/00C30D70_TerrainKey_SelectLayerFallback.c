/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: cdecl outputKey,terrainSource,layerID are read; RET. Clear four-word
   output, query actual layer key then retry layer0 on ALfalse; null source leaves zero key.
   Selected caller also pushes an unused0 and cleans16stack bytes; no fourth argument read is
   established. Role name is descriptive, not a recovered original symbol. */

undefined4 * __cdecl TerrainKey_SelectLayerFallback(undefined4 *param_1,void *param_2,uint param_3)

{
  uint uVar1;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if (param_2 != (void *)0x0) {
    uVar1 = TerrainData_CopyLayerTextureKey(param_2,param_3,param_1);
    if ((char)uVar1 == '\0') {
      TerrainData_CopyLayerTextureKey(param_2,0,param_1);
    }
  }
  return param_1;
}

