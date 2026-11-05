# Medieval object resource layouts

This is original-asset structural evidence for the separate Medieval PC
2.0.113.00001 [reference corpus](../../references/retained-proof-overview.md#medieval-asset-reference).
It is not a native Medieval reader/writer decompilation. Original native failure,
ownership, routing-policy and malformed-input behavior remain unresolved.
No original Medieval executable was run to establish these layouts.

The selected six packages contain 5,008 nondeleted VPXY, 334 RSLT and 1,488 FTPT
rows. Each grammar below accounts for the complete selected blocks; deletion
rows have no payload and are excluded. Counts include raw package rows, rather
than only winning identities after delta precedence. The slot/footprint frames
have one public RCOL chunk, no external references and the same complete chunk
identity as their package resource key.

## VPXY version 5

The common prefix is tag `VPXY`, UInt32 version 5, UInt32 relative TGI offset and
UInt32 table extent. The table position is `12 + offset`, relative to the block.
A byte entry count precedes the entries. Type 0 has byte ID, byte key count and
UInt32 table indices; type 1 has one UInt32 index. A discriminator byte 2 follows,
then six Single bounds fields and four further bytes. The table follows directly:
there is no modular byte or optional modular index between that word and table.
The additional word is zero throughout this selected corpus; its meaning is open.

4,690 resources contain a UInt32 count and that many TGI keys, each UInt32 type,
UInt32 group, UInt64 instance. Their extent is `4 + 16 * count` and the table ends
the block. The remaining 318 resources encode an omitted empty table: extent zero,
table position at block end, no count DWORD. Their entry count is zero and their
block length is 46 bytes. Absence of the count word is part of the encoding.

Example: Evil throne VPXY `736884F1:00000000:543AE3FF7530B7F1` has seven entries,
relative offset `0x47`, table position `0x53`, extent `0x74`, seven TGI keys and
199 block bytes. Its direct references include the corresponding MODL, RIG and
RSLT `AAD971FFA6403DEC`, and FTPT `543AE3FF7530B7F1`.

The PC 1.67 Sims 3 reader rejects version 5; its verified v1–4 contract is a
separate reference, not confirmation of Medieval serialization.
[Original Sims 3 reader ASM](../../evidence/native/functions/0093C270_VisualProxyResource_ReadStream.asm) ([annotated pseudocode](../../evidence/native/functions/0093C270_VisualProxyResource_ReadStream.c)).

## RSLT version 5

After tag/version, five UInt32 category counts describe route, containment,
effect, inverse-kinematics target and cone categories, in that order. The selected
corpus contains no cones; its possible version-5 cone extension is unestablished.

For each populated category, name hashes and bone hashes are parallel DWORD
arrays. Routes add one additional DWORD per row after the bone array. Containment
has its existing parallel word array. Twelve Single fields per row describe the
three authored transform rows, including translation. A populated category then
has an offset-count DWORD and that many records of slot-index DWORD followed by
six Singles. Empty categories have no offset-count field. The next category
immediately follows. The meaning of the extra route words is not native-confirmed.
Across the selected route arrays, 549 words are zero and 76 are one.

The throne RSLT `D3044521:00000000:AAD971FFA6403DEC` has category counts
`1,2,2,4,0`, one zero route word, two container words `0x100`, zero offset records
in every populated category and 560 block bytes. Its front route is name hash
`31229A4C`, bone `2D1B3C1A`, with authored translation `(0,0,2)`. One containment
row has name `A820F8A6`, bone `A6817820` and translation
`(0,0.9968730211257935,0.12731100618839264)`.

## FTPT version 7

After tag/version is one byte area count. Each area contains, in order:

- UInt32 name, byte priority and UInt32 area word.
- Byte polygon-point count and that many pairs of Single coordinates.
- Three UInt32 words in the legacy intersection/surface/attribute positions.
- One byte in the legacy level-offset position.
- Four Single bound fields.

There is no elevation Single and no second slot-area array/count. Removing only
an elevation field from another game's version-7 wrapper is insufficient: the
missing second count also changes the block extent. One selected authored level
byte is 1; the remaining 1,572 area rows have zero. Thus that byte cannot simply
be discarded to account for the shorter resource.

The throne FTPT `D382BF57:00000000:543AE3FF7530B7F1` is 80 block bytes: eight-byte
header, one-byte area count and one 71-byte area with four polygon points. Its
area word is 5. A two-area example, `D382BF57:00000000:FDE3E0F456B066EE`, has
151 block bytes. Selected resources contain one through six areas.

These observations identify a game-specific input profile. They do not justify
changing the meaning of an identical version number in another game's resource,
adding missing rig nodes, or claiming Medieval gameplay/animation parity.
