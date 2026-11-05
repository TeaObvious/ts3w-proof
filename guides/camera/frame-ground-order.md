# Original gameplay camera frame and ground ownership

The reference is the original PC 1.67 `TS3W.exe` identified centrally by the
[native evidence](../../evidence/native/README.md). Analyst labels and comments
are embedded in the paired Ghidra exports. SIMD propagation, structure fields
and indirect-call prototypes require the original instructions.

The [main frame](../../evidence/native/functions/009758D0_GameplayCamera_UpdateNativeFrame.asm) ([annotated pseudocode](../../evidence/native/functions/009758D0_GameplayCamera_UpdateNativeFrame.c)) contains map threshold handling at `0x00976612`, the ordinary-follow block at `0x00977CB5`, and ground preparation at `0x0097836F`. When both map and ground blocks execute, map handling precedes ground preparation. The function's internal control-flow graph has a directed path from the map block to the ground block, with no reverse path.

The frame constructs four eye-adjacent samples at plus/minus two metres along
horizontal forward and perpendicular directions. It loads `2.0f` from
`0x0103FD88` at `0x009784D6`; the four-query loop starts at `0x0097857C`.
Descent admission at `0x009786B8..0x009786E7` computes horizontal reference
travel multiplied by `1/drop` and `1/[0x0117EFA4]`. The latter scalar is the
binary32 value `0.400000006`. The admitted ratio is at least one. This value
controls descent admission, not horizontal object-follow speed.

The [target/eye surface query](../../evidence/native/functions/00971480_GameplayCamera_QueryGroundHeight.asm) ([annotated pseudocode](../../evidence/native/functions/00971480_GameplayCamera_QueryGroundHeight.c)) has distinct target and eye branches. The eye branch includes roof height plus 1.5 metres; the diving target branch uses ten metres for its active-lot distance gate. Its decompiled pointer-return prototype is an artifact: callers consume an x87 height and the final output writes one byte. The full [height, terrain and water supplement](height-terrain-water-supplement.md) provides the selected reader/producer paths.

## Houseboat eligibility transition in the main frame

Within the successful ordinary followed-object branch, the original frame calls
971180 at975E78 with storage for a64-bit identifier. At975E7D it compares the
returned AL with camera byte+830. Equality jumps to975EA9 without comparing the
identifier. On a Boolean change, true calls971C50 with the two output DWORDs at
975E9B; false calls9711C0 at975EA4. The later houseboat block additionally requires
byte+830 and pointer+834 before its update paths.

The existing complete [main-frame ASM](../../evidence/native/functions/009758D0_GameplayCamera_UpdateNativeFrame.asm)
([annotated C](../../evidence/native/functions/009758D0_GameplayCamera_UpdateNativeFrame.c)) retains these exact
branches. At this branch, changing the identifier while the query remains true
does not itself retarget the houseboat. The query and enable/disable callees,
component eligibility writers, other explicit retarget paths and exact full-frame
ride/resistance/ground ordering require their own complete comparisons. Do not
infer that geometric lot containment or parent-map membership is the query's
eligibility contract, or that this one gate establishes all camera behavior.
