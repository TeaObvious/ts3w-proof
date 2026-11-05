/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object record writer. Physical ECX registry; stack4 object, stack8 writer, stackC
   group context; RET0C; low-AL status, not a full-EAX UInt32 contract. Prior decompiler omitted
   third stack arg and aliased reused stack slots across indirect stream calls. Writes version10,
   backpatched registered-component hash count/order, product/alternate/VPXY UInt16 references,
   then934640 component dispatch. Full owned190instructions511bytes. Alternate/prototype resource
   producers and complete component child state remain separate contracts. Explicit custom storage
   records only proved physical ABI; no bytes/body/caller annotations changed. */

byte __thiscall
ObjectRegistry_WriteSavedObjectRecord(void *this,void *object,void *writer,void *groupContext)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  int unaff_EBX;
  int iVar4;
  uint *puVar5;
  uint unaff_retaddr;
  uint auStack_28 [9];
  void *pvStack_4;
  
  bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),10,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
  bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),0,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  iVar4 = 0;
  object = (void *)0x0;
  if (0 < *(int *)((int)this + 0x11c8)) {
    puVar5 = (uint *)((int)this + 0x10c4);
    do {
      if ((*(uint *)(unaff_retaddr + 0x2c) & puVar5[0x20]) != 0) {
        bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),*puVar5,*(uint *)((int)writer + 0x10)
                                  );
        StreamReader_AccumulateStatus(writer,bVar1);
        object = (void *)((int)object + 1);
      }
      iVar4 = iVar4 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar4 < *(int *)(unaff_EBX + 0x11c8));
  }
  iVar4 = (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
  if (iVar4 != -1) {
    cVar2 = (**(code **)(**(int **)((int)writer + 8) + 0x28))(unaff_EBX,0);
    if (cVar2 != '\0') {
      bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),unaff_retaddr,
                                 *(uint *)((int)writer + 0x10));
      StreamReader_AccumulateStatus(writer,bVar1);
      cVar2 = (**(code **)(**(int **)((int)writer + 8) + 0x28))(iVar4,0);
      if (cVar2 != '\0') goto LAB_00937d47;
    }
  }
  *(undefined1 *)((int)writer + 0x14) = 0;
LAB_00937d47:
  puVar5 = (uint *)((int)pvStack_4 + 0x18);
  uVar3 = ResourceReferences_RegisterKey(*(void **)((int)object + 0xc),puVar5,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar3,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar1);
  auStack_28[0] = 0;
  auStack_28[1] = 0;
  auStack_28[2] = 0;
  auStack_28[3] = 0;
  FUN_0093a200(puVar5,auStack_28);
  uVar3 = ResourceReferences_RegisterKey(*(void **)((int)object + 0xc),auStack_28,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar3,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar1);
  auStack_28[7] = *(undefined4 *)((int)pvStack_4 + 0x24);
  auStack_28[4] = 0;
  auStack_28[5] = 0;
  auStack_28[6] = 0x736884f1;
  ObjectResource_ReadPrototypeSignature(puVar5,(int *)&stack0xffffffd0,auStack_28 + 4);
  uVar3 = ResourceReferences_RegisterKey(*(void **)((int)object + 0xc),auStack_28 + 4,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar3,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar1);
  if (*(char *)((int)writer + 0x14) == '\0') {
    return 0;
  }
  bVar1 = ObjectComponents_WriteSelectedState(pvStack_4,writer,object);
  return bVar1;
}

