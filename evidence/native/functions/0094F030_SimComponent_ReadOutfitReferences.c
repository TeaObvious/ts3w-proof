/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placement/source boundary. ECXcomponent; reader/context two words, RET8, ALsticky
   readerstatus+14. ContextUInt16+6<14 reads inlineTGI into+10, otherwise narrowUInt16handle via
   actual reference store; context>19 also reads secondhandle into+20. This wire reader is separate
   from Game metadata projections and full script Sim restoration. */

undefined1 __thiscall SimComponent_ReadOutfitReferences(void *this,void *param_1,int param_2)

{
  ushort uVar1;
  void *this_00;
  int iVar2;
  bool bVar3;
  
  iVar2 = param_2;
  this_00 = param_1;
  uVar1 = *(ushort *)(param_2 + 6);
  if (uVar1 < 0xe) {
    bVar3 = Stream_ReadResourceKeyTGI
                      (*(void **)((int)param_1 + 8),(void *)((int)this + 0x10),
                       *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  else {
    bVar3 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)&param_1,
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    ResourceReferences_ResolveNarrowHandle
              (*(void **)(iVar2 + 0x10),(ushort *)&param_1,(undefined4 *)((int)this + 0x10));
  }
  if (0x13 < uVar1) {
    bVar3 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)&param_1,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    ResourceReferences_ResolveNarrowHandle
              (*(void **)(iVar2 + 0x10),(ushort *)&param_1,(undefined4 *)((int)this + 0x20));
  }
  return *(undefined1 *)((int)this_00 + 0x14);
}

