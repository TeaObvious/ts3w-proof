# Typed wall graph identity versus heuristic projection

Original PC1.67 resource312E7545 has7 prefix DWORDs(version,signed baselevel,
width,depth,auxiliary,next vertexID,next sectionID), then vertex count and16-byte
vertex rows(ID,binary32X,binary32Z,signedlevel), room count/IDs, section count and
20-byte rows(ID,vertexA,roomA,vertexB,roomB). An empty graph is40bytes.

- [WallGraph_ReadResource ASM](../../evidence/native/functions/00C43F00_WallGraph_ReadResource.asm) ([C](../../evidence/native/functions/00C43F00_WallGraph_ReadResource.c)): Complete original reader. ECX graph, stream/group/instance low/high, RET10, AL sticky status. Reads and retains arbitrary vertex/room IDs; each section reference is resolved by searching stored IDs in the corresponding collection, not by direct array indexing. Missing matches become null before C43D50/C439D0 section consumers. Array count loop entry uses signed positive comparison. Close then return status; malformed allocation/stream mutation is not converted into a pure-array null policy.
- [WallGraph_WriteResource ASM](../../evidence/native/functions/00C3F910_WallGraph_WriteResource.asm) ([C](../../evidence/native/functions/00C3F910_WallGraph_WriteResource.c)): Existing canonical writer. Stored signed-byte coordinates are sign-extended and converted to binary32; section data comes from live half-edge ownership. Retained counters are not vertex/section counts and serialized IDs need not be contiguous.

The current compact projection's44-byte header, offsets20/24-as-counts, floats at
vertex+8/+12, dense indices, positional V4 join and V2 split-word anchor counts
remain heuristic implementation observations. They do not implement this typed
reader/writer grammar and must not be certified by correlated output alone.
Native render consumers and replacement of the heuristic are separate work.

The new reader pair contains450instructions/1255bytes matching the pristine
executable. Actual annotated Ghidra C retains representation artifacts explicitly;
no fabricated pseudocode replaces it. Original database saved clean, bytes
unchanged. This is static evidence, not original gameplay execution.
