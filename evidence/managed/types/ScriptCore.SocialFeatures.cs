using System;
using System.Runtime.InteropServices;
using Sims3;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class SocialFeatures : ISocialFeatures
{
	public delegate bool CppCbSocialFeaturesDelegate(uint functionID, uint result, long param);

	private SocialFeaturesDelegate mSocialFeaturesDelegate;

	private CppCbSocialFeaturesDelegate mSocialFeaturesCBDelegate;

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_Login();

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_Logout([MarshalAs(UnmanagedType.Bool)] bool userLogout);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetID();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_IsLoggedIn();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_IsLoggedInFromLauncherOrWeb();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetRegCode(uint product);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetHighestRegCode();

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetJobCount();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetLoginToken();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBlazeLoginToken();

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetCrossroadsTime();

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetEntitlementImageKey(uint game);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEntitlementName(uint game);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_SetDevGiftToAccepted(int type);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_ResetGiftTimeLimit();

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_ResetAllGiftingValues();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetNumGiftsSentInTimeLimit();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetTotalNumberGiftsSent();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetGiftTimeLimitElapseTimeMinutes();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPendingDevGiftType();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetShareToFB();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetShareToTwitter();

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetFriends(long nucleusID, uint startIndex, uint maxResults, uint status, uint sortFilter, uint sortType);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SearchForFriend(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string matchString, uint status, [MarshalAs(UnmanagedType.Bool)] bool withinFriendSearch, uint ep, uint startIndex, uint maxResults, uint sortFilter, uint sortType);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetFriendCount(uint status);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfSearchResults();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_FriendsGetSearchResultCrossroadsName(uint Index);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_FriendsGetSearchResultImageKey(uint Index);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_FriendsGetSearchResultNucleusID(uint Index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfFriends(long nucleusID, uint status);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_FriendsGetNucleusID(long nucleusID, uint Index, uint status);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_FriendsGetPersona(long nucleusID, uint Index, uint status);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_FriendsGetCrossroadsName(long nucleusID, uint Index, uint status);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_FriendsGetCrossroadsDesc(long nucleusID, uint Index, uint status);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_FriendsGetFriendImage(long nucleusID, uint Index, uint status);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_FriendsGetFriendStatus(long nucleusID, uint Index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_FriendsGetFriendStatusID(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_FriendsHaveFriendsChanged(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_InviteToBeFriend(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_BlockFriend(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_UnblockFriend(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_AcceptFriendInvite(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_RejectFriendInvite(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_RemoveFriend(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_HasFriends();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_IsSubscribed(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_SetFriendSubscription(long nucleusID, [MarshalAs(UnmanagedType.Bool)] bool subscribe);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetWall(long nucleusID, uint startIndex, uint maxResults, uint maxComments, uint filterType);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetWallPostComments(long nucleusID, long postID, uint maxComments);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfWallPosts(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfGiftPosts(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetWallPostNucleusID(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetWallPostXroadsID(long nucleusID, uint Index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetWallPostType(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetWallPostText(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetWallPostAuthor(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetWallPostAuthorImage(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetWallPostImage(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetLatestStatusUpdate(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetLatestStatusUpdateText(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetWallPostIsPostToMyWall(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetWallPostUserLiked(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetWallPostPassportBroadcast(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetWallPostTime(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetWallCommentTime(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfLikes(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_LikePost(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_HidePost(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_FlagPost(long nucleusID, long postId, uint reportType);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_DeletePost(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_LikeComment(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfCommentLikes(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetCommentUserLiked(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_FlagComment(long nucleusID, long postId, long commentId, uint reportType);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_DeleteComment(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfComments(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetCommentXroadsID(long nucleusID, long postId, uint commentIndex);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetCommentNucleusID(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetCommentText(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetCommentAuthor(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetCommentAuthorImage(long nucleusID, long postId, long commentId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SendPost(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string text);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SendPostImage(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string text, ResourceKey image);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SendComment(long nucleusID, long postId, [MarshalAs(UnmanagedType.LPWStr)] string text);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_PostToSocial(long postId, uint network);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_ClearOfflineTNSMessages();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetNumOfflineTNSMessages();

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetOfflineTNSMessageId(int index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SendGiftPost(long targetID, [MarshalAs(UnmanagedType.LPWStr)] string objectParams, [MarshalAs(UnmanagedType.LPWStr)] string message, [MarshalAs(UnmanagedType.LPWStr)] string giftName, [MarshalAs(UnmanagedType.LPWStr)] string giftHALKey, [MarshalAs(UnmanagedType.LPWStr)] string imageKey, uint requiredEP, int parameter, int type, int defaultText);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetGiftPostGiftName(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetGiftPostGiftHALId(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetGiftPostObjectParams(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetGiftPostImageKey(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetGiftPostGiftRequiredEP(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetGiftPostGiftParam(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetGiftPostGiftType(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetGiftPostGiftAccepted(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetGiftPostIsSystemGift(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetGiftPostDefaultText(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_MarkGiftPostAsAccepted(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetSystemPostsWall(long nucleusID, uint startIndex, uint maxResults, uint filterType);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfSystemWallPosts(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetSystemWallPostXroadsID(long nucleusID, uint Index);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetSystemWallPostNucleusID(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetSystemWallPostType(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetSystemWallPostText(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetSystemWallPostAuthor(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetSystemWallPostAuthorImage(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfSystemPostLikes(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetSystemWallPostTime(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_LikeSystemPost(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetSystemWallPostUserLiked(long nucleusID, long postId);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetProfile(long nucleusID, uint badgeSize, uint registeredGameSize);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_RefreshProfile(long nucleusID, uint badgeSize, uint registeredGameSize);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetProfileImage(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfilePersona(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileName(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileMyStatus(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileCrossroadsDesc(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetProfileEntitlements(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_HasRegisteredProduct(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SetProfileMyStatus(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string myStatus);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_SetProfileCrossroadsDesc(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string desc);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_PostChallengeCompletion([MarshalAs(UnmanagedType.LPWStr)] string guid);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfProfileBadges(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetProfileBadgeImageKey(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileBadgeName(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileBadgeDesc(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileBadgeStartDate(long nucleusID, [MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetProfileBadgeImageKeyIndex(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileBadgeNameIndex(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileBadgeDescIndex(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetProfileBadgeStartDateIndex(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetRankPoints(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetRankCode(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetRankMessageKey(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetRankImageKey(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetRankDescription(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadges(uint startIndex, uint numRecords, uint platform);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfBadges();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeID(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetBadgeImageKey([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetBadgeGrayImageKey([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeName([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeStoreID([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeStartDate([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeEndDate([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeDescription([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadgePoints([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetBadgeCategories([MarshalAs(UnmanagedType.LPWStr)] string badgeID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetEarnedBadges(long nucleusID, uint startIndex, uint numRecords, uint platform);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfEarnedBadges(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetTotalNumberOfEarnedBadges(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEarnedBadgeID(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEarnedBadgeName(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEarnedBadgeDescription(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEarnedBadgeStartDate(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEarnedBadgeEndDate(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetEarnedBadgeEarnedDate(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetEarnedBadgeImageKey(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetEarnedBadgeGrayImageKey(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetEarnedBadgeMedalType(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetEarnedBadgePoints(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetEarnedBadgeCategories(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadgeStatistics(uint platform);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetNumberOfBadgeStatistics(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadgeStatCount(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetBadgeStatCategory(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadgeStatEarnedCount(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadgeStatMedalType(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetBadgeStatPlatform(long nucleusID, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetPrivacySettingsIsProfileViewable(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetPrivacySettingsIsWallActivityViewable(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetPrivacySettingsIsFriendsListViewable(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetPrivacySettingsIsPostAllowed(long nucleusID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_GetPrivacySettingsIsReshareAllowed(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetPrivacySettingsIsFbTokenValid(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern uint SocialFeaturesHost_GetPrivacySettingsIsTwitterTokenValid(long nucleusID);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_RegisterSocialFeaturesCallback([MarshalAs(UnmanagedType.Interface)] CppCbSocialFeaturesDelegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_HandlePassportUploadError(int error);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_CreateSendMeYourSimInvite(long inviteTarget, int passportId, [MarshalAs(UnmanagedType.LPWStr)] string career, [MarshalAs(UnmanagedType.LPWStr)] string level, [MarshalAs(UnmanagedType.LPWStr)] string venue);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_AcceptHostMySimInvite(long postId);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetPassportSimResourceKey();

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportId(int travelType);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportIdFromPost(long postId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_IsPassportUploadOrDownloadActive();

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_CancelPassport(int travelType);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_ResetPassportSlot(int travelType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetPassportSimName(int slot);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetPassportInviteeName(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey SocialFeaturesHost_GetPassportSimImage(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetPassportGuid(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetPassportCareerId(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetPassportSimOwner(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetPassportHost(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportSimLevel(int slot);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportGiftedItem(int slot);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_IsTiedToCurentSave(long postId);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_RejectPassportInvite(long postId);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_CompletePassportHosting(int finishType);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportStatus(int travelType);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetAvailableTravelSlot();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SocialFeaturesHost_IsPassportPostValid(long postId);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_SendPassportMessage(int slot, int type, int value);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_ReplyToPassportMessage(int msgId, [MarshalAs(UnmanagedType.LPWStr)] string text);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportMessageType(int msgId);

	[DllImport("Sims3Common.dll")]
	private static extern int SocialFeaturesHost_GetPassportMessageValue(int msgId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SocialFeaturesHost_GetPassportMessageText(int msgId);

	[DllImport("Sims3Common.dll")]
	private static extern long SocialFeaturesHost_GetPassportMessageSenderId(int msgId);

	[DllImport("Sims3Common.dll")]
	private static extern void SocialFeaturesHost_DebugClearAllPassportState();

	public SocialFeatures()
	{
		AppDomain.CurrentDomain.SetData("SocialFeatures", this);
	}

	~SocialFeatures()
	{
	}

	public void Initialize()
	{
	}

	public void RegisterSocialFeaturesCallbackFunction(SocialFeaturesDelegate d)
	{
		mSocialFeaturesDelegate = (SocialFeaturesDelegate)Delegate.Combine(mSocialFeaturesDelegate, d);
	}

	public void UnregisterSocialFeaturesCallbackFunction(SocialFeaturesDelegate d)
	{
		mSocialFeaturesDelegate = (SocialFeaturesDelegate)Delegate.Remove(mSocialFeaturesDelegate, d);
	}

	public CROSSROADSRETURNVALUE Login()
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_Login();
	}

	public CROSSROADSRETURNVALUE Logout(bool userLogout)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_Logout(userLogout);
	}

	public long GetID()
	{
		return SocialFeaturesHost_GetID();
	}

	public bool IsLoggedIn()
	{
		return SocialFeaturesHost_IsLoggedIn();
	}

	public bool IsLoggedInFromLauncherOrWeb()
	{
		return SocialFeaturesHost_IsLoggedInFromLauncherOrWeb();
	}

	public string GetRegCode(ProductFlag_CS product)
	{
		return SocialFeaturesHost_GetRegCode((uint)product);
	}

	public uint GetJobCount()
	{
		return SocialFeaturesHost_GetJobCount();
	}

	public ProductFlag_CS GetHighestRegCode()
	{
		return (ProductFlag_CS)SocialFeaturesHost_GetHighestRegCode();
	}

	public string GetLoginToken()
	{
		return SocialFeaturesHost_GetLoginToken();
	}

	public string GetBlazeLoginToken()
	{
		return SocialFeaturesHost_GetBlazeLoginToken();
	}

	public uint GetCrossroadsTime()
	{
		return SocialFeaturesHost_GetCrossroadsTime();
	}

	public ResourceKey GetEntitlementImageKey(CRGAMES game)
	{
		return SocialFeaturesHost_GetEntitlementImageKey((uint)game);
	}

	public string GetEntitlementName(CRGAMES game)
	{
		return SocialFeaturesHost_GetEntitlementName((uint)game);
	}

	public void SetDevGiftToAccepted(int type)
	{
		SocialFeaturesHost_SetDevGiftToAccepted(type);
	}

	public void ResetGiftTimeLimit()
	{
		SocialFeaturesHost_ResetGiftTimeLimit();
	}

	public void ResetAllGiftingValues()
	{
		SocialFeaturesHost_ResetAllGiftingValues();
	}

	public int GetNumGiftsSentInTimeLimit()
	{
		return SocialFeaturesHost_GetNumGiftsSentInTimeLimit();
	}

	public int GetTotalNumberGiftsSent()
	{
		return SocialFeaturesHost_GetTotalNumberGiftsSent();
	}

	public int GetGiftTimeLimitElapseTimeMinutes()
	{
		return SocialFeaturesHost_GetGiftTimeLimitElapseTimeMinutes();
	}

	public int GetPendingDevGiftType()
	{
		return SocialFeaturesHost_GetPendingDevGiftType();
	}

	public int GetShareToFB()
	{
		return SocialFeaturesHost_GetShareToFB();
	}

	public int GetShareToTwitter()
	{
		return SocialFeaturesHost_GetShareToTwitter();
	}

	public CROSSROADSRETURNVALUE GetBadges(uint startIndex, uint numRecords, CR_BADGE_PLATFORM platform)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetBadges(startIndex, numRecords, (uint)platform);
	}

	public uint GetNumberOfBadges()
	{
		return SocialFeaturesHost_GetNumberOfBadges();
	}

	public string GetBadgeID(uint index)
	{
		return SocialFeaturesHost_GetBadgeID(index);
	}

	public ResourceKey GetBadgeImageKey(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeImageKey(badgeID);
	}

	public ResourceKey GetBadgeGrayImageKey(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeGrayImageKey(badgeID);
	}

	public string GetBadgeName(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeName(badgeID);
	}

	public string GetBadgeStoreID(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeStoreID(badgeID);
	}

	public string GetBadgeStartDate(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeStartDate(badgeID);
	}

	public string GetBadgeEndDate(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeEndDate(badgeID);
	}

	public string GetBadgeDescription(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeDescription(badgeID);
	}

	public uint GetBadgePoints(string badgeID)
	{
		return SocialFeaturesHost_GetBadgePoints(badgeID);
	}

	public string GetBadgeCategories(string badgeID)
	{
		return SocialFeaturesHost_GetBadgeCategories(badgeID);
	}

	public CROSSROADSRETURNVALUE GetEarnedBadges(long nucleusID, uint startIndex, uint numRecords, CR_BADGE_PLATFORM platform)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetEarnedBadges(nucleusID, startIndex, numRecords, (uint)platform);
	}

	public uint GetNumberOfEarnedBadges(long nucleusID)
	{
		return SocialFeaturesHost_GetNumberOfEarnedBadges(nucleusID);
	}

	public uint GetTotalNumberOfEarnedBadges(long nucleusID)
	{
		return SocialFeaturesHost_GetTotalNumberOfEarnedBadges(nucleusID);
	}

	public string GetEarnedBadgeID(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeID(nucleusID, index);
	}

	public string GetEarnedBadgeName(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeName(nucleusID, index);
	}

	public string GetEarnedBadgeDescription(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeDescription(nucleusID, index);
	}

	public string GetEarnedBadgeStartDate(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeStartDate(nucleusID, index);
	}

	public string GetEarnedBadgeEndDate(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeEndDate(nucleusID, index);
	}

	public uint GetEarnedBadgeEarnedDate(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeEarnedDate(nucleusID, index);
	}

	public ResourceKey GetEarnedBadgeImageKey(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeImageKey(nucleusID, index);
	}

	public ResourceKey GetEarnedBadgeGrayImageKey(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeGrayImageKey(nucleusID, index);
	}

	public CR_BADGE_MEDAL_TYPE GetEarnedBadgeMedalType(long nucleusID, uint index)
	{
		return (CR_BADGE_MEDAL_TYPE)SocialFeaturesHost_GetEarnedBadgeMedalType(nucleusID, index);
	}

	public uint GetEarnedBadgePoints(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgePoints(nucleusID, index);
	}

	public string GetEarnedBadgeCategories(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetEarnedBadgeCategories(nucleusID, index);
	}

	public CROSSROADSRETURNVALUE GetBadgeStatistics(CR_BADGE_PLATFORM platform)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetBadgeStatistics((uint)platform);
	}

	public uint GetNumberOfBadgeStatistics(long nucleusID)
	{
		return SocialFeaturesHost_GetNumberOfBadgeStatistics(nucleusID);
	}

	public uint GetBadgeStatCount(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetBadgeStatCount(nucleusID, index);
	}

	public long GetBadgeStatCategory(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetBadgeStatCategory(nucleusID, index);
	}

	public uint GetBadgeStatEarnedCount(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetBadgeStatEarnedCount(nucleusID, index);
	}

	public CR_BADGE_MEDAL_TYPE GetBadgeStatMedalType(long nucleusID, uint index)
	{
		return (CR_BADGE_MEDAL_TYPE)SocialFeaturesHost_GetBadgeStatMedalType(nucleusID, index);
	}

	public CR_BADGE_PLATFORM GetBadgeStatPlatform(long nucleusID, uint index)
	{
		return (CR_BADGE_PLATFORM)SocialFeaturesHost_GetBadgeStatPlatform(nucleusID, index);
	}

	public CROSSROADSRETURNVALUE GetFriends(long nucleusID, uint startIndex, uint maxResults, CRFRIENDSTATUS_SEARCH status, CRFRIENDSEARCH_SORT_FILTER sortFilter, CRFRIENDSEARCH_SORT_TYPE sortType)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetFriends(nucleusID, startIndex, maxResults, (uint)status, (uint)sortFilter, (uint)sortType);
	}

	public CROSSROADSRETURNVALUE SearchForFriend(long nucleusID, string matchString, CRFRIENDSTATUS_SEARCH status, bool withinFriendSearch, CRGAMES ep, uint startIndex, uint maxResults, CRFRIENDSEARCH_SORT_FILTER sortFilter, CRFRIENDSEARCH_SORT_TYPE sortType)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SearchForFriend(nucleusID, matchString, (uint)status, withinFriendSearch, (uint)ep, startIndex, maxResults, (uint)sortFilter, (uint)sortType);
	}

	public CROSSROADSRETURNVALUE GetFriendCount(CRFRIENDSTATUS_SEARCH status)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetFriendCount((uint)status);
	}

	public uint GetNumberOfSearchResults()
	{
		return SocialFeaturesHost_GetNumberOfSearchResults();
	}

	public string GetSearchResultCrossroadsName(uint index)
	{
		return SocialFeaturesHost_FriendsGetSearchResultCrossroadsName(index);
	}

	public ResourceKey GetSearchResultImageKey(uint Index)
	{
		return SocialFeaturesHost_FriendsGetSearchResultImageKey(Index);
	}

	public long GetSearchResultNucleusID(uint Index)
	{
		return SocialFeaturesHost_FriendsGetSearchResultNucleusID(Index);
	}

	public uint GetNumberOfFriends(long nucleusID, CRFRIENDSTATUS status)
	{
		return SocialFeaturesHost_GetNumberOfFriends(nucleusID, (uint)status);
	}

	public string GetPersona(long nucleusID, uint Index, CRFRIENDSTATUS status)
	{
		return SocialFeaturesHost_FriendsGetPersona(nucleusID, Index, (uint)status);
	}

	public string GetCrossroadsName(long nucleusID, uint Index, CRFRIENDSTATUS status)
	{
		return SocialFeaturesHost_FriendsGetCrossroadsName(nucleusID, Index, (uint)status);
	}

	public string GetCrossroadsDesc(long nucleusID, uint Index, CRFRIENDSTATUS status)
	{
		return SocialFeaturesHost_FriendsGetCrossroadsDesc(nucleusID, Index, (uint)status);
	}

	public long GetNucleusID(long nucleusID, uint Index, CRFRIENDSTATUS status)
	{
		return SocialFeaturesHost_FriendsGetNucleusID(nucleusID, Index, (uint)status);
	}

	public ResourceKey GetFriendImage(long nucleusID, uint Index, CRFRIENDSTATUS status)
	{
		return SocialFeaturesHost_FriendsGetFriendImage(nucleusID, Index, (uint)status);
	}

	public CRFRIENDSTATUS GetFriendStatus(long nucleusID, uint Index)
	{
		return (CRFRIENDSTATUS)SocialFeaturesHost_FriendsGetFriendStatus(nucleusID, Index);
	}

	public CRFRIENDSTATUS GetFriendStatusID(long nucleusID)
	{
		return (CRFRIENDSTATUS)SocialFeaturesHost_FriendsGetFriendStatusID(nucleusID);
	}

	public bool HaveFriendsChanged(long nucleusID)
	{
		return SocialFeaturesHost_FriendsHaveFriendsChanged(nucleusID);
	}

	public void InviteToBeFriend(long nucleusID)
	{
		SocialFeaturesHost_InviteToBeFriend(nucleusID);
	}

	public void BlockFriend(long nucleusID)
	{
		SocialFeaturesHost_BlockFriend(nucleusID);
	}

	public void UnblockFriend(long nucleusID)
	{
		SocialFeaturesHost_UnblockFriend(nucleusID);
	}

	public void AcceptFriendInvite(long nucleusID)
	{
		SocialFeaturesHost_AcceptFriendInvite(nucleusID);
	}

	public void RejectFriendInvite(long nucleusID)
	{
		SocialFeaturesHost_RejectFriendInvite(nucleusID);
	}

	public void RemoveFriend(long nucleusID)
	{
		SocialFeaturesHost_RemoveFriend(nucleusID);
	}

	public bool HasFriends()
	{
		return SocialFeaturesHost_HasFriends();
	}

	public bool IsSubscribed(long nucleusID)
	{
		return SocialFeaturesHost_IsSubscribed(nucleusID);
	}

	public void SetFriendSubscription(long nucleusID, bool subscribe)
	{
		SocialFeaturesHost_SetFriendSubscription(nucleusID, subscribe);
	}

	public CROSSROADSRETURNVALUE GetWall(long nucleusID, uint startIndex, uint maxResults, uint maxComments, CROSSROADSWALLFILTERTYPE filterType)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetWall(nucleusID, startIndex, maxResults, maxComments, (uint)filterType);
	}

	public CROSSROADSRETURNVALUE GetWallPostComments(long nucleusID, long postId, uint maxComments)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetWallPostComments(nucleusID, postId, maxComments);
	}

	public uint GetNumberOfWallPosts(long nucleusID)
	{
		return SocialFeaturesHost_GetNumberOfWallPosts(nucleusID);
	}

	public uint GetNumberOfGiftPosts(long nucleusID)
	{
		return SocialFeaturesHost_GetNumberOfGiftPosts(nucleusID);
	}

	public long GetWallPostNucleusID(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostNucleusID(nucleusID, postId);
	}

	public long GetWallPostXroadsID(long nucleusID, uint postIndex)
	{
		return SocialFeaturesHost_GetWallPostXroadsID(nucleusID, postIndex);
	}

	public uint GetWallPostType(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostType(nucleusID, postId);
	}

	public string GetWallPostText(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostText(nucleusID, postId);
	}

	public string GetWallPostAuthor(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostAuthor(nucleusID, postId);
	}

	public ResourceKey GetWallPostAuthorImage(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostAuthorImage(nucleusID, postId);
	}

	public ResourceKey GetWallPostImage(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostImage(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE GetLatestStatusUpdate(long nucleusID)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetLatestStatusUpdate(nucleusID);
	}

	public string GetLatestStatusUpdateText(long nucleusID)
	{
		return SocialFeaturesHost_GetLatestStatusUpdateText(nucleusID);
	}

	public bool GetWallPostIsPostToMyWall(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostIsPostToMyWall(nucleusID, postId);
	}

	public bool GetWallPostUserLiked(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostUserLiked(nucleusID, postId);
	}

	public bool GetWallPostPassportBroadcast(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostPassportBroadcast(nucleusID, postId);
	}

	public uint GetWallPostTime(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetWallPostTime(nucleusID, postId);
	}

	public uint GetWallCommentTime(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetWallCommentTime(nucleusID, postId, commentId);
	}

	public uint GetNumberOfLikes(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetNumberOfLikes(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE LikePost(long nucleusID, long postId)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_LikePost(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE HidePost(long nucleusID, long postId)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_HidePost(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE FlagPost(long nucleusID, long postId, CROSSROADSWALL_FLAGTYPES reportType)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_FlagPost(nucleusID, postId, (uint)reportType);
	}

	public CROSSROADSRETURNVALUE DeletePost(long nucleusID, long postId)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_DeletePost(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE LikeComment(long nucleusID, long postId, long commentId)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_LikeComment(nucleusID, postId, commentId);
	}

	public uint GetNumberOfCommentLikes(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetNumberOfCommentLikes(nucleusID, postId, commentId);
	}

	public bool GetCommentUserLiked(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetCommentUserLiked(nucleusID, postId, commentId);
	}

	public CROSSROADSRETURNVALUE FlagComment(long nucleusID, long postId, long commentId, CROSSROADSWALL_FLAGTYPES reportType)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_FlagComment(nucleusID, postId, commentId, (uint)reportType);
	}

	public CROSSROADSRETURNVALUE DeleteComment(long nucleusID, long postId, long commentId)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_DeleteComment(nucleusID, postId, commentId);
	}

	public uint GetNumberOfComments(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetNumberOfComments(nucleusID, postId);
	}

	public long GetCommentXroadsID(long nucleusID, long postId, uint commentIndex)
	{
		return SocialFeaturesHost_GetCommentXroadsID(nucleusID, postId, commentIndex);
	}

	public long GetCommentNucleusID(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetCommentNucleusID(nucleusID, postId, commentId);
	}

	public string GetCommentText(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetCommentText(nucleusID, postId, commentId);
	}

	public string GetCommentAuthor(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetCommentAuthor(nucleusID, postId, commentId);
	}

	public ResourceKey GetCommentAuthorImage(long nucleusID, long postId, long commentId)
	{
		return SocialFeaturesHost_GetCommentAuthorImage(nucleusID, postId, commentId);
	}

	public CROSSROADSRETURNVALUE SendPost(long nucleusID, string text)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SendPost(nucleusID, text);
	}

	public CROSSROADSRETURNVALUE SendPostImage(long nucleusID, string text, ResourceKey image)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SendPostImage(nucleusID, text, image);
	}

	public CROSSROADSRETURNVALUE SendComment(long nucleusID, long postId, string text)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SendComment(nucleusID, postId, text);
	}

	public CROSSROADSRETURNVALUE PostToSocial(long postId, CRSOCIALNETWORKS network)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_PostToSocial(postId, (uint)network);
	}

	public void ClearOfflineTNSMessages()
	{
		SocialFeaturesHost_ClearOfflineTNSMessages();
	}

	public int GetNumOfflineTNSMessages()
	{
		return SocialFeaturesHost_GetNumOfflineTNSMessages();
	}

	public long GetOfflineTNSMessageId(int index)
	{
		return SocialFeaturesHost_GetOfflineTNSMessageId(index);
	}

	public CROSSROADSRETURNVALUE SendGiftPost(long targetID, string objectParams, string message, string giftName, string giftHALKey, string imageKey, CRGAMES requiredEP, int parameter, int type, int defaultText)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SendGiftPost(targetID, objectParams, message, giftName, giftHALKey, imageKey, (uint)requiredEP, parameter, type, defaultText);
	}

	public string GetGiftPostGiftName(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostGiftName(nucleusID, postId);
	}

	public string GetGiftPostGiftHALId(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostGiftHALId(nucleusID, postId);
	}

	public string GetGiftPostObjectParams(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostObjectParams(nucleusID, postId);
	}

	public string GetGiftPostImageKey(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostImageKey(nucleusID, postId);
	}

	public CRGAMES GetGiftPostGiftRequiredEP(long nucleusID, long postId)
	{
		return (CRGAMES)SocialFeaturesHost_GetGiftPostGiftRequiredEP(nucleusID, postId);
	}

	public int GetGiftPostGiftParam(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostGiftParam(nucleusID, postId);
	}

	public int GetGiftPostGiftType(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostGiftType(nucleusID, postId);
	}

	public bool GetGiftPostGiftAccepted(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostGiftAccepted(nucleusID, postId);
	}

	public bool GetGiftPostIsSystemGift(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostIsSystemGift(nucleusID, postId);
	}

	public bool GetGiftPostDefaultText(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetGiftPostDefaultText(nucleusID, postId);
	}

	public void MarkGiftPostAsAccepted(long nucleusID, long postId)
	{
		SocialFeaturesHost_MarkGiftPostAsAccepted(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE GetSystemPostsWall(long nucleusID, uint startIndex, uint maxResults, CROSSROADSSYSTEMWALLFILTERTYPE filterType)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetSystemPostsWall(nucleusID, startIndex, maxResults, (uint)filterType);
	}

	public uint GetNumberOfSystemWallPosts(long nucleusID)
	{
		return SocialFeaturesHost_GetNumberOfSystemWallPosts(nucleusID);
	}

	public long GetSystemWallPostXroadsID(long nucleusID, uint postIndex)
	{
		return SocialFeaturesHost_GetSystemWallPostXroadsID(nucleusID, postIndex);
	}

	public long GetSystemWallPostNucleusID(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostNucleusID(nucleusID, postId);
	}

	public uint GetSystemWallPostType(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostType(nucleusID, postId);
	}

	public string GetSystemWallPostText(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostText(nucleusID, postId);
	}

	public string GetSystemWallPostAuthor(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostAuthor(nucleusID, postId);
	}

	public ResourceKey GetSystemWallPostAuthorImage(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostAuthorImage(nucleusID, postId);
	}

	public uint GetNumberOfSystemPostLikes(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetNumberOfSystemPostLikes(nucleusID, postId);
	}

	public uint GetSystemWallPostTime(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostTime(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE LikeSystemPost(long nucleusID, long postId)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_LikeSystemPost(nucleusID, postId);
	}

	public bool GetSystemWallPostUserLiked(long nucleusID, long postId)
	{
		return SocialFeaturesHost_GetSystemWallPostUserLiked(nucleusID, postId);
	}

	public CROSSROADSRETURNVALUE GetProfile(long nucleusID, uint badgeSize, uint registeredGameSize)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetProfile(nucleusID, badgeSize, registeredGameSize);
	}

	public CROSSROADSRETURNVALUE RefreshProfile(long nucleusID, uint badgeSize, uint registeredGameSize)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_RefreshProfile(nucleusID, badgeSize, registeredGameSize);
	}

	public ResourceKey GetProfileImage(long nucleusID)
	{
		return SocialFeaturesHost_GetProfileImage(nucleusID);
	}

	public CROSSROADSRETURNVALUE PostChallengeCompletion(string guid)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_PostChallengeCompletion(guid);
	}

	public string GetProfilePersona(long nucleusID)
	{
		return SocialFeaturesHost_GetProfilePersona(nucleusID);
	}

	public string GetProfileName(long nucleusID)
	{
		return SocialFeaturesHost_GetProfileName(nucleusID);
	}

	public string GetProfileMyStatus(long nucleusID)
	{
		return SocialFeaturesHost_GetProfileMyStatus(nucleusID);
	}

	public string GetProfileCrossroadsDesc(long nucleusID)
	{
		return SocialFeaturesHost_GetProfileCrossroadsDesc(nucleusID);
	}

	public uint GetProfileEntitlements(long nucleusID)
	{
		return SocialFeaturesHost_GetProfileEntitlements(nucleusID);
	}

	public bool HasRegisteredProduct(long nucleusID)
	{
		return SocialFeaturesHost_HasRegisteredProduct(nucleusID);
	}

	public CROSSROADSRETURNVALUE SetProfileMyStatus(long nucleusID, string myStatus)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SetProfileMyStatus(nucleusID, myStatus);
	}

	public CROSSROADSRETURNVALUE SetProfileCrossroadsDesc(long nucleusID, string desc)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_SetProfileCrossroadsDesc(nucleusID, desc);
	}

	public uint GetNumberOfProfileBadges(long nucleusID)
	{
		return SocialFeaturesHost_GetNumberOfProfileBadges(nucleusID);
	}

	public ResourceKey GetProfileBadgeImageKey(long nucleusID, string badgeID)
	{
		return SocialFeaturesHost_GetProfileBadgeImageKey(nucleusID, badgeID);
	}

	public string GetProfileBadgeName(long nucleusID, string badgeID)
	{
		return SocialFeaturesHost_GetProfileBadgeName(nucleusID, badgeID);
	}

	public string GetProfileBadgeDesc(long nucleusID, string badgeID)
	{
		return SocialFeaturesHost_GetProfileBadgeDesc(nucleusID, badgeID);
	}

	public string GetProfileBadgeStartDate(long nucleusID, string badgeID)
	{
		return SocialFeaturesHost_GetProfileBadgeStartDate(nucleusID, badgeID);
	}

	public ResourceKey GetProfileBadgeImageKeyIndex(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetProfileBadgeImageKeyIndex(nucleusID, index);
	}

	public string GetProfileBadgeNameIndex(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetProfileBadgeNameIndex(nucleusID, index);
	}

	public string GetProfileBadgeDescIndex(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetProfileBadgeDescIndex(nucleusID, index);
	}

	public string GetProfileBadgeStartDateIndex(long nucleusID, uint index)
	{
		return SocialFeaturesHost_GetProfileBadgeStartDateIndex(nucleusID, index);
	}

	public uint GetRankPoints(long nucleusID)
	{
		return SocialFeaturesHost_GetRankPoints(nucleusID);
	}

	public long GetRankCode(long nucleusID)
	{
		return SocialFeaturesHost_GetRankCode(nucleusID);
	}

	public string GetRankMessageKey(long nucleusID)
	{
		return SocialFeaturesHost_GetRankMessageKey(nucleusID);
	}

	public ResourceKey GetRankImageKey(long nucleusID)
	{
		return SocialFeaturesHost_GetRankImageKey(nucleusID);
	}

	public string GetRankDescription(long nucleusID)
	{
		return SocialFeaturesHost_GetRankDescription(nucleusID);
	}

	public bool GetPrivacySettingsIsProfileViewable(long nucleusID)
	{
		return SocialFeaturesHost_GetPrivacySettingsIsProfileViewable(nucleusID);
	}

	public bool GetPrivacySettingsIsWallActivityViewable(long nucleusID)
	{
		return SocialFeaturesHost_GetPrivacySettingsIsWallActivityViewable(nucleusID);
	}

	public bool GetPrivacySettingsIsFriendsListViewable(long nucleusID)
	{
		return SocialFeaturesHost_GetPrivacySettingsIsFriendsListViewable(nucleusID);
	}

	public bool GetPrivacySettingsIsPostAllowed(long nucleusID)
	{
		return SocialFeaturesHost_GetPrivacySettingsIsPostAllowed(nucleusID);
	}

	public bool GetPrivacySettingsIsReshareAllowed(long nucleusID)
	{
		return SocialFeaturesHost_GetPrivacySettingsIsReshareAllowed(nucleusID);
	}

	public CR_PRIVACY_STATUS GetPrivacySettingsIsFbTokenValid(long nucleusID)
	{
		return (CR_PRIVACY_STATUS)SocialFeaturesHost_GetPrivacySettingsIsFbTokenValid(nucleusID);
	}

	public CR_PRIVACY_STATUS GetPrivacySettingsIsTwitterTokenValid(long nucleusID)
	{
		return (CR_PRIVACY_STATUS)SocialFeaturesHost_GetPrivacySettingsIsTwitterTokenValid(nucleusID);
	}

	public void RegisterSocialFeaturesCallbacks()
	{
		mSocialFeaturesCBDelegate = HandleSocialFeaturesCB;
		SocialFeaturesHost_RegisterSocialFeaturesCallback(mSocialFeaturesCBDelegate);
	}

	public void HandlePassportUploadError(CROSSROADSRETURNVALUE error)
	{
		SocialFeaturesHost_HandlePassportUploadError((int)error);
	}

	public void CreateSendMeYourSimInvite(long inviteTarget, int passportId, string career, string level, string venue)
	{
		SocialFeaturesHost_CreateSendMeYourSimInvite(inviteTarget, passportId, career, level, venue);
	}

	public void AcceptHostMySimInvite(long postId)
	{
		SocialFeaturesHost_AcceptHostMySimInvite(postId);
	}

	public ResourceKey GetPassportSimResourceKey()
	{
		return SocialFeaturesHost_GetPassportSimResourceKey();
	}

	public int GetPassportId(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportId((int)slot);
	}

	public int GetPassportIdFromPost(long postId)
	{
		return SocialFeaturesHost_GetPassportIdFromPost(postId);
	}

	public bool IsPassportUploadOrDownloadActive()
	{
		return SocialFeaturesHost_IsPassportUploadOrDownloadActive();
	}

	public void CancelPassport(PASSPORTSLOT slot)
	{
		SocialFeaturesHost_CancelPassport((int)slot);
	}

	public void ResetPassportSlot(PASSPORTSLOT slot)
	{
		SocialFeaturesHost_ResetPassportSlot((int)slot);
	}

	public string GetPassportSimName(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportSimName((int)slot);
	}

	public string GetPassportInviteeName(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportInviteeName((int)slot);
	}

	public ResourceKey GetPassportSimImage(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportSimImage((int)slot);
	}

	public long GetPassportGuid(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportGuid((int)slot);
	}

	public long GetPassportCareerId(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportCareerId((int)slot);
	}

	public long GetPassportSimOwner(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportSimOwner((int)slot);
	}

	public long GetPassportHost(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportHost((int)slot);
	}

	public int GetPassportSimLevel(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportSimLevel((int)slot);
	}

	public int GetPassportGiftedItem(PASSPORTSLOT slot)
	{
		return SocialFeaturesHost_GetPassportGiftedItem((int)slot);
	}

	public bool IsTiedToCurentSave(long postId)
	{
		return SocialFeaturesHost_IsTiedToCurentSave(postId);
	}

	public void RejectPassportInvite(long postId)
	{
		SocialFeaturesHost_RejectPassportInvite(postId);
	}

	public void CompletePassportHosting(PASSPORTFINISHTYPE finishType)
	{
		SocialFeaturesHost_CompletePassportHosting((int)finishType);
	}

	public CROSSROADSRETURNVALUE GetPassportStatus(PASSPORTSLOT slot)
	{
		return (CROSSROADSRETURNVALUE)SocialFeaturesHost_GetPassportStatus((int)slot);
	}

	public PASSPORTSLOT GetAvailableTravelSlot()
	{
		return (PASSPORTSLOT)SocialFeaturesHost_GetAvailableTravelSlot();
	}

	public bool IsPassportPostValid(long postId)
	{
		return SocialFeaturesHost_IsPassportPostValid(postId);
	}

	public int SendPassportMessage(PASSPORTSLOT slot, int type, int value)
	{
		return SocialFeaturesHost_SendPassportMessage((int)slot, type, value);
	}

	public int ReplyToPassportMessage(int msgId, string text)
	{
		return SocialFeaturesHost_ReplyToPassportMessage(msgId, text);
	}

	public int GetPassportMessageType(int msgId)
	{
		return SocialFeaturesHost_GetPassportMessageType(msgId);
	}

	public int GetPassportMessageValue(int msgId)
	{
		return SocialFeaturesHost_GetPassportMessageValue(msgId);
	}

	public string GetPassportMessageText(int msgId)
	{
		return SocialFeaturesHost_GetPassportMessageText(msgId);
	}

	public long GetPassportMessageSenderId(int msgId)
	{
		return SocialFeaturesHost_GetPassportMessageSenderId(msgId);
	}

	public void DebugClearAllPassportState()
	{
		SocialFeaturesHost_DebugClearAllPassportState();
	}

	private bool HandleSocialFeaturesCB(uint functionID, uint result, long param)
	{
		if (mSocialFeaturesDelegate == null)
		{
			return false;
		}
		bool result2 = false;
		try
		{
			result2 = mSocialFeaturesDelegate(functionID, result, param);
		}
		catch (Exception)
		{
		}
		return result2;
	}
}
