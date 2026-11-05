/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical cdecl three stack
   arguments: nonnull visual-proxy interface pointer, UInt32 requested resource type,
   writable16-byte output key; plainRET, AL Boolean. Outer vector begin/end at+28/+2C uses20-byte
   records, signed division by20 compiled with IMUL66666667/SAR3/sign adjustment; do not interpret
   decompiler magic-multiply artifacts as a hash. Each record key vector at+4/+8 contains16-byte
   keys; count uses SAR4. Iterate physical outer/inner order, compare key+8 type exactly, copy all
   four words of FIRST matching key and returnAL1. No matching key returnsAL0 without output write.
   Loop counters compare unsigned JB. No null-interface guard or malformed-vector validation is
   present. No global LOD priority is imposed beyond physical first matching type; caller requests
   MODL explicitly. */

bool __cdecl VisualProxy_FindFirstResourceOfType(void *visualProxy,uint resourceType,void *outKey)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  
  iVar3 = *(int *)((int)visualProxy + 0x2c) - *(int *)((int)visualProxy + 0x28);
  iVar1 = iVar3 >> 0x1f;
  iVar3 = iVar3 / 0x14 + iVar1;
  uVar6 = 0;
  if (iVar3 != iVar1) {
    piVar7 = (int *)(*(int *)((int)visualProxy + 0x28) + 4);
    do {
      uVar5 = 0;
      uVar2 = piVar7[1] - *piVar7 >> 4;
      if (uVar2 != 0) {
        puVar4 = (undefined4 *)*piVar7;
        do {
          if (puVar4[2] == resourceType) {
            *(undefined4 *)outKey = *puVar4;
            *(undefined4 *)((int)outKey + 4) = puVar4[1];
            *(undefined4 *)((int)outKey + 8) = puVar4[2];
            *(undefined4 *)((int)outKey + 0xc) = puVar4[3];
            return true;
          }
          uVar5 = uVar5 + 1;
          puVar4 = puVar4 + 4;
        } while (uVar5 < uVar2);
      }
      uVar6 = uVar6 + 1;
      piVar7 = piVar7 + 5;
    } while (uVar6 < (uint)(iVar3 - iVar1));
  }
  return false;
}

