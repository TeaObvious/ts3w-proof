/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Ghidra export refreshed on 2026-10-12 after WaterGeometry annotations.
   RE_ symbols and comments are analyst annotations, not original names.
   Read the paired original bytes and guides/water/README.md.
   Native ABI details not established by instructions remain inferred. */

/* Analyst annotation: WaterGeometry generation, optional publication and serialization.
   RE_ names identify analyst-assigned labels, not recovered original symbols.
   ECX supplies the generator state. Five explicit stack inputs are regionBounds,
   useRegionGeneration, publishVertices, optional outputStream, streamContext.
   The context is opaque; no endianness or ownership meaning is assumed.
   
   Instruction contract:
   - 00B605CF resets the existing batch end (state+80) to its begin (state+7C).
   - The temporary vertex array is four adjacent words: begin, end, capacity
     end and allocation tag. Elements have a twelve-byte in-memory stride.
   - useRegionGeneration selects 00B5FC40 with regionBounds, or 00B5F860.
     Naming this dispatch does not establish full shoreline tessellation parity.
   - 00B605FD..00B60613 computes (scratchEnd-scratchBegin)/12 and stores the
     vertex count at state+0, including zero.
   - 00B60611/16 skips publication for an empty array; otherwise publishVertices
     controls the call to 00B5CEB0 at 00B60626.
   - 00B60633/35 tests outputStream independently of the vertex count.
     When nonnull, 00B60644 calls shared writer 00B5CBA0 even for zero vertices.
     That writer emits geometry version 3 and either two zero query counts
     or the full cell/root grid, according to state+0xA1.
   - 00B6064D..00B60652 frees the temporary allocation if nonnull.
   
   This native function has no meaningful result established by its body.
   It is distinct from the outer Sea writer 00C0AB10 and its object wrapper
   00C0CEE0. Original bytes, not inferred helper prototypes, govern the claims. */

void __thiscall
RE_WaterGeometry_GenerateAndSerialize
          (void *this,float *regionBounds,char useRegionGeneration,char publishVertices,
          int *outputStream,undefined4 streamContext)

{
  int scratchBegin;
  int scratchEnd;
  undefined4 scratchCapacityEnd;
  char *scratchAllocationTag;
  
  scratchBegin = 0;
  scratchEnd = 0;
  scratchCapacityEnd = 0;
  scratchAllocationTag = "Misc/Pond/GeometryGenerator";
  *(undefined4 *)((int)this + 0x80) = *(undefined4 *)((int)this + 0x7c);
  if (useRegionGeneration == '\0') {
    FUN_00b5f860(this,&scratchBegin);
  }
  else {
    FUN_00b5fc40(this,&scratchBegin,regionBounds);
  }
                    /* Vertex array byte span /12 becomes state.vertexCount. This assignment also
                       records a valid zero-vertex result. */
  *(int *)this = (scratchEnd - scratchBegin) / 0xc;
  if ((scratchBegin != scratchEnd) && (publishVertices != '\0')) {
    FUN_00b5ceb0(this,&scratchBegin);
  }
                    /* Serialization is independent of publication and vertexCount. A nonnull
                       outputStream invokes the writer even if the generated list is empty. */
  if (outputStream != (int *)0x0) {
                    /* Invoke shared WaterGeometry writer 00B5CBA0, which writes geometry version3
                       and count-based query data. This is not the outer Sea-container writer. */
    FUN_00b5cba0(this,&scratchBegin,outputStream,streamContext);
  }
                    /* Temporary vertex storage is released after optional publication and
                       serialization. */
  if (scratchBegin != 0) {
    FUN_004e44e0(scratchBegin);
  }
  return;
}

