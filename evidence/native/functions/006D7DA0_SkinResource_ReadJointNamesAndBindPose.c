/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  bool bVar12;
  uint uVar13;
  void *_Dst;
  uint *puVar14;
  uint *puVar15;
  uint *puVar16;
  size_t _Size;
  
  if (param_1[1] == 0) {
    puVar16 = (uint *)0x0;
  }
  else {
    puVar16 = *(uint **)(param_1[1] + 8);
  }
  uVar13 = (**(code **)(*param_1 + 0x1c))();
  if (0xb < uVar13) {
    if (param_3 != '\0') {
      ResourceBytes_SwapDwordsInPlace(puVar16,uVar13 >> 2);
    }
    if ((puVar16[2] * 0x34 + 0xc <= uVar13) &&
       (bVar12 = SkinResource_AllocateJointStorage(this,puVar16[2]), bVar12)) {
      _Size = puVar16[2] * 4;
      puVar14 = puVar16 + 3;
      puVar15 = puVar14 + puVar16[2];
      _Dst = (void *)FUN_00c2ed00((int)this);
      memcpy(_Dst,puVar14,_Size);
      puVar14 = (uint *)FUN_0068f130((int)this);
      uVar13 = 0;
      if (puVar16[2] != 0) {
        do {
          uVar1 = puVar15[3];
          uVar2 = puVar15[5];
          uVar3 = puVar15[9];
          uVar4 = puVar15[2];
          uVar5 = puVar15[6];
          uVar6 = puVar15[10];
          uVar7 = puVar15[7];
          uVar8 = puVar15[0xb];
          uVar9 = puVar15[8];
          uVar10 = puVar15[4];
          uVar11 = *puVar15;
          puVar14[4] = puVar15[1];
          puVar14[5] = uVar2;
          puVar14[6] = uVar3;
          puVar14[7] = 0;
          puVar14[8] = uVar4;
          puVar14[9] = uVar5;
          puVar14[10] = uVar6;
          puVar14[0xb] = 0;
          *puVar14 = uVar11;
          puVar14[1] = uVar10;
          puVar14[2] = uVar9;
          puVar14[3] = 0;
          puVar14[0xc] = uVar1;
          puVar14[0xd] = uVar7;
          puVar14[0xe] = uVar8;
          puVar14[0xf] = (uint)1.0;
          uVar13 = uVar13 + 1;
          puVar15 = puVar15 + 0xc;
          puVar14 = puVar14 + 0x10;
        } while (uVar13 < puVar16[2]);
      }
      FUN_00731be0(this,*(int *)((int)this + 0x28) * 0x44 + 0x38);
      return true;
    }
  }
  return false;
}

