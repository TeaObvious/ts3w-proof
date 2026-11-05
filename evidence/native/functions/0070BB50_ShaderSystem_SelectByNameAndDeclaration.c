/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: name-based shader lookup path. Hashes the supplied name, finds its shader set, appends
   requested option hashes, selects a variant for the vertex declaration/context, then resolves the
   definition. If variant evaluation returns -1, falls back to shadererror. This is a caller of the
   same selector used by materials.
   
   Analyst PC1.67 original contract. ECX not used as receiver; three cdecl stack arguments: shader
   name, vertex-declaration pointer/context, caller option-vector pointer. Actual flora path appends
   global shadow hashes70C2F0(115C3C4) before caller options, then7A0060,79FFB0/79FE00 and
   definition lookup. The second argument is not an integer rendering mode: near supplies
   renderer+2F8, billboard+4F8, and79FD20 reads its declaration records. Shared material
   selector6CA830/7A0030 is a separate route to the same SSET evaluator. Preserve shadererror
   fallback on variant-1. */

void * __cdecl
ShaderSystem_SelectByNameAndDeclaration(char *param_1,void *vertexDeclaration,int *param_3)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  void *pvVar5;
  uint uVar6;
  undefined1 local_res0;
  int *local_d8;
  int *local_d4;
  int *local_d0;
  int local_c0 [48];
  
  uVar3 = HashLowercasedCStringFNV1(param_1);
  pvVar5 = DAT_011d853c;
  uVar6 = 0;
  local_d8 = (int *)0x0;
  FUN_0079b560(DAT_011d853c,uVar3,&local_d8,'\x01');
  if (local_d8 == (int *)0x0) {
    return (void *)0x0;
  }
  local_d4 = local_c0;
  local_d0 = local_c0;
  ShadowMap_AppendShaderOptions(&PTR_PTR_0115c3c4,&local_d4);
  if ((param_3 != (int *)0x0) && (uVar3 = param_3[1] - *param_3 >> 2, uVar3 != 0)) {
    do {
      piVar1 = (int *)(*param_3 + uVar6 * 4);
      if (local_d0 < &local_res0) {
        piVar2 = local_d0 + 1;
        if (local_d0 != (int *)0x0) {
          *local_d0 = *piVar1;
          local_d0 = local_d0 + 1;
          goto LAB_0070bc0e;
        }
      }
      else {
        FUN_00452bf0(&local_d4,local_d0,piVar1);
LAB_0070bc0e:
        piVar2 = local_d0;
      }
      local_d0 = piVar2;
      uVar6 = uVar6 + 1;
    } while (uVar6 < uVar3);
  }
  iVar4 = ShaderSet_SelectVariantForDeclaration
                    (local_d8,vertexDeclaration,local_d4,(int)local_d0 - (int)local_d4 >> 2);
  if (iVar4 == -1) {
    pvVar5 = (void *)ShaderLibrary_FindByName(pvVar5,"shadererror",0,'\0');
  }
  else {
    pvVar5 = ShaderLibrary_FindDefinition(pvVar5,local_d8[2],iVar4,'\x01');
  }
  if ((local_d4 != (int *)0x0) && (local_d4 != local_c0)) {
    Memory_FreeIfNonNull(local_d4);
  }
  if (local_d8 != (int *)0x0) {
    (**(code **)(*local_d8 + 4))();
  }
  return pvVar5;
}

