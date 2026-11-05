/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 resident-animation source comparison): Analyst role from complete original
   dataflow and actual allocator debug identities, not a recovered C++ symbol. Physical ECX resource
   plus three stack DWORDs; RET0C. First is stream/resource wrapper, second slot unused here, third
   low byte requests endian conversion of byteLength>>2 DWORDs through7D3070. Unsigned size>=0C;
   count at data+8; check unsigned size>=wrap32(count*34+0C), with no separate overflow rejection
   and no header-tag/version check in this body. Null buffer with admitted size is not guarded.
   Call70D010 and test only AL. Copy count*4 original joint hashes from data+0C, then expand
   each12-float record into four rows {i0,i4,i8,0}, {i1,i5,i9,0}, {i2,i6,i10,0}, {i3,i7,i11,1}.
   Original F998F8 word3F800000 supplies final1, XORPS supplies zeros; input step30 hex, output
   step40 hex, loop compares unsigned index<count freshly read from data+8. Record
   wrap32(retainedCount*44+38) via731BE0 and set AL1; all rejection branches XOR AL,AL. Upper EAX is
   unspecified, so actual boolean return is instruction-proven. Original does not here validate
   palette-to-rig hashes, finite matrices or expose current host worker/generation policy. Preserve
   original allocator/stream prototypes and resulting decompiler partial-register artifacts; do not
   add inferred missing parameters. */

bool __thiscall
SkinResource_ReadJointNamesAndBindPose(void *this,int *param_1,undefined4 param_2,char param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  float fVar12;
  bool bVar13;
  uint uVar14;
  void *_Dst;
  uint *puVar15;
  uint *puVar16;
  uint *puVar17;
  size_t _Size;
  
  if (param_1[1] == 0) {
    puVar17 = (uint *)0x0;
  }
  else {
    puVar17 = *(uint **)(param_1[1] + 8);
  }
  uVar14 = (**(code **)(*param_1 + 0x1c))();
  if (0xb < uVar14) {
    if (param_3 != '\0') {
      FUN_007d3070(puVar17,uVar14 >> 2);
    }
    if ((puVar17[2] * 0x34 + 0xc <= uVar14) &&
       (bVar13 = SkinResource_AllocateJointStorage(this,puVar17[2]), bVar13)) {
      _Size = puVar17[2] * 4;
      puVar15 = puVar17 + 3;
      puVar16 = puVar15 + puVar17[2];
      _Dst = (void *)FUN_00c2ed00((int)this);
      memcpy(_Dst,puVar15,_Size);
      puVar15 = (uint *)FUN_0068f130((int)this);
      uVar14 = 0;
      if (puVar17[2] != 0) {
        do {
          uVar1 = puVar16[3];
          uVar2 = puVar16[5];
          uVar3 = puVar16[9];
          uVar4 = puVar16[2];
          uVar5 = puVar16[6];
          uVar6 = puVar16[10];
          uVar7 = puVar16[7];
          uVar8 = puVar16[0xb];
          uVar9 = puVar16[8];
          uVar10 = puVar16[4];
          uVar11 = *puVar16;
          puVar15[4] = puVar16[1];
          puVar15[5] = uVar2;
          puVar15[6] = uVar3;
          puVar15[7] = 0;
          puVar15[8] = uVar4;
          puVar15[9] = uVar5;
          puVar15[10] = uVar6;
          puVar15[0xb] = 0;
          fVar12 = FLOAT_00f998f8;
          *puVar15 = uVar11;
          puVar15[1] = uVar10;
          puVar15[2] = uVar9;
          puVar15[3] = 0;
          puVar15[0xc] = uVar1;
          puVar15[0xd] = uVar7;
          puVar15[0xe] = uVar8;
          puVar15[0xf] = (uint)fVar12;
          uVar14 = uVar14 + 1;
          puVar16 = puVar16 + 0xc;
          puVar15 = puVar15 + 0x10;
        } while (uVar14 < puVar17[2]);
      }
      FUN_00731be0(this,*(int *)((int)this + 0x28) * 0x44 + 0x38);
      return true;
    }
  }
  return false;
}

