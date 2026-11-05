/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 sculpt product prefix and physical contract): Factory type04B30669
   constructsC9B0C0, installing107D36C whose+18 slot resolves this exact103-byte body. Physical ECX
   product plus one reader pointer stack word, RET4, AL local accumulated reader status. Reads
   UInt32 outer version. Unsigned version<2 stores byte1 atproduct+88; base C93470 then omits its
   own leading UInt32 brush-version read. For version>=2 the constructed byte88 remains0 and base
   C93470 consumes that second version word before Common C93100. This is not a universal eight-byte
   brush prefix. The outer body does not directly test/combine base returnedAL; native
   reader/context status and full product lifecycle remain separate. Preserve existing inferred
   prototype/body/bytes; current structural Common projection validates required prefix/Common bytes
   without claiming full native admission. */

undefined1 __thiscall TerrainSculptProduct_ReadCatalog(void *this,int *param_1)

{
  int *reader;
  bool readSucceeded;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader = param_1;
  StreamReader_Construct(local_18,param_1,1);
  readSucceeded = Stream_ReadUInt32(local_10,(uint *)&param_1,local_8);
  StreamReader_AccumulateStatus(local_18,readSucceeded);
  if (param_1 < (int *)0x2) {
    *(undefined1 *)((int)this + 0x88) = 1;
  }
  TerrainBrushProduct_ReadFields(this,reader);
  StreamReader_ReleaseAuxiliary(local_18);
  return local_4;
}

