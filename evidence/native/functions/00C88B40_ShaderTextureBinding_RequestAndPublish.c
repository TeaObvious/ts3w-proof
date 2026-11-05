/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. Four caller-cleaned stack words: proxy, narrow
   parameter name, UTF16-Z resource name, output row handle. Calls722F60 first, parses a DDS key
   via4AEE40 with typeB2D882 and zero auxiliary words. Parse failure returns AL false without
   writing the output handle. Otherwise register row using79A530(word1,kind5), store handle, submit
   proxy via722EF0, then publish null on submit failure or722ED0 payload on success for a valid row;
   increment row revision/copy registry UInt16+12hex before payload. Upper return bits, concrete
   proxy payload ownership and child completion remain separate. */

undefined4 __cdecl
ShaderTextureBinding_RequestAndPublish(void *param_1,char *param_2,wchar_t *param_3,uint *param_4)

{
  void *pvVar1;
  bool bVar2;
  undefined3 extraout_var;
  uint uVar3;
  int *piVar4;
  int iVar5;
  uint local_10 [4];
  
  local_10[0] = 0;
  local_10[1] = 0;
  local_10[2] = 0;
  local_10[3] = 0;
  FUN_00722f60((int)param_1);
  bVar2 = ResourceKey_ParseWideName(local_10,(ushort *)param_3,0xb2d882,0,(void *)0x0,0);
  pvVar1 = DAT_011d8530;
  if (!bVar2) {
    return CONCAT31(extraout_var,bVar2);
  }
  uVar3 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,param_2,1,5);
  *param_4 = uVar3;
  bVar2 = TextureProxy_SubmitKey(param_1,local_10,1,0,0);
  if (!bVar2) {
    piVar4 = (int *)*param_4;
    if (piVar4 < *(int **)((int)pvVar1 + 8)) {
      piVar4 = (int *)((int)piVar4 * 0x10 + *(int *)((int)pvVar1 + 4));
      *piVar4 = *piVar4 + 1;
      *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)pvVar1 + 0x12);
      piVar4[3] = 0;
    }
    return (uint)piVar4 & 0xffffff00;
  }
  iVar5 = FUN_00722ed0((int)param_1);
  if (*param_4 < *(uint *)((int)pvVar1 + 8)) {
    piVar4 = (int *)(*param_4 * 0x10 + *(int *)((int)pvVar1 + 4));
    *piVar4 = *piVar4 + 1;
    *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)pvVar1 + 0x12);
    piVar4[3] = iVar5;
  }
  return CONCAT31((int3)((uint)iVar5 >> 8),1);
}

