# SPT leaf meshes, map banks and branch texture controls

These are selected instruction contracts from the original PC 1.67 reference
identified in the [overview](../../references/retained-proof-overview.md). Internal names are analyst
assignments. Full function envelopes and actual annotated Ghidra C are retained;
the complete SPT grammar, constructors, generated geometry and rendering are not
established by this selection. No game, decoder or rendering test was executed.

## Source cursor and dispatch

The load/dispatch entry takes ECX owner and two stack words, returns Boolean AL,
and removes eight stack bytes. The two inputs go to an unexpanded source-cursor
constructor; their exact admission/copy contract remains open. A separate header
reader gates entry into body dispatch. The cursor stores offset, buffer and end.
The outer loop tests `offset < unsigned(end-buffer)` before reading another
four-byte token; this is not a full remaining-four-bytes check.

Selected dispatch joins are 60000 to the map bank at owner+0xdc, 50000 to branch
texture controls on owner[0], and 71000 to leaf meshes on owner[0]. Presence bytes
for the first two sections start false and become true after their readers
return. At finalization, map fallback runs only without section60000; texture
inheritance runs only without section50000. An unknown top-level word sets BL=1
at7BCF41. The tail first checks unsigned cursor<end-minus-buffer, then reads ONE
additional DWORD at7BCF7F BEFORE testing BL at7BCF84. At/past end it skips that
read. No local full-four-byte guard protects a short remaining tail. The branch
still reaches postprocessing and the final true result; it is not strict
unknown-tag rejection or an immediate consumed-offset guarantee. Normal cleanup frees the cursor's held
buffer. Header/source construction, other postprocessing and exceptional cleanup
remain unexpanded. [ASM](../../evidence/native/functions/007BCBE0_SptTree_LoadAndDispatchSections.asm) ([annotated pseudocode](../../evidence/native/functions/007BCBE0_SptTree_LoadAndDispatchSections.c))

The word reader uses ECX cursor, no stack arguments, returns EAX, and assembles
four ascending bytes as little endian. It updates the cursor after each byte.
There is no local length/overflow check; signedness belongs to the consumer.
[ASM](../../evidence/native/functions/007A9B30_SptCursor_ReadWordLE.asm) ([annotated pseudocode](../../evidence/native/functions/007A9B30_SptCursor_ReadWordLE.c))

The float reader reconstructs the same four bytes and executes FLD DWORD,
returning their FLOAT32 value through x87 ST0. This is **bit interpretation**,
without integer-to-float conversion, finite checks or range clamps.
[ASM](../../evidence/native/functions/007A9AE0_SptCursor_ReadFloatLE.asm) ([annotated pseudocode](../../evidence/native/functions/007A9AE0_SptCursor_ReadFloatLE.c))

The float3 reader takes ECX cursor and an output pointer, returns that pointer in
EAX and removes four stack bytes. Twelve bytes become three raw float words at
output+0/+4/+8 through MOVSS; no normalization or axis conversion occurs here.
[ASM](../../evidence/native/functions/007A9BD0_SptCursor_ReadFloat3LE.asm) ([annotated pseudocode](../../evidence/native/functions/007A9BD0_SptCursor_ReadFloat3LE.c))

The byte-string reader clears the output string, reads a little-endian UInt32
byte length, adjusts the allocation/length, copies that many raw bytes and
advances the cursor. It performs no UTF-8/UTF-16 decoding, trimming, separator
normalization or embedded-zero filtering. Local buffer bounds and allocator
failure containment are not established.
[ASM](../../evidence/native/functions/007A9CB0_SptCursor_ReadByteString.asm) ([annotated pseudocode](../../evidence/native/functions/007A9CB0_SptCursor_ReadByteString.c))

## Seven-channel map records and banks

`SptMap_ReadSevenChannels` has two **stack** pointers and RET8; incoming ECX is
unused. It discards one word without validating a begin marker, then reads until
70001. Tags70002..70008 replace strings in seven consecutive 16-byte descriptors
at offsets0..0x60. Repeated channel tags replace that channel's value. Unknown
words have no associated payload skip in this reader. Material meanings for the
seven channel positions are not recovered from their ordinal alone.
[ASM](../../evidence/native/functions/007B5D40_SptMap_ReadSevenChannels.asm) ([annotated pseudocode](../../evidence/native/functions/007B5D40_SptMap_ReadSevenChannels.c))

The bank reader takes ECX bank and one stack cursor, RET4. It loops until60001:

| Tag | Established destination/operation |
| --- | --- |
| 60002 | Seven-channel record at bank+0 |
| 60003 | Append seven-channel records to vector at+0x70 |
| 60004 | Append seven-channel records to vector at+0x80 |
| 60005 | Seven-channel record at+0x90 |
| 60006 | Byte string at+0x170 |
| 60009 | Seven-channel record at+0x100 |

Each collection discards one word, then reads a count. The original **signed
JLE** skips counts <=0, including words with the high bit set. Positive counts
parse and append 112-byte records without clearing existing records. Each
record owns seven copied strings; the temporary seven-string record is destroyed
after append. Repeated collections append again. The actual instructions use a
stack temporary, even where the C shows a fictitious `register0x00000010` pointer.
Allocator calls push six words; their old three-argument C projection must not
be used to invent a narrower ABI.
[ASM](../../evidence/native/functions/007B6210_SptMaps_ReadBankSection.asm) ([annotated pseudocode](../../evidence/native/functions/007B6210_SptMaps_ReadBankSection.c))

## Leaf mesh allocation, counts and vertex writes

The section reader takes ECX tree and one stack cursor, RET4, with no Boolean
result. It reads through71015. Tag71001 grows capacity of the pointer vector at
tree+0x128/+0x12c/+0x130 when needed; it does not declare the final actual count.
Each71002 allocates a 0x30-byte mesh record, closed by71014. Its name string is at
0, vertex vector at+0x10/+0x14/+0x18, index vector at+0x20/+0x24/+0x28.

| Tag | Established operation |
| --- | --- |
| 71003 | Read mesh name byte string |
| 71004 | Request vertex reserve through separate helper `0x007be580` |
| 71005 / 71011 | Begin / end one vertex |
| 71006 / 71007 / 71008 / 71009 | Three raw float words into vertex+0/+12/+24/+36 |
| 71010 | Two float words into vertex+48/+52 |
| 71012 | Grow index capacity if requested count exceeds current capacity |
| 71013 | Append one raw DWORD index |

An actual vertex appends **56 bytes**, growing the vector when full. The reader
zeros exactly its first twelve float lanes at each vertex start. It does **not**
initialize the two UV lanes there; only71010 writes them. The subsequent fourteen
DWORD copy includes those lanes. Consequently a missing71010 is not established
to produce deterministic zero UVs; no broader claim about all game inputs or
allocator state follows.

The declared reserves do not enforce actual vertex/index counts in this body.
No index-versus-vertex-range guard is present here. The vertex-reserve helper,
grow/failure paths, downstream attribute semantics and any earlier required
field validation remain separate. The template pointer is appended when its
end marker is reached. [ASM](../../evidence/native/functions/007BF590_SptTree_ReadLeafMeshSection.asm) ([annotated pseudocode](../../evidence/native/functions/007BF590_SptTree_ReadLeafMeshSection.c))

## Branch controls and absence fallback

The explicit section reader takes ECX tree and one stack cursor, RET4. The branch
pointer vector is at+0x58/+0x5c; the default branch pointer is at+0x124. It reads
**seven 44-byte controls for every explicit branch and then the default branch**.
The first control starts at branch+0x13650. A record consumes a discarded begin
word and reads through50003. After all records another word is discarded; these
discarded markers are not compared with required values in this function.

| Tag | Relative control offset/type |
| --- | --- |
| 50013 / 50014 / 50015 / 50016 | +0 / +4 / +8 / +0xc, float |
| 50004 / 50005 / 50008 / 50017 / 50010 | +0x10 / +0x14 / +0x18 / +0x1c / +0x20, float |
| 50006 / 50007 / 50009 / 50011 / 50012 / 50018 | +0x24 / +0x25 / +0x26 / +0x27 / +0x28 / +0x29, byte normalized from raw byte !=0 |

Duplicates overwrite fields. Unknown words have no associated payload skip here.
Constructor defaults and complete semantic names remain open.
[ASM](../../evidence/native/functions/007BD660_SptTree_ReadBranchTextureControls.asm) ([annotated pseudocode](../../evidence/native/functions/007BD660_SptTree_ReadBranchTextureControls.c))

The absence fallback takes ECX tree and no stack inputs. It visits explicit
branches only, excluding the default branch. For controls1..6, nonzero byte+0x29
causes **REP MOVSD11**, copying the *entire* 44-byte primary control. This includes
the inheritance flag and padding, not only the numeric/Boolean semantic fields.
The load caller invokes this helper only when50000 was absent; it does not apply
this fallback to the explicitly authored section on its selected path.
[ASM](../../evidence/native/functions/007BD860_SptTree_InheritMissingTextureControls.asm) ([annotated pseudocode](../../evidence/native/functions/007BD860_SptTree_InheritMissingTextureControls.c))

The [187 necessary original switch bytes](spt-section-switches.tsv) retain the
indirect tag-to-handler maps, including the leaf reader's byte selector. They
were checked against the original file; compiler jump tables are not invented
format constants. Whole-format acceptance, authored defaults, caller allocation
lifetime, additional native consumers and actual generated geometry remain open.
