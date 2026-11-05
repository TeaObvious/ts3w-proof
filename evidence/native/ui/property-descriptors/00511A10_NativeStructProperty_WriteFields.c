/* Original TS3W PC 1.67; reference identity: evidence/reference.json.
 * Actual saved Ghidra C; current full name: NativeStructProperty_WriteFields.
 * The actual exported suffix below is unchanged, including generated ABI/types and known projection limits.
 * DB EOL comments are preserved as addressed annotations; no inline placement is inferred.
 * Save was acknowledged; no reopen test or original runtime observation is claimed.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00511A21 [EOL]: Destination type metadata+10 supplies subfield count; metadata+C supplies20byte descriptor rows.
 * 00511A44 [EOL]: Skip readonly flag8000 rows; low12bit tag1 rows are skipped at the next comparison too.
 * 00511A50 [EOL]: Signed16 source offset from row+E is added to source value address, not an unsigned field key.
 * 00511A75 [EOL]: Write this subfield through generic descriptor writer; previous successful field writes are not rolled back on later failure.
 * 00511A7A [EOL]: Only child AL is tested; stop immediately on failed field write.
 * 00511A85 [EOL]: Success is AL1 only, including zero-fields/all-skipped; inherited upperEAX is not a normalized boolean.
 * 00511A8F [EOL]: Failure clears AL only; previously written subfields can remain changed.
 */



/* Analyst-assigned generic structured-property field writer; original PC1.67, existing
   owned00511A10..00511A95 (134bytes/54instructions), unchanged. Three caller-clean stackwords:
   destination value/context, source value, allocator. First destinationDWORD points to type
   metadata whose+C rows pointer and+10 row count drive20byte descriptors. Skip rows with flag8000
   or low12bit tag1. For each other row construct
   inputValue={type0,sourceBase+signed16(row+E),rowCount}; call existing
   NativePropertyDescriptor_Write with that row, destination context, temporary input value and
   allocator, consuming its AL result. Return AL1 after all rows, including zero fields/all skipped;
   AL0 immediately on first failed write. UpperEAX is inherited, not normalized success. Earlier
   field writes are not rolled back, so a partial update can remain after AL0. Source/destination
   pointers and descriptor count/offsets are trusted locally; no allocation/refcount, full struct
   memcpy, atomicity or notification is supplied here. Rect-like metadataFBCDE0 selects four
   primitiveFloat32 subrows; hidden Frame state metadataFBD8B4 has its own enum callback dependency.
   Those concrete nested metadata/callback contracts are separate from this generic body. */

undefined4 __cdecl
NativeStructProperty_WriteFields
          (int *destinationValueContext,int sourceValueContext,void *allocator)

{
  uint uVar1;
  uint fieldTag;
  uint3 extraout_var;
  int remainingFieldCount;
  void *fieldCursor;
  undefined4 sourceFieldType;
  int sourceFieldAddress;
  undefined4 sourceFieldCount;
  void *fieldDescriptor;
  bool fieldWriteSucceeded;
  
  uVar1 = *destinationValueContext;
  remainingFieldCount = *(int *)(uVar1 + 0x10);
  fieldCursor = *(void **)(uVar1 + 0xc);
  do {
    do {
      fieldDescriptor = fieldCursor;
      if (remainingFieldCount == 0) {
        return CONCAT31((int3)(uVar1 >> 8),1);
      }
      uVar1 = (uint)*(ushort *)((int)fieldDescriptor + 0xc);
      remainingFieldCount = remainingFieldCount + -1;
      fieldCursor = (void *)((int)fieldDescriptor + 0x14);
    } while (((short)*(ushort *)((int)fieldDescriptor + 0xc) < 0) ||
            (fieldTag = uVar1 & 0xfff, uVar1 = 0, fieldTag == 1));
    sourceFieldAddress =
         (int)*(short *)((int)fieldDescriptor + 0xe) + *(int *)(sourceValueContext + 4);
    sourceFieldCount = *(undefined4 *)((int)fieldDescriptor + 0x10);
    sourceFieldType = 0;
    fieldWriteSucceeded =
         NativePropertyDescriptor_Write
                   (fieldDescriptor,destinationValueContext,&sourceFieldType,allocator);
    uVar1 = CONCAT31(extraout_var,fieldWriteSucceeded);
  } while (fieldWriteSucceeded);
  return (uint)extraout_var << 8;
}

