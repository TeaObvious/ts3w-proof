/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX0x50-byte primitive, one matrix pointer word,
   RET4. Copies four translation DWORDs+30..3C to+00..0C, m00 to+40 and m02 to+44. No normalization,
   pitch/roll extraction or scale copy. Logical managed translation projectsXYZ only. */

void __thiscall TreePrimitive_SetYawTranslation(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = param_1[0xd];
  uVar2 = param_1[0xe];
  uVar3 = param_1[0xf];
  *(undefined4 *)this = param_1[0xc];
  *(undefined4 *)((int)this + 4) = uVar1;
  *(undefined4 *)((int)this + 8) = uVar2;
  *(undefined4 *)((int)this + 0xc) = uVar3;
  *(undefined4 *)((int)this + 0x40) = *param_1;
  *(undefined4 *)((int)this + 0x44) = param_1[2];
  return;
}

