/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: SPKG v2 reader. Checks little-endian SPKG and version 2, then SHDB, SMDB, SETS, SHDS and
   optional LINK chunks before END. SHDB feeds the vertex/pixel bytecode database; SMDB holds
   sampler presets; SETS and SHDS build set/definition collections. Low AL is success; failure
   clears the reader state. Verify each chunk boundary against the original instructions. */

uint __thiscall
ShaderPackage_ReadSPKG
          (void *this,undefined4 *param_1,void *param_2,uint param_3,char param_4,undefined4 param_5
          )

{
  char cVar1;
  undefined4 *this_00;
  void *pvVar2;
  char cVar3;
  bool bVar4;
  int iVar5;
  uint uVar6;
  uint extraout_EAX;
  uint extraout_EAX_00;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  bVar4 = Stream_ReadUInt32((void *)param_1[2],&local_8,param_1[4]);
  StreamReader_AccumulateStatus(this_00,bVar4);
  bVar4 = Stream_ReadUInt32((void *)this_00[2],&local_c,this_00[4]);
  StreamReader_AccumulateStatus(this_00,bVar4);
  if ((local_8 == 0x474b5053) && (local_c == 2)) {
    bVar4 = Stream_ReadUInt32((void *)this_00[2],(uint *)&param_1,this_00[4]);
    StreamReader_AccumulateStatus(this_00,bVar4);
    if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x42444853)) {
      StreamReader_ReadUInt32Into(this_00,&local_4);
      iVar5 = StreamContext_GetPositionAndMarkNegative(this_00);
      pvVar2 = param_2;
      if ((char)param_3 != '\0') {
        ShaderDatabase_ReadLINKAndDBUF(*(void **)this,this_00,(uint)param_2,param_5);
      }
      uVar6 = StreamContext_SeekWithSignedAbsoluteGuard(this_00,iVar5 + local_4,0);
      if (*(char *)(this_00 + 5) != '\0') {
        StreamReader_ReadUInt32Into(this_00,(uint *)&param_1);
        if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x42444d53)) {
          uVar6 = ShaderSamplerDatabase_ReadSMPS(*(void **)((int)this + 4),this_00);
          if (*(char *)(this_00 + 5) == '\0') goto LAB_0079d3cf;
          StreamReader_ReadUInt32Into(this_00,(uint *)&param_1);
          if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x53544553)) {
            uVar6 = ShaderPackage_ReadSSETSets(this,this_00,local_c);
            if (*(char *)(this_00 + 5) == '\0') goto LAB_0079d3cf;
            StreamReader_ReadUInt32Into(this_00,(uint *)&param_1);
            if ((*(char *)(this_00 + 5) != '\0') && (param_1 == (undefined4 *)0x53444853)) {
              ShaderPackage_ReadSBLKDefinitions(this,this_00,pvVar2);
              StreamReader_ReadUInt32Into(this_00,(uint *)&param_1);
              cVar3 = param_4;
              cVar1 = *(char *)(this_00 + 5);
              while (cVar1 != '\0') {
                if (param_1 != (undefined4 *)0x204d4e4b) {
                  if (param_1 == (undefined4 *)0x20444e45) {
                    return CONCAT31(0x20444e,*(undefined1 *)(this_00 + 5));
                  }
                  break;
                }
                StreamReader_ReadUInt32Into(this_00,&param_3);
                iVar5 = StreamContext_GetPositionAndMarkNegative(this_00);
                if (cVar3 != '\0') {
                  ShaderNameTable_ReadKNM(*(void **)((int)this + 8),(int *)this_00[2]);
                }
                StreamContext_SeekWithSignedAbsoluteGuard(this_00,iVar5 + param_3,0);
                StreamReader_ReadUInt32Into(this_00,(uint *)&param_1);
                cVar1 = *(char *)(this_00 + 5);
              }
            }
          }
        }
        StreamReader_AccumulateStatus(this_00,0);
        *(undefined1 *)(this_00 + 5) = 0;
        uVar6 = extraout_EAX;
      }
LAB_0079d3cf:
      return uVar6 & 0xffffff00;
    }
  }
  StreamReader_AccumulateStatus(this_00,0);
  *(undefined1 *)(this_00 + 5) = 0;
  return extraout_EAX_00 & 0xffffff00;
}

