# Construction generic operation managed consumers

Original shipped PC1.67 ScriptCore and SimIFace, authenticated against the central
assembly identities. ScriptCore SHA256 1ac13ea63f60ceb7ba3a91053da85358aa25635aba5d13053904a8e7c1278115,
MVID da71f9d5-3a90-44c6-8f98-5bafd2fca18a; SimIFace SHA256
6ddedb668e1b6da037e346cd5cf6f500f37407dca633b428e7ec410daa00fcb2,
MVID e4365bd8-6054-4cb5-8702-c69b1c102ce9. Scripts.package S3SA identities
073FAA07:00000000:78CF6CF5304D0C4F and 073FAA07:00000000:C356DF69B70ADD42
respectively; envelope game-version0.2.0.209 does not name the patch version.

[ScriptCore complete CIL](ScriptCore.cil.txt) pairs with [actual annotated C# excerpts](ScriptCore.selected.cs):
InternalCall06000BE7 metadata plus full76-byte ProductGeneric06000C29 adapter.
It forwards seven scalar/ref arguments, restores all ResourceKey lanes and
normalizes null text to String.Empty. The native dispatcher decides output writes.

[SimIFace complete CIL](SimIFace.cil.txt) pairs with [actual annotated C# excerpts](SimIFace.selected.cs):
32 whole bodies/1283CILbytes. The service initializes temporary lanes, selects the
exact operation and returns its typed lane. Preset index and full ID use UInt32;
PresetAtIndex treats FFFFFFFF as absent while construction native helpers can
return0 for a missing ordinal. BuildBuyProduct delegates these queries and retains
original wrapping policy. These are actual loaded original bodies, not proposed
replacement gameplay. No execution, UI filtering closure or full custom store is
claimed by these selected references.
