/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Resource-table context offset 0x82 selects a UInt32 or UInt16 handle read before the
   corresponding existing resolver. Preserves the stream sticky-status update. Stored prototype and
   downstream resolver details are unchanged.
   
   Ceiling-material actual consumer A48A2E passes enclosing context and stream; version
   doesNOTchoose width. Flag82nonzero reads fullUInt32 then wide resolver7D6B50; elseUInt16 then
   narrow7D7190. Every read updates sticky stream status. Host int-key dictionary represents the
   same raw32handle bits; no signed ordering is required for equality. Missing host context must not
   be reinterpreted as a valid narrow0/default key. */

void __thiscall ResourceReferences_ReadContextKey(void *this,void *param_1,undefined4 *param_2)

{
  void *this_00;
  bool bVar1;
  
  this_00 = param_1;
  if (*(char *)((int)this + 0x82) == '\0') {
    bVar1 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)&param_1,
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    ResourceReferences_ResolveNarrowHandle(this,(ushort *)&param_1,param_2);
    return;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&param_1,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  ResourceReferences_ResolveWideHandle(this,(uint *)&param_1,param_2);
  return;
}

