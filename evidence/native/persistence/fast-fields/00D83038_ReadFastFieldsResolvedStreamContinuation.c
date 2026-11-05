/* Final Ghidra decompilation after semantic annotation readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records exact ownership; generated C is not a callable replacement.
   Standalone 13-parameter signature, unaff_retaddr and giant synthetic stack array
   are decompiler artifacts of branch ingress with an already allocated predecessor frame.
   The saved decompiler transport omits EOL comments; the instruction notes below
   are copied consistently from the saved Ghidra comment readback. */

/* Analyst-assigned role: success continuation of registered Serializer_ReadFastFields at D83020,
   reached by JNE D83032. Requires EAX=resolved stream and predecessor-allocated 0x2C-byte frame;
   NOT an independent thirteen-parameter cdecl API. Preserved defined ownership [D83038,D83069] plus
   [D83070,D831EB]; six skipped bytes D8306A..6F are outside ownership. Array length is signed int
   at array+8, records begin+10 with 8-byte stride (UInt32 type code, signed field offset). Negative
   offsets/unsupported codes consume no bytes. Nonnull object path writes raw 1/2/4/8-byte payload
   at object+offset; null object path consumes same supported widths without stores. Read failure
   accumulates at reader+14, does not break loop or guard object store. EAX final zero-extends
   status, after auxiliary cleanup; no negative return sentinel. Jump data D831EC/ D83200 and
   D83210/ D83224 required, not executable body. Native reader implementation/host lifetime and
   runtime behavior remain separate. */

undefined1 __cdecl
ReadFastFieldsResolvedStreamContinuation
          (ushort param_1,uint param_2,uint param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,int *param_7,undefined4 param_8,uint param_9,undefined1 param_10,
          undefined4 param_11,int param_12,int param_13)

{
  int iVar1;
  undefined1 uVar2;
  int iVar3;
  bool bVar4;
  void *in_EAX;
  int iVar5;
  undefined4 *puVar6;
  byte unaff_retaddr;
  byte abStackY_7ffffffe [2147483618];

  /* D83038: EAX/stack preconditions are inherited from the branch at D83032. */
  StreamReader_Construct(&param_5,in_EAX,1);
  iVar3 = param_12;
  iVar5 = *(int *)(param_13 + 8);
  /* D83141: null object consumes supported records without object stores. */
  if (param_12 == 0) {
    if (0 < iVar5) {
      puVar6 = (undefined4 *)(param_13 + 0x10);
      do {
        if ((int)puVar6[1] < 0) goto switchD_00d83167_caseD_4;
        /* D83167: separate null-object targets D83210; selector bytes D83224. */
        switch(*puVar6) {
        case 2:
        case 3:
        case 0xb:
          bVar4 = Stream_ReadByte(param_7,(byte *)((int)register0x00000010 + 3));
          break;
        default:
          goto switchD_00d83167_caseD_4;
        case 7:
        case 10:
        case 0xf:
          bVar4 = Stream_ReadUInt64(param_7,(ulonglong *)&param_3,param_9);
          break;
        case 8:
        case 0xd:
          ReadUInt16AndAccumulateStatus(&param_5,&param_1);
          goto switchD_00d83167_caseD_4;
        case 9:
        case 0xc:
        case 0xe:
          bVar4 = Stream_ReadUInt32(param_7,&param_2,param_9);
        }
        StreamReader_AccumulateStatus(&param_5,bVar4);
switchD_00d83167_caseD_4:
        puVar6 = puVar6 + 2;
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
    }
  }
  else if (0 < iVar5) {
    puVar6 = (undefined4 *)(param_13 + 0x10);
    do {
      iVar1 = puVar6[1];
      /* D83075: negative offset consumes no stream data. */
      if (-1 < iVar1) {
        /* D83090: full code minus2, unsigned<=13; D83200 selectors then D831EC targets. */
        switch(*puVar6) {
        case 2:
        case 3:
        case 0xb:
          bVar4 = Stream_ReadByte(param_7,(byte *)((int)register0x00000010 + 3));
          StreamReader_AccumulateStatus(&param_5,bVar4);
          /* D830B7: store proceeds after false read; unaff_retaddr is a split-stack artifact. */
          *(byte *)(iVar1 + iVar3) = unaff_retaddr;
          break;
        case 7:
        case 10:
        case 0xf:
          bVar4 = Stream_ReadUInt64(param_7,(ulonglong *)&param_3,param_9);
          StreamReader_AccumulateStatus(&param_5,bVar4);
          *(uint *)(iVar1 + iVar3) = param_3;
          *(undefined4 *)(iVar1 + 4 + iVar3) = param_4;
          break;
        case 8:
        case 0xd:
          ReadUInt16AndAccumulateStatus(&param_5,&param_1);
          *(ushort *)(iVar1 + iVar3) = param_1;
          break;
        case 9:
        case 0xc:
        case 0xe:
          bVar4 = Stream_ReadUInt32(param_7,&param_2,param_9);
          StreamReader_AccumulateStatus(&param_5,bVar4);
          *(uint *)(iVar1 + iVar3) = param_2;
        }
      }
      puVar6 = puVar6 + 2;
      iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
  }
  uVar2 = param_10;
  StreamReader_ReleaseAuxiliary(&param_5);
  /* D831E4: actual EAX zero-extends preserved BL after cleanup, never a negative sentinel. */
  return uVar2;
}
