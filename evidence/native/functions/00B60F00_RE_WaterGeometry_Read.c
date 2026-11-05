/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Ghidra export refreshed on 2026-10-12 after WaterGeometry annotations.
   RE_ symbols and comments are analyst annotations, not original names.
   Read the paired original bytes and guides/water/README.md.
   Native ABI details not established by instructions remain inferred. */



/* Analyst annotation: shared WaterGeometry reader, original PC 1.67 TS3W.exe.
   RE_ names identify analyst-assigned labels, not recovered original symbols.
   ECX is the generator/geometry state. The two stack arguments are the input
   stream and an opaque serialization context. Do not infer a managed bridge.
   
   Instruction contract:
   - 00B60F64/69 rejects signed geometry versions below 2.
   - 00B60F94/96 bypasses vertex loading for count <=0; zero is supported,
     but this is not evidence that negative counts form a valid resource.
   - Positive counts call 00B60750, which checks divisibility by three,
     reads eleven persisted bytes per vertex and builds spatial batches.
   - 00B60FD2/D8 selects the cell/root section for signed versions >=3.
     00B60FF5 reads cellCount; 00B6100B reads each cell via 00B5C120.
     Cells occupy 40 bytes in memory but 39 serialized bytes.
   - 00B61065 reads rootRowCount; 00B6109B reads each length-prefixed
     int32 index row through 007D99B0. Two zero counts explain the eight
     zero bytes observed on the grid-disabled global Sea writer path.
   - Nonempty scratch vertices are published via 00B5CEB0; allocation is
     freed via 004E44E0. Success/failure is returned in AL, not the full EAX.
   
   Decompiler hazards: inputStream's incoming stack slot is later reused for
   rootRowCount; streamContext's stack slot is reused for geometryVersion.
   Those reused names and pointer casts are storage coalescing, not stream or
   pointer semantics of the counts. The cell array fields are state+5C/+60/+64;
   root rows start at state+6C. Unresolved context/ABI details remain inferred.
   Original instruction bytes govern this annotation. */

uint __thiscall RE_WaterGeometry_Read(void *this,int *inputStream,uint streamContext)

{
  void *allocation;
  bool bVar1;
  undefined4 uVar2;
  uint extraout_EAX;
  undefined4 extraout_EAX_00;
  int *piVar3;
  uint uVar4;
  int iVar5;
  uint cellCount;
  uint vertexCount;
  void *scratchBegin;
  void *scratchEnd;
  undefined4 scratchCapacityEnd;
  char *scratchAllocationTag;
  undefined1 readerContext [8];
  void *readerStream;
  uint local_30;
  char readerValid;
  undefined4 cellRecord40Bytes [10];
  undefined4 *cellDestination;
  uint *rootRows;
  
  uVar4 = 0;
  if (inputStream != (int *)0x0) {
    StreamReader_Construct(readerContext,inputStream,streamContext);
    scratchBegin = (void *)0x0;
    scratchEnd = (void *)0x0;
    scratchCapacityEnd = 0;
    scratchAllocationTag = "Renderer/WaterGeometryGenerator/ScratchArray";
                    /* The incoming streamContext stack slot is reused for the serialized
                       geometryVersion. The decompiler keeps the parameter name; the value below is
                       a signed format version. */
    streamContext = 0;
    bVar1 = Stream_ReadUInt32(readerStream,&streamContext,local_30);
    StreamReader_AccumulateStatus(readerContext,bVar1);
                    /* Signed geometryVersion >=2. This executable has no upper-version bound here;
                       >=3 selects the query-grid branch, not a fixed eight-byte trailer. */
    if ((readerValid != '\0') && (1 < (int)streamContext)) {
      vertexCount = 0;
      bVar1 = Stream_ReadUInt32(readerStream,&vertexCount,local_30);
      StreamReader_AccumulateStatus(readerContext,bVar1);
                    /* vertexCount <=0 bypasses the vertex reader. Zero is a supported empty case;
                       no validity claim is made for negative counts. */
      if (((int)vertexCount < 1) ||
         (uVar2 = FUN_00b60750(this,vertexCount,readerContext,&scratchBegin), (char)uVar2 != '\0'))
      {
                    /* For geometryVersion >=3 read cellCount/cells, then
                       rootRowCount/length-prefixed index rows. */
        if (2 < (int)streamContext) {
          *(undefined4 *)((int)this + 0x60) = *(undefined4 *)((int)this + 0x5c);
          cellCount = 0;
          StreamReader_ReadUInt32Into(readerContext,&cellCount);
          uVar4 = 0;
          if (cellCount != 0) {
            do {
                    /* Read one 39-byte persisted cell via 00B5C120; the destination record has
                       40-byte in-memory stride. */
              FUN_00b5c120(cellRecord40Bytes,readerContext);
              cellDestination = *(undefined4 **)((int)this + 0x60);
              if (cellDestination < *(undefined4 **)((int)this + 100)) {
                *(undefined4 **)((int)this + 0x60) = cellDestination + 10;
                if (cellDestination != (undefined4 *)0x0) {
                  FUN_00b5bf20(cellDestination,cellRecord40Bytes);
                }
              }
              else {
                FUN_00b5ec00((void *)((int)this + 0x5c),cellDestination,cellRecord40Bytes);
              }
              uVar4 = uVar4 + 1;
            } while (uVar4 < cellCount);
          }
          rootRows = (uint *)((int)this + 0x6c);
          FUN_006223a0(rootRows);
                    /* The incoming inputStream stack slot is reused for rootRowCount (u32). Later
                       pointer-typed comparisons/casts are decompiler storage-coalescing artifacts.
                        */
          inputStream = (int *)0x0;
          bVar1 = Stream_ReadUInt32(readerStream,(uint *)&inputStream,local_30);
          StreamReader_AccumulateStatus(readerContext,bVar1);
          if (inputStream != (int *)0x0) {
            FUN_00b60e90(rootRows,(uint)inputStream);
            piVar3 = (int *)0x0;
            if (inputStream != (int *)0x0) {
              iVar5 = 0;
              do {
                    /* Read one length-prefixed int32 root row. In-memory row descriptors are 16
                       bytes; that is not the persisted row length. */
                FUN_007d99b0(readerContext,(undefined4 *)(*rootRows + iVar5));
                piVar3 = (int *)((int)piVar3 + 1);
                iVar5 = iVar5 + 0x10;
              } while (piVar3 < inputStream);
            }
          }
        }
        allocation = scratchBegin;
        if (scratchBegin != scratchEnd) {
          if (*(char *)((int)this + 0xb4) == '\0') {
            VertexDeclaration_CreateFromElements
                      ((void *)((int)this + 0x18),(NativeVertexElement8 *)&DAT_0106eac8,2);
            *(undefined1 *)((int)this + 0xb4) = 1;
          }
          FUN_00b5ceb0(this,(int *)&scratchBegin);
        }
        if (allocation != (void *)0x0) {
          Memory_FreeIfNonNull(allocation);
        }
        StreamReader_ReleaseAuxiliary(readerContext);
                    /* Only AL=1 is established as the success result. Upper EAX bits are
                       incidental; CONCAT31 in pseudocode does not describe a multi-field API
                       result. */
        return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
      }
      if (scratchBegin != (void *)0x0) {
        Memory_FreeIfNonNull(scratchBegin);
      }
    }
    StreamReader_ReleaseAuxiliary(readerContext);
    uVar4 = extraout_EAX;
  }
  return uVar4 & 0xffffff00;
}

