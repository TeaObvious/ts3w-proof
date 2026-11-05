/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXproduct+stream one stackword RET4, AL status. Reads and consumes outer DWORD version
   without comparing or storing it; calls shared C93100 Common reader; reads full DWORD tool ID
   to88. No trailing EOF or enum1..3 validation. Common price is raw binary32 at58; unknown tool IDs
   remain actual keys. The outer status combines its own read operations; full corrupt Common
   failure behavior is a separate shared-reader contract. */

bool __thiscall ToolProxyProduct_Read(void *this,undefined *stream)

{
  undefined *reader;
  bool bVar1;
  uint local_1c;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader = stream;
  StreamReader_Construct(local_18,stream,1);
  bVar1 = Stream_ReadUInt32(local_10,&local_1c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  CatalogProduct_ReadCommonFields(this,reader);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&stream,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(undefined **)((int)this + 0x88) = stream;
  StreamReader_ReleaseAuxiliary(local_18);
  return (bool)local_4;
}

