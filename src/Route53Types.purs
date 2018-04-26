
module AWS.Route53.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>A complex type that contains the type of limit that you specified in the request and the current value for that limit.</p>
newtype AccountLimit = AccountLimit 
  { "Type" :: (AccountLimitType)
  , "Value" :: (LimitValue)
  }
derive instance newtypeAccountLimit :: Newtype AccountLimit _
derive instance repGenericAccountLimit :: Generic AccountLimit _
instance showAccountLimit :: Show AccountLimit where show = genericShow
instance decodeAccountLimit :: Decode AccountLimit where decode = genericDecode options
instance encodeAccountLimit :: Encode AccountLimit where encode = genericEncode options

-- | Constructs AccountLimit from required parameters
newAccountLimit :: AccountLimitType -> LimitValue -> AccountLimit
newAccountLimit _Type _Value = AccountLimit { "Type": _Type, "Value": _Value }

-- | Constructs AccountLimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountLimit' :: AccountLimitType -> LimitValue -> ( { "Type" :: (AccountLimitType) , "Value" :: (LimitValue) } -> {"Type" :: (AccountLimitType) , "Value" :: (LimitValue) } ) -> AccountLimit
newAccountLimit' _Type _Value customize = (AccountLimit <<< customize) { "Type": _Type, "Value": _Value }



newtype AccountLimitType = AccountLimitType String
derive instance newtypeAccountLimitType :: Newtype AccountLimitType _
derive instance repGenericAccountLimitType :: Generic AccountLimitType _
instance showAccountLimitType :: Show AccountLimitType where show = genericShow
instance decodeAccountLimitType :: Decode AccountLimitType where decode = genericDecode options
instance encodeAccountLimitType :: Encode AccountLimitType where encode = genericEncode options



-- | <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
newtype AlarmIdentifier = AlarmIdentifier 
  { "Region" :: (CloudWatchRegion)
  , "Name" :: (AlarmName)
  }
derive instance newtypeAlarmIdentifier :: Newtype AlarmIdentifier _
derive instance repGenericAlarmIdentifier :: Generic AlarmIdentifier _
instance showAlarmIdentifier :: Show AlarmIdentifier where show = genericShow
instance decodeAlarmIdentifier :: Decode AlarmIdentifier where decode = genericDecode options
instance encodeAlarmIdentifier :: Encode AlarmIdentifier where encode = genericEncode options

-- | Constructs AlarmIdentifier from required parameters
newAlarmIdentifier :: AlarmName -> CloudWatchRegion -> AlarmIdentifier
newAlarmIdentifier _Name _Region = AlarmIdentifier { "Name": _Name, "Region": _Region }

-- | Constructs AlarmIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlarmIdentifier' :: AlarmName -> CloudWatchRegion -> ( { "Region" :: (CloudWatchRegion) , "Name" :: (AlarmName) } -> {"Region" :: (CloudWatchRegion) , "Name" :: (AlarmName) } ) -> AlarmIdentifier
newAlarmIdentifier' _Name _Region customize = (AlarmIdentifier <<< customize) { "Name": _Name, "Region": _Region }



newtype AlarmName = AlarmName String
derive instance newtypeAlarmName :: Newtype AlarmName _
derive instance repGenericAlarmName :: Generic AlarmName _
instance showAlarmName :: Show AlarmName where show = genericShow
instance decodeAlarmName :: Decode AlarmName where decode = genericDecode options
instance encodeAlarmName :: Encode AlarmName where encode = genericEncode options



newtype AliasHealthEnabled = AliasHealthEnabled Boolean
derive instance newtypeAliasHealthEnabled :: Newtype AliasHealthEnabled _
derive instance repGenericAliasHealthEnabled :: Generic AliasHealthEnabled _
instance showAliasHealthEnabled :: Show AliasHealthEnabled where show = genericShow
instance decodeAliasHealthEnabled :: Decode AliasHealthEnabled where decode = genericDecode options
instance encodeAliasHealthEnabled :: Encode AliasHealthEnabled where encode = genericEncode options



-- | <p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set that you're redirecting queries to. An Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>When creating resource record sets for a private hosted zone, note the following:</p> <ul> <li> <p>Resource record sets can't be created for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a>.</p> </li> </ul>
newtype AliasTarget = AliasTarget 
  { "HostedZoneId" :: (ResourceId)
  , "DNSName" :: (DNSName)
  , "EvaluateTargetHealth" :: (AliasHealthEnabled)
  }
derive instance newtypeAliasTarget :: Newtype AliasTarget _
derive instance repGenericAliasTarget :: Generic AliasTarget _
instance showAliasTarget :: Show AliasTarget where show = genericShow
instance decodeAliasTarget :: Decode AliasTarget where decode = genericDecode options
instance encodeAliasTarget :: Encode AliasTarget where encode = genericEncode options

-- | Constructs AliasTarget from required parameters
newAliasTarget :: DNSName -> AliasHealthEnabled -> ResourceId -> AliasTarget
newAliasTarget _DNSName _EvaluateTargetHealth _HostedZoneId = AliasTarget { "DNSName": _DNSName, "EvaluateTargetHealth": _EvaluateTargetHealth, "HostedZoneId": _HostedZoneId }

-- | Constructs AliasTarget's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAliasTarget' :: DNSName -> AliasHealthEnabled -> ResourceId -> ( { "HostedZoneId" :: (ResourceId) , "DNSName" :: (DNSName) , "EvaluateTargetHealth" :: (AliasHealthEnabled) } -> {"HostedZoneId" :: (ResourceId) , "DNSName" :: (DNSName) , "EvaluateTargetHealth" :: (AliasHealthEnabled) } ) -> AliasTarget
newAliasTarget' _DNSName _EvaluateTargetHealth _HostedZoneId customize = (AliasTarget <<< customize) { "DNSName": _DNSName, "EvaluateTargetHealth": _EvaluateTargetHealth, "HostedZoneId": _HostedZoneId }



newtype AssociateVPCComment = AssociateVPCComment String
derive instance newtypeAssociateVPCComment :: Newtype AssociateVPCComment _
derive instance repGenericAssociateVPCComment :: Generic AssociateVPCComment _
instance showAssociateVPCComment :: Show AssociateVPCComment where show = genericShow
instance decodeAssociateVPCComment :: Decode AssociateVPCComment where decode = genericDecode options
instance encodeAssociateVPCComment :: Encode AssociateVPCComment where encode = genericEncode options



-- | <p>A complex type that contains information about the request to associate a VPC with a private hosted zone.</p>
newtype AssociateVPCWithHostedZoneRequest = AssociateVPCWithHostedZoneRequest 
  { "HostedZoneId" :: (ResourceId)
  , "VPC" :: (VPC)
  , "Comment" :: Maybe (AssociateVPCComment)
  }
derive instance newtypeAssociateVPCWithHostedZoneRequest :: Newtype AssociateVPCWithHostedZoneRequest _
derive instance repGenericAssociateVPCWithHostedZoneRequest :: Generic AssociateVPCWithHostedZoneRequest _
instance showAssociateVPCWithHostedZoneRequest :: Show AssociateVPCWithHostedZoneRequest where show = genericShow
instance decodeAssociateVPCWithHostedZoneRequest :: Decode AssociateVPCWithHostedZoneRequest where decode = genericDecode options
instance encodeAssociateVPCWithHostedZoneRequest :: Encode AssociateVPCWithHostedZoneRequest where encode = genericEncode options

-- | Constructs AssociateVPCWithHostedZoneRequest from required parameters
newAssociateVPCWithHostedZoneRequest :: ResourceId -> VPC -> AssociateVPCWithHostedZoneRequest
newAssociateVPCWithHostedZoneRequest _HostedZoneId _VPC = AssociateVPCWithHostedZoneRequest { "HostedZoneId": _HostedZoneId, "VPC": _VPC, "Comment": Nothing }

-- | Constructs AssociateVPCWithHostedZoneRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateVPCWithHostedZoneRequest' :: ResourceId -> VPC -> ( { "HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) , "Comment" :: Maybe (AssociateVPCComment) } -> {"HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) , "Comment" :: Maybe (AssociateVPCComment) } ) -> AssociateVPCWithHostedZoneRequest
newAssociateVPCWithHostedZoneRequest' _HostedZoneId _VPC customize = (AssociateVPCWithHostedZoneRequest <<< customize) { "HostedZoneId": _HostedZoneId, "VPC": _VPC, "Comment": Nothing }



-- | <p>A complex type that contains the response information for the <code>AssociateVPCWithHostedZone</code> request.</p>
newtype AssociateVPCWithHostedZoneResponse = AssociateVPCWithHostedZoneResponse 
  { "ChangeInfo" :: (ChangeInfo)
  }
derive instance newtypeAssociateVPCWithHostedZoneResponse :: Newtype AssociateVPCWithHostedZoneResponse _
derive instance repGenericAssociateVPCWithHostedZoneResponse :: Generic AssociateVPCWithHostedZoneResponse _
instance showAssociateVPCWithHostedZoneResponse :: Show AssociateVPCWithHostedZoneResponse where show = genericShow
instance decodeAssociateVPCWithHostedZoneResponse :: Decode AssociateVPCWithHostedZoneResponse where decode = genericDecode options
instance encodeAssociateVPCWithHostedZoneResponse :: Encode AssociateVPCWithHostedZoneResponse where encode = genericEncode options

-- | Constructs AssociateVPCWithHostedZoneResponse from required parameters
newAssociateVPCWithHostedZoneResponse :: ChangeInfo -> AssociateVPCWithHostedZoneResponse
newAssociateVPCWithHostedZoneResponse _ChangeInfo = AssociateVPCWithHostedZoneResponse { "ChangeInfo": _ChangeInfo }

-- | Constructs AssociateVPCWithHostedZoneResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateVPCWithHostedZoneResponse' :: ChangeInfo -> ( { "ChangeInfo" :: (ChangeInfo) } -> {"ChangeInfo" :: (ChangeInfo) } ) -> AssociateVPCWithHostedZoneResponse
newAssociateVPCWithHostedZoneResponse' _ChangeInfo customize = (AssociateVPCWithHostedZoneResponse <<< customize) { "ChangeInfo": _ChangeInfo }



-- | <p>The information for each resource record set that you want to change.</p>
newtype Change = Change 
  { "Action" :: (ChangeAction)
  , "ResourceRecordSet" :: (ResourceRecordSet)
  }
derive instance newtypeChange :: Newtype Change _
derive instance repGenericChange :: Generic Change _
instance showChange :: Show Change where show = genericShow
instance decodeChange :: Decode Change where decode = genericDecode options
instance encodeChange :: Encode Change where encode = genericEncode options

-- | Constructs Change from required parameters
newChange :: ChangeAction -> ResourceRecordSet -> Change
newChange _Action _ResourceRecordSet = Change { "Action": _Action, "ResourceRecordSet": _ResourceRecordSet }

-- | Constructs Change's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChange' :: ChangeAction -> ResourceRecordSet -> ( { "Action" :: (ChangeAction) , "ResourceRecordSet" :: (ResourceRecordSet) } -> {"Action" :: (ChangeAction) , "ResourceRecordSet" :: (ResourceRecordSet) } ) -> Change
newChange' _Action _ResourceRecordSet customize = (Change <<< customize) { "Action": _Action, "ResourceRecordSet": _ResourceRecordSet }



newtype ChangeAction = ChangeAction String
derive instance newtypeChangeAction :: Newtype ChangeAction _
derive instance repGenericChangeAction :: Generic ChangeAction _
instance showChangeAction :: Show ChangeAction where show = genericShow
instance decodeChangeAction :: Decode ChangeAction where decode = genericDecode options
instance encodeChangeAction :: Encode ChangeAction where encode = genericEncode options



-- | <p>The information for a change request.</p>
newtype ChangeBatch = ChangeBatch 
  { "Comment" :: Maybe (ResourceDescription)
  , "Changes" :: (Changes)
  }
derive instance newtypeChangeBatch :: Newtype ChangeBatch _
derive instance repGenericChangeBatch :: Generic ChangeBatch _
instance showChangeBatch :: Show ChangeBatch where show = genericShow
instance decodeChangeBatch :: Decode ChangeBatch where decode = genericDecode options
instance encodeChangeBatch :: Encode ChangeBatch where encode = genericEncode options

-- | Constructs ChangeBatch from required parameters
newChangeBatch :: Changes -> ChangeBatch
newChangeBatch _Changes = ChangeBatch { "Changes": _Changes, "Comment": Nothing }

-- | Constructs ChangeBatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeBatch' :: Changes -> ( { "Comment" :: Maybe (ResourceDescription) , "Changes" :: (Changes) } -> {"Comment" :: Maybe (ResourceDescription) , "Changes" :: (Changes) } ) -> ChangeBatch
newChangeBatch' _Changes customize = (ChangeBatch <<< customize) { "Changes": _Changes, "Comment": Nothing }



-- | <p>A complex type that describes change information about changes made to your hosted zone.</p>
newtype ChangeInfo = ChangeInfo 
  { "Id" :: (ResourceId)
  , "Status" :: (ChangeStatus)
  , "SubmittedAt" :: (TimeStamp)
  , "Comment" :: Maybe (ResourceDescription)
  }
derive instance newtypeChangeInfo :: Newtype ChangeInfo _
derive instance repGenericChangeInfo :: Generic ChangeInfo _
instance showChangeInfo :: Show ChangeInfo where show = genericShow
instance decodeChangeInfo :: Decode ChangeInfo where decode = genericDecode options
instance encodeChangeInfo :: Encode ChangeInfo where encode = genericEncode options

-- | Constructs ChangeInfo from required parameters
newChangeInfo :: ResourceId -> ChangeStatus -> TimeStamp -> ChangeInfo
newChangeInfo _Id _Status _SubmittedAt = ChangeInfo { "Id": _Id, "Status": _Status, "SubmittedAt": _SubmittedAt, "Comment": Nothing }

-- | Constructs ChangeInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeInfo' :: ResourceId -> ChangeStatus -> TimeStamp -> ( { "Id" :: (ResourceId) , "Status" :: (ChangeStatus) , "SubmittedAt" :: (TimeStamp) , "Comment" :: Maybe (ResourceDescription) } -> {"Id" :: (ResourceId) , "Status" :: (ChangeStatus) , "SubmittedAt" :: (TimeStamp) , "Comment" :: Maybe (ResourceDescription) } ) -> ChangeInfo
newChangeInfo' _Id _Status _SubmittedAt customize = (ChangeInfo <<< customize) { "Id": _Id, "Status": _Status, "SubmittedAt": _SubmittedAt, "Comment": Nothing }



-- | <p>A complex type that contains change information for the resource record set.</p>
newtype ChangeResourceRecordSetsRequest = ChangeResourceRecordSetsRequest 
  { "HostedZoneId" :: (ResourceId)
  , "ChangeBatch" :: (ChangeBatch)
  }
derive instance newtypeChangeResourceRecordSetsRequest :: Newtype ChangeResourceRecordSetsRequest _
derive instance repGenericChangeResourceRecordSetsRequest :: Generic ChangeResourceRecordSetsRequest _
instance showChangeResourceRecordSetsRequest :: Show ChangeResourceRecordSetsRequest where show = genericShow
instance decodeChangeResourceRecordSetsRequest :: Decode ChangeResourceRecordSetsRequest where decode = genericDecode options
instance encodeChangeResourceRecordSetsRequest :: Encode ChangeResourceRecordSetsRequest where encode = genericEncode options

-- | Constructs ChangeResourceRecordSetsRequest from required parameters
newChangeResourceRecordSetsRequest :: ChangeBatch -> ResourceId -> ChangeResourceRecordSetsRequest
newChangeResourceRecordSetsRequest _ChangeBatch _HostedZoneId = ChangeResourceRecordSetsRequest { "ChangeBatch": _ChangeBatch, "HostedZoneId": _HostedZoneId }

-- | Constructs ChangeResourceRecordSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeResourceRecordSetsRequest' :: ChangeBatch -> ResourceId -> ( { "HostedZoneId" :: (ResourceId) , "ChangeBatch" :: (ChangeBatch) } -> {"HostedZoneId" :: (ResourceId) , "ChangeBatch" :: (ChangeBatch) } ) -> ChangeResourceRecordSetsRequest
newChangeResourceRecordSetsRequest' _ChangeBatch _HostedZoneId customize = (ChangeResourceRecordSetsRequest <<< customize) { "ChangeBatch": _ChangeBatch, "HostedZoneId": _HostedZoneId }



-- | <p>A complex type containing the response for the request.</p>
newtype ChangeResourceRecordSetsResponse = ChangeResourceRecordSetsResponse 
  { "ChangeInfo" :: (ChangeInfo)
  }
derive instance newtypeChangeResourceRecordSetsResponse :: Newtype ChangeResourceRecordSetsResponse _
derive instance repGenericChangeResourceRecordSetsResponse :: Generic ChangeResourceRecordSetsResponse _
instance showChangeResourceRecordSetsResponse :: Show ChangeResourceRecordSetsResponse where show = genericShow
instance decodeChangeResourceRecordSetsResponse :: Decode ChangeResourceRecordSetsResponse where decode = genericDecode options
instance encodeChangeResourceRecordSetsResponse :: Encode ChangeResourceRecordSetsResponse where encode = genericEncode options

-- | Constructs ChangeResourceRecordSetsResponse from required parameters
newChangeResourceRecordSetsResponse :: ChangeInfo -> ChangeResourceRecordSetsResponse
newChangeResourceRecordSetsResponse _ChangeInfo = ChangeResourceRecordSetsResponse { "ChangeInfo": _ChangeInfo }

-- | Constructs ChangeResourceRecordSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeResourceRecordSetsResponse' :: ChangeInfo -> ( { "ChangeInfo" :: (ChangeInfo) } -> {"ChangeInfo" :: (ChangeInfo) } ) -> ChangeResourceRecordSetsResponse
newChangeResourceRecordSetsResponse' _ChangeInfo customize = (ChangeResourceRecordSetsResponse <<< customize) { "ChangeInfo": _ChangeInfo }



newtype ChangeStatus = ChangeStatus String
derive instance newtypeChangeStatus :: Newtype ChangeStatus _
derive instance repGenericChangeStatus :: Generic ChangeStatus _
instance showChangeStatus :: Show ChangeStatus where show = genericShow
instance decodeChangeStatus :: Decode ChangeStatus where decode = genericDecode options
instance encodeChangeStatus :: Encode ChangeStatus where encode = genericEncode options



-- | <p>A complex type that contains information about the tags that you want to add, edit, or delete.</p>
newtype ChangeTagsForResourceRequest = ChangeTagsForResourceRequest 
  { "ResourceType" :: (TagResourceType)
  , "ResourceId" :: (TagResourceId)
  , "AddTags" :: Maybe (TagList)
  , "RemoveTagKeys" :: Maybe (TagKeyList)
  }
derive instance newtypeChangeTagsForResourceRequest :: Newtype ChangeTagsForResourceRequest _
derive instance repGenericChangeTagsForResourceRequest :: Generic ChangeTagsForResourceRequest _
instance showChangeTagsForResourceRequest :: Show ChangeTagsForResourceRequest where show = genericShow
instance decodeChangeTagsForResourceRequest :: Decode ChangeTagsForResourceRequest where decode = genericDecode options
instance encodeChangeTagsForResourceRequest :: Encode ChangeTagsForResourceRequest where encode = genericEncode options

-- | Constructs ChangeTagsForResourceRequest from required parameters
newChangeTagsForResourceRequest :: TagResourceId -> TagResourceType -> ChangeTagsForResourceRequest
newChangeTagsForResourceRequest _ResourceId _ResourceType = ChangeTagsForResourceRequest { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "AddTags": Nothing, "RemoveTagKeys": Nothing }

-- | Constructs ChangeTagsForResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeTagsForResourceRequest' :: TagResourceId -> TagResourceType -> ( { "ResourceType" :: (TagResourceType) , "ResourceId" :: (TagResourceId) , "AddTags" :: Maybe (TagList) , "RemoveTagKeys" :: Maybe (TagKeyList) } -> {"ResourceType" :: (TagResourceType) , "ResourceId" :: (TagResourceId) , "AddTags" :: Maybe (TagList) , "RemoveTagKeys" :: Maybe (TagKeyList) } ) -> ChangeTagsForResourceRequest
newChangeTagsForResourceRequest' _ResourceId _ResourceType customize = (ChangeTagsForResourceRequest <<< customize) { "ResourceId": _ResourceId, "ResourceType": _ResourceType, "AddTags": Nothing, "RemoveTagKeys": Nothing }



-- | <p>Empty response for the request.</p>
newtype ChangeTagsForResourceResponse = ChangeTagsForResourceResponse Types.NoArguments
derive instance newtypeChangeTagsForResourceResponse :: Newtype ChangeTagsForResourceResponse _
derive instance repGenericChangeTagsForResourceResponse :: Generic ChangeTagsForResourceResponse _
instance showChangeTagsForResourceResponse :: Show ChangeTagsForResourceResponse where show = genericShow
instance decodeChangeTagsForResourceResponse :: Decode ChangeTagsForResourceResponse where decode = genericDecode options
instance encodeChangeTagsForResourceResponse :: Encode ChangeTagsForResourceResponse where encode = genericEncode options



newtype Changes = Changes (Array Change)
derive instance newtypeChanges :: Newtype Changes _
derive instance repGenericChanges :: Generic Changes _
instance showChanges :: Show Changes where show = genericShow
instance decodeChanges :: Decode Changes where decode = genericDecode options
instance encodeChanges :: Encode Changes where encode = genericEncode options



newtype CheckerIpRanges = CheckerIpRanges (Array IPAddressCidr)
derive instance newtypeCheckerIpRanges :: Newtype CheckerIpRanges _
derive instance repGenericCheckerIpRanges :: Generic CheckerIpRanges _
instance showCheckerIpRanges :: Show CheckerIpRanges where show = genericShow
instance decodeCheckerIpRanges :: Decode CheckerIpRanges where decode = genericDecode options
instance encodeCheckerIpRanges :: Encode CheckerIpRanges where encode = genericEncode options



newtype ChildHealthCheckList = ChildHealthCheckList (Array HealthCheckId)
derive instance newtypeChildHealthCheckList :: Newtype ChildHealthCheckList _
derive instance repGenericChildHealthCheckList :: Generic ChildHealthCheckList _
instance showChildHealthCheckList :: Show ChildHealthCheckList where show = genericShow
instance decodeChildHealthCheckList :: Decode ChildHealthCheckList where decode = genericDecode options
instance encodeChildHealthCheckList :: Encode ChildHealthCheckList where encode = genericEncode options



-- | <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
newtype CloudWatchAlarmConfiguration = CloudWatchAlarmConfiguration 
  { "EvaluationPeriods" :: (EvaluationPeriods)
  , "Threshold" :: (Threshold)
  , "ComparisonOperator" :: (ComparisonOperator)
  , "Period" :: (Period)
  , "MetricName" :: (MetricName)
  , "Namespace" :: (Namespace)
  , "Statistic" :: (Statistic)
  , "Dimensions" :: Maybe (DimensionList)
  }
derive instance newtypeCloudWatchAlarmConfiguration :: Newtype CloudWatchAlarmConfiguration _
derive instance repGenericCloudWatchAlarmConfiguration :: Generic CloudWatchAlarmConfiguration _
instance showCloudWatchAlarmConfiguration :: Show CloudWatchAlarmConfiguration where show = genericShow
instance decodeCloudWatchAlarmConfiguration :: Decode CloudWatchAlarmConfiguration where decode = genericDecode options
instance encodeCloudWatchAlarmConfiguration :: Encode CloudWatchAlarmConfiguration where encode = genericEncode options

-- | Constructs CloudWatchAlarmConfiguration from required parameters
newCloudWatchAlarmConfiguration :: ComparisonOperator -> EvaluationPeriods -> MetricName -> Namespace -> Period -> Statistic -> Threshold -> CloudWatchAlarmConfiguration
newCloudWatchAlarmConfiguration _ComparisonOperator _EvaluationPeriods _MetricName _Namespace _Period _Statistic _Threshold = CloudWatchAlarmConfiguration { "ComparisonOperator": _ComparisonOperator, "EvaluationPeriods": _EvaluationPeriods, "MetricName": _MetricName, "Namespace": _Namespace, "Period": _Period, "Statistic": _Statistic, "Threshold": _Threshold, "Dimensions": Nothing }

-- | Constructs CloudWatchAlarmConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchAlarmConfiguration' :: ComparisonOperator -> EvaluationPeriods -> MetricName -> Namespace -> Period -> Statistic -> Threshold -> ( { "EvaluationPeriods" :: (EvaluationPeriods) , "Threshold" :: (Threshold) , "ComparisonOperator" :: (ComparisonOperator) , "Period" :: (Period) , "MetricName" :: (MetricName) , "Namespace" :: (Namespace) , "Statistic" :: (Statistic) , "Dimensions" :: Maybe (DimensionList) } -> {"EvaluationPeriods" :: (EvaluationPeriods) , "Threshold" :: (Threshold) , "ComparisonOperator" :: (ComparisonOperator) , "Period" :: (Period) , "MetricName" :: (MetricName) , "Namespace" :: (Namespace) , "Statistic" :: (Statistic) , "Dimensions" :: Maybe (DimensionList) } ) -> CloudWatchAlarmConfiguration
newCloudWatchAlarmConfiguration' _ComparisonOperator _EvaluationPeriods _MetricName _Namespace _Period _Statistic _Threshold customize = (CloudWatchAlarmConfiguration <<< customize) { "ComparisonOperator": _ComparisonOperator, "EvaluationPeriods": _EvaluationPeriods, "MetricName": _MetricName, "Namespace": _Namespace, "Period": _Period, "Statistic": _Statistic, "Threshold": _Threshold, "Dimensions": Nothing }



newtype CloudWatchLogsLogGroupArn = CloudWatchLogsLogGroupArn String
derive instance newtypeCloudWatchLogsLogGroupArn :: Newtype CloudWatchLogsLogGroupArn _
derive instance repGenericCloudWatchLogsLogGroupArn :: Generic CloudWatchLogsLogGroupArn _
instance showCloudWatchLogsLogGroupArn :: Show CloudWatchLogsLogGroupArn where show = genericShow
instance decodeCloudWatchLogsLogGroupArn :: Decode CloudWatchLogsLogGroupArn where decode = genericDecode options
instance encodeCloudWatchLogsLogGroupArn :: Encode CloudWatchLogsLogGroupArn where encode = genericEncode options



newtype CloudWatchRegion = CloudWatchRegion String
derive instance newtypeCloudWatchRegion :: Newtype CloudWatchRegion _
derive instance repGenericCloudWatchRegion :: Generic CloudWatchRegion _
instance showCloudWatchRegion :: Show CloudWatchRegion where show = genericShow
instance decodeCloudWatchRegion :: Decode CloudWatchRegion where decode = genericDecode options
instance encodeCloudWatchRegion :: Encode CloudWatchRegion where encode = genericEncode options



newtype ComparisonOperator = ComparisonOperator String
derive instance newtypeComparisonOperator :: Newtype ComparisonOperator _
derive instance repGenericComparisonOperator :: Generic ComparisonOperator _
instance showComparisonOperator :: Show ComparisonOperator where show = genericShow
instance decodeComparisonOperator :: Decode ComparisonOperator where decode = genericDecode options
instance encodeComparisonOperator :: Encode ComparisonOperator where encode = genericEncode options



-- | <p>Another user submitted a request to create, update, or delete the object at the same time that you did. Retry the request. </p>
newtype ConcurrentModification = ConcurrentModification 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeConcurrentModification :: Newtype ConcurrentModification _
derive instance repGenericConcurrentModification :: Generic ConcurrentModification _
instance showConcurrentModification :: Show ConcurrentModification where show = genericShow
instance decodeConcurrentModification :: Decode ConcurrentModification where decode = genericDecode options
instance encodeConcurrentModification :: Encode ConcurrentModification where encode = genericEncode options

-- | Constructs ConcurrentModification from required parameters
newConcurrentModification :: ConcurrentModification
newConcurrentModification  = ConcurrentModification { "message": Nothing }

-- | Constructs ConcurrentModification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentModification' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ConcurrentModification
newConcurrentModification'  customize = (ConcurrentModification <<< customize) { "message": Nothing }



-- | <p>The cause of this error depends on whether you're trying to create a public or a private hosted zone:</p> <ul> <li> <p> <b>Public hosted zone:</b> Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. For more information, see <a>CreateReusableDelegationSet</a>.</p> </li> <li> <p> <b>Private hosted zone:</b> You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.</p> </li> </ul>
newtype ConflictingDomainExists = ConflictingDomainExists 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeConflictingDomainExists :: Newtype ConflictingDomainExists _
derive instance repGenericConflictingDomainExists :: Generic ConflictingDomainExists _
instance showConflictingDomainExists :: Show ConflictingDomainExists where show = genericShow
instance decodeConflictingDomainExists :: Decode ConflictingDomainExists where decode = genericDecode options
instance encodeConflictingDomainExists :: Encode ConflictingDomainExists where encode = genericEncode options

-- | Constructs ConflictingDomainExists from required parameters
newConflictingDomainExists :: ConflictingDomainExists
newConflictingDomainExists  = ConflictingDomainExists { "message": Nothing }

-- | Constructs ConflictingDomainExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictingDomainExists' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ConflictingDomainExists
newConflictingDomainExists'  customize = (ConflictingDomainExists <<< customize) { "message": Nothing }



-- | <p>You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the <code>CreateTrafficPolicy</code> or <code>CreateTrafficPolicyVersion</code>request. </p>
newtype ConflictingTypes = ConflictingTypes 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeConflictingTypes :: Newtype ConflictingTypes _
derive instance repGenericConflictingTypes :: Generic ConflictingTypes _
instance showConflictingTypes :: Show ConflictingTypes where show = genericShow
instance decodeConflictingTypes :: Decode ConflictingTypes where decode = genericDecode options
instance encodeConflictingTypes :: Encode ConflictingTypes where encode = genericEncode options

-- | Constructs ConflictingTypes from required parameters
newConflictingTypes :: ConflictingTypes
newConflictingTypes  = ConflictingTypes { "message": Nothing }

-- | Constructs ConflictingTypes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictingTypes' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ConflictingTypes
newConflictingTypes'  customize = (ConflictingTypes <<< customize) { "message": Nothing }



-- | <p>A complex type that contains the health check request information.</p>
newtype CreateHealthCheckRequest = CreateHealthCheckRequest 
  { "CallerReference" :: (HealthCheckNonce)
  , "HealthCheckConfig" :: (HealthCheckConfig)
  }
derive instance newtypeCreateHealthCheckRequest :: Newtype CreateHealthCheckRequest _
derive instance repGenericCreateHealthCheckRequest :: Generic CreateHealthCheckRequest _
instance showCreateHealthCheckRequest :: Show CreateHealthCheckRequest where show = genericShow
instance decodeCreateHealthCheckRequest :: Decode CreateHealthCheckRequest where decode = genericDecode options
instance encodeCreateHealthCheckRequest :: Encode CreateHealthCheckRequest where encode = genericEncode options

-- | Constructs CreateHealthCheckRequest from required parameters
newCreateHealthCheckRequest :: HealthCheckNonce -> HealthCheckConfig -> CreateHealthCheckRequest
newCreateHealthCheckRequest _CallerReference _HealthCheckConfig = CreateHealthCheckRequest { "CallerReference": _CallerReference, "HealthCheckConfig": _HealthCheckConfig }

-- | Constructs CreateHealthCheckRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHealthCheckRequest' :: HealthCheckNonce -> HealthCheckConfig -> ( { "CallerReference" :: (HealthCheckNonce) , "HealthCheckConfig" :: (HealthCheckConfig) } -> {"CallerReference" :: (HealthCheckNonce) , "HealthCheckConfig" :: (HealthCheckConfig) } ) -> CreateHealthCheckRequest
newCreateHealthCheckRequest' _CallerReference _HealthCheckConfig customize = (CreateHealthCheckRequest <<< customize) { "CallerReference": _CallerReference, "HealthCheckConfig": _HealthCheckConfig }



-- | <p>A complex type containing the response information for the new health check.</p>
newtype CreateHealthCheckResponse = CreateHealthCheckResponse 
  { "HealthCheck" :: (HealthCheck)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateHealthCheckResponse :: Newtype CreateHealthCheckResponse _
derive instance repGenericCreateHealthCheckResponse :: Generic CreateHealthCheckResponse _
instance showCreateHealthCheckResponse :: Show CreateHealthCheckResponse where show = genericShow
instance decodeCreateHealthCheckResponse :: Decode CreateHealthCheckResponse where decode = genericDecode options
instance encodeCreateHealthCheckResponse :: Encode CreateHealthCheckResponse where encode = genericEncode options

-- | Constructs CreateHealthCheckResponse from required parameters
newCreateHealthCheckResponse :: HealthCheck -> ResourceURI -> CreateHealthCheckResponse
newCreateHealthCheckResponse _HealthCheck _Location = CreateHealthCheckResponse { "HealthCheck": _HealthCheck, "Location": _Location }

-- | Constructs CreateHealthCheckResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHealthCheckResponse' :: HealthCheck -> ResourceURI -> ( { "HealthCheck" :: (HealthCheck) , "Location" :: (ResourceURI) } -> {"HealthCheck" :: (HealthCheck) , "Location" :: (ResourceURI) } ) -> CreateHealthCheckResponse
newCreateHealthCheckResponse' _HealthCheck _Location customize = (CreateHealthCheckResponse <<< customize) { "HealthCheck": _HealthCheck, "Location": _Location }



-- | <p>A complex type that contains information about the request to create a hosted zone.</p>
newtype CreateHostedZoneRequest = CreateHostedZoneRequest 
  { "Name" :: (DNSName)
  , "VPC" :: Maybe (VPC)
  , "CallerReference" :: (Nonce)
  , "HostedZoneConfig" :: Maybe (HostedZoneConfig)
  , "DelegationSetId" :: Maybe (ResourceId)
  }
derive instance newtypeCreateHostedZoneRequest :: Newtype CreateHostedZoneRequest _
derive instance repGenericCreateHostedZoneRequest :: Generic CreateHostedZoneRequest _
instance showCreateHostedZoneRequest :: Show CreateHostedZoneRequest where show = genericShow
instance decodeCreateHostedZoneRequest :: Decode CreateHostedZoneRequest where decode = genericDecode options
instance encodeCreateHostedZoneRequest :: Encode CreateHostedZoneRequest where encode = genericEncode options

-- | Constructs CreateHostedZoneRequest from required parameters
newCreateHostedZoneRequest :: Nonce -> DNSName -> CreateHostedZoneRequest
newCreateHostedZoneRequest _CallerReference _Name = CreateHostedZoneRequest { "CallerReference": _CallerReference, "Name": _Name, "DelegationSetId": Nothing, "HostedZoneConfig": Nothing, "VPC": Nothing }

-- | Constructs CreateHostedZoneRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHostedZoneRequest' :: Nonce -> DNSName -> ( { "Name" :: (DNSName) , "VPC" :: Maybe (VPC) , "CallerReference" :: (Nonce) , "HostedZoneConfig" :: Maybe (HostedZoneConfig) , "DelegationSetId" :: Maybe (ResourceId) } -> {"Name" :: (DNSName) , "VPC" :: Maybe (VPC) , "CallerReference" :: (Nonce) , "HostedZoneConfig" :: Maybe (HostedZoneConfig) , "DelegationSetId" :: Maybe (ResourceId) } ) -> CreateHostedZoneRequest
newCreateHostedZoneRequest' _CallerReference _Name customize = (CreateHostedZoneRequest <<< customize) { "CallerReference": _CallerReference, "Name": _Name, "DelegationSetId": Nothing, "HostedZoneConfig": Nothing, "VPC": Nothing }



-- | <p>A complex type containing the response information for the hosted zone.</p>
newtype CreateHostedZoneResponse = CreateHostedZoneResponse 
  { "HostedZone" :: (HostedZone)
  , "ChangeInfo" :: (ChangeInfo)
  , "DelegationSet" :: (DelegationSet)
  , "VPC" :: Maybe (VPC)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateHostedZoneResponse :: Newtype CreateHostedZoneResponse _
derive instance repGenericCreateHostedZoneResponse :: Generic CreateHostedZoneResponse _
instance showCreateHostedZoneResponse :: Show CreateHostedZoneResponse where show = genericShow
instance decodeCreateHostedZoneResponse :: Decode CreateHostedZoneResponse where decode = genericDecode options
instance encodeCreateHostedZoneResponse :: Encode CreateHostedZoneResponse where encode = genericEncode options

-- | Constructs CreateHostedZoneResponse from required parameters
newCreateHostedZoneResponse :: ChangeInfo -> DelegationSet -> HostedZone -> ResourceURI -> CreateHostedZoneResponse
newCreateHostedZoneResponse _ChangeInfo _DelegationSet _HostedZone _Location = CreateHostedZoneResponse { "ChangeInfo": _ChangeInfo, "DelegationSet": _DelegationSet, "HostedZone": _HostedZone, "Location": _Location, "VPC": Nothing }

-- | Constructs CreateHostedZoneResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHostedZoneResponse' :: ChangeInfo -> DelegationSet -> HostedZone -> ResourceURI -> ( { "HostedZone" :: (HostedZone) , "ChangeInfo" :: (ChangeInfo) , "DelegationSet" :: (DelegationSet) , "VPC" :: Maybe (VPC) , "Location" :: (ResourceURI) } -> {"HostedZone" :: (HostedZone) , "ChangeInfo" :: (ChangeInfo) , "DelegationSet" :: (DelegationSet) , "VPC" :: Maybe (VPC) , "Location" :: (ResourceURI) } ) -> CreateHostedZoneResponse
newCreateHostedZoneResponse' _ChangeInfo _DelegationSet _HostedZone _Location customize = (CreateHostedZoneResponse <<< customize) { "ChangeInfo": _ChangeInfo, "DelegationSet": _DelegationSet, "HostedZone": _HostedZone, "Location": _Location, "VPC": Nothing }



newtype CreateQueryLoggingConfigRequest = CreateQueryLoggingConfigRequest 
  { "HostedZoneId" :: (ResourceId)
  , "CloudWatchLogsLogGroupArn" :: (CloudWatchLogsLogGroupArn)
  }
derive instance newtypeCreateQueryLoggingConfigRequest :: Newtype CreateQueryLoggingConfigRequest _
derive instance repGenericCreateQueryLoggingConfigRequest :: Generic CreateQueryLoggingConfigRequest _
instance showCreateQueryLoggingConfigRequest :: Show CreateQueryLoggingConfigRequest where show = genericShow
instance decodeCreateQueryLoggingConfigRequest :: Decode CreateQueryLoggingConfigRequest where decode = genericDecode options
instance encodeCreateQueryLoggingConfigRequest :: Encode CreateQueryLoggingConfigRequest where encode = genericEncode options

-- | Constructs CreateQueryLoggingConfigRequest from required parameters
newCreateQueryLoggingConfigRequest :: CloudWatchLogsLogGroupArn -> ResourceId -> CreateQueryLoggingConfigRequest
newCreateQueryLoggingConfigRequest _CloudWatchLogsLogGroupArn _HostedZoneId = CreateQueryLoggingConfigRequest { "CloudWatchLogsLogGroupArn": _CloudWatchLogsLogGroupArn, "HostedZoneId": _HostedZoneId }

-- | Constructs CreateQueryLoggingConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQueryLoggingConfigRequest' :: CloudWatchLogsLogGroupArn -> ResourceId -> ( { "HostedZoneId" :: (ResourceId) , "CloudWatchLogsLogGroupArn" :: (CloudWatchLogsLogGroupArn) } -> {"HostedZoneId" :: (ResourceId) , "CloudWatchLogsLogGroupArn" :: (CloudWatchLogsLogGroupArn) } ) -> CreateQueryLoggingConfigRequest
newCreateQueryLoggingConfigRequest' _CloudWatchLogsLogGroupArn _HostedZoneId customize = (CreateQueryLoggingConfigRequest <<< customize) { "CloudWatchLogsLogGroupArn": _CloudWatchLogsLogGroupArn, "HostedZoneId": _HostedZoneId }



newtype CreateQueryLoggingConfigResponse = CreateQueryLoggingConfigResponse 
  { "QueryLoggingConfig" :: (QueryLoggingConfig)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateQueryLoggingConfigResponse :: Newtype CreateQueryLoggingConfigResponse _
derive instance repGenericCreateQueryLoggingConfigResponse :: Generic CreateQueryLoggingConfigResponse _
instance showCreateQueryLoggingConfigResponse :: Show CreateQueryLoggingConfigResponse where show = genericShow
instance decodeCreateQueryLoggingConfigResponse :: Decode CreateQueryLoggingConfigResponse where decode = genericDecode options
instance encodeCreateQueryLoggingConfigResponse :: Encode CreateQueryLoggingConfigResponse where encode = genericEncode options

-- | Constructs CreateQueryLoggingConfigResponse from required parameters
newCreateQueryLoggingConfigResponse :: ResourceURI -> QueryLoggingConfig -> CreateQueryLoggingConfigResponse
newCreateQueryLoggingConfigResponse _Location _QueryLoggingConfig = CreateQueryLoggingConfigResponse { "Location": _Location, "QueryLoggingConfig": _QueryLoggingConfig }

-- | Constructs CreateQueryLoggingConfigResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQueryLoggingConfigResponse' :: ResourceURI -> QueryLoggingConfig -> ( { "QueryLoggingConfig" :: (QueryLoggingConfig) , "Location" :: (ResourceURI) } -> {"QueryLoggingConfig" :: (QueryLoggingConfig) , "Location" :: (ResourceURI) } ) -> CreateQueryLoggingConfigResponse
newCreateQueryLoggingConfigResponse' _Location _QueryLoggingConfig customize = (CreateQueryLoggingConfigResponse <<< customize) { "Location": _Location, "QueryLoggingConfig": _QueryLoggingConfig }



newtype CreateReusableDelegationSetRequest = CreateReusableDelegationSetRequest 
  { "CallerReference" :: (Nonce)
  , "HostedZoneId" :: Maybe (ResourceId)
  }
derive instance newtypeCreateReusableDelegationSetRequest :: Newtype CreateReusableDelegationSetRequest _
derive instance repGenericCreateReusableDelegationSetRequest :: Generic CreateReusableDelegationSetRequest _
instance showCreateReusableDelegationSetRequest :: Show CreateReusableDelegationSetRequest where show = genericShow
instance decodeCreateReusableDelegationSetRequest :: Decode CreateReusableDelegationSetRequest where decode = genericDecode options
instance encodeCreateReusableDelegationSetRequest :: Encode CreateReusableDelegationSetRequest where encode = genericEncode options

-- | Constructs CreateReusableDelegationSetRequest from required parameters
newCreateReusableDelegationSetRequest :: Nonce -> CreateReusableDelegationSetRequest
newCreateReusableDelegationSetRequest _CallerReference = CreateReusableDelegationSetRequest { "CallerReference": _CallerReference, "HostedZoneId": Nothing }

-- | Constructs CreateReusableDelegationSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReusableDelegationSetRequest' :: Nonce -> ( { "CallerReference" :: (Nonce) , "HostedZoneId" :: Maybe (ResourceId) } -> {"CallerReference" :: (Nonce) , "HostedZoneId" :: Maybe (ResourceId) } ) -> CreateReusableDelegationSetRequest
newCreateReusableDelegationSetRequest' _CallerReference customize = (CreateReusableDelegationSetRequest <<< customize) { "CallerReference": _CallerReference, "HostedZoneId": Nothing }



newtype CreateReusableDelegationSetResponse = CreateReusableDelegationSetResponse 
  { "DelegationSet" :: (DelegationSet)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateReusableDelegationSetResponse :: Newtype CreateReusableDelegationSetResponse _
derive instance repGenericCreateReusableDelegationSetResponse :: Generic CreateReusableDelegationSetResponse _
instance showCreateReusableDelegationSetResponse :: Show CreateReusableDelegationSetResponse where show = genericShow
instance decodeCreateReusableDelegationSetResponse :: Decode CreateReusableDelegationSetResponse where decode = genericDecode options
instance encodeCreateReusableDelegationSetResponse :: Encode CreateReusableDelegationSetResponse where encode = genericEncode options

-- | Constructs CreateReusableDelegationSetResponse from required parameters
newCreateReusableDelegationSetResponse :: DelegationSet -> ResourceURI -> CreateReusableDelegationSetResponse
newCreateReusableDelegationSetResponse _DelegationSet _Location = CreateReusableDelegationSetResponse { "DelegationSet": _DelegationSet, "Location": _Location }

-- | Constructs CreateReusableDelegationSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReusableDelegationSetResponse' :: DelegationSet -> ResourceURI -> ( { "DelegationSet" :: (DelegationSet) , "Location" :: (ResourceURI) } -> {"DelegationSet" :: (DelegationSet) , "Location" :: (ResourceURI) } ) -> CreateReusableDelegationSetResponse
newCreateReusableDelegationSetResponse' _DelegationSet _Location customize = (CreateReusableDelegationSetResponse <<< customize) { "DelegationSet": _DelegationSet, "Location": _Location }



-- | <p>A complex type that contains information about the resource record sets that you want to create based on a specified traffic policy.</p>
newtype CreateTrafficPolicyInstanceRequest = CreateTrafficPolicyInstanceRequest 
  { "HostedZoneId" :: (ResourceId)
  , "Name" :: (DNSName)
  , "TTL" :: (TTL)
  , "TrafficPolicyId" :: (TrafficPolicyId)
  , "TrafficPolicyVersion" :: (TrafficPolicyVersion)
  }
derive instance newtypeCreateTrafficPolicyInstanceRequest :: Newtype CreateTrafficPolicyInstanceRequest _
derive instance repGenericCreateTrafficPolicyInstanceRequest :: Generic CreateTrafficPolicyInstanceRequest _
instance showCreateTrafficPolicyInstanceRequest :: Show CreateTrafficPolicyInstanceRequest where show = genericShow
instance decodeCreateTrafficPolicyInstanceRequest :: Decode CreateTrafficPolicyInstanceRequest where decode = genericDecode options
instance encodeCreateTrafficPolicyInstanceRequest :: Encode CreateTrafficPolicyInstanceRequest where encode = genericEncode options

-- | Constructs CreateTrafficPolicyInstanceRequest from required parameters
newCreateTrafficPolicyInstanceRequest :: ResourceId -> DNSName -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> CreateTrafficPolicyInstanceRequest
newCreateTrafficPolicyInstanceRequest _HostedZoneId _Name _TTL _TrafficPolicyId _TrafficPolicyVersion = CreateTrafficPolicyInstanceRequest { "HostedZoneId": _HostedZoneId, "Name": _Name, "TTL": _TTL, "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyVersion": _TrafficPolicyVersion }

-- | Constructs CreateTrafficPolicyInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrafficPolicyInstanceRequest' :: ResourceId -> DNSName -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> ( { "HostedZoneId" :: (ResourceId) , "Name" :: (DNSName) , "TTL" :: (TTL) , "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) } -> {"HostedZoneId" :: (ResourceId) , "Name" :: (DNSName) , "TTL" :: (TTL) , "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) } ) -> CreateTrafficPolicyInstanceRequest
newCreateTrafficPolicyInstanceRequest' _HostedZoneId _Name _TTL _TrafficPolicyId _TrafficPolicyVersion customize = (CreateTrafficPolicyInstanceRequest <<< customize) { "HostedZoneId": _HostedZoneId, "Name": _Name, "TTL": _TTL, "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyVersion": _TrafficPolicyVersion }



-- | <p>A complex type that contains the response information for the <code>CreateTrafficPolicyInstance</code> request.</p>
newtype CreateTrafficPolicyInstanceResponse = CreateTrafficPolicyInstanceResponse 
  { "TrafficPolicyInstance" :: (TrafficPolicyInstance)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateTrafficPolicyInstanceResponse :: Newtype CreateTrafficPolicyInstanceResponse _
derive instance repGenericCreateTrafficPolicyInstanceResponse :: Generic CreateTrafficPolicyInstanceResponse _
instance showCreateTrafficPolicyInstanceResponse :: Show CreateTrafficPolicyInstanceResponse where show = genericShow
instance decodeCreateTrafficPolicyInstanceResponse :: Decode CreateTrafficPolicyInstanceResponse where decode = genericDecode options
instance encodeCreateTrafficPolicyInstanceResponse :: Encode CreateTrafficPolicyInstanceResponse where encode = genericEncode options

-- | Constructs CreateTrafficPolicyInstanceResponse from required parameters
newCreateTrafficPolicyInstanceResponse :: ResourceURI -> TrafficPolicyInstance -> CreateTrafficPolicyInstanceResponse
newCreateTrafficPolicyInstanceResponse _Location _TrafficPolicyInstance = CreateTrafficPolicyInstanceResponse { "Location": _Location, "TrafficPolicyInstance": _TrafficPolicyInstance }

-- | Constructs CreateTrafficPolicyInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrafficPolicyInstanceResponse' :: ResourceURI -> TrafficPolicyInstance -> ( { "TrafficPolicyInstance" :: (TrafficPolicyInstance) , "Location" :: (ResourceURI) } -> {"TrafficPolicyInstance" :: (TrafficPolicyInstance) , "Location" :: (ResourceURI) } ) -> CreateTrafficPolicyInstanceResponse
newCreateTrafficPolicyInstanceResponse' _Location _TrafficPolicyInstance customize = (CreateTrafficPolicyInstanceResponse <<< customize) { "Location": _Location, "TrafficPolicyInstance": _TrafficPolicyInstance }



-- | <p>A complex type that contains information about the traffic policy that you want to create.</p>
newtype CreateTrafficPolicyRequest = CreateTrafficPolicyRequest 
  { "Name" :: (TrafficPolicyName)
  , "Document" :: (TrafficPolicyDocument)
  , "Comment" :: Maybe (TrafficPolicyComment)
  }
derive instance newtypeCreateTrafficPolicyRequest :: Newtype CreateTrafficPolicyRequest _
derive instance repGenericCreateTrafficPolicyRequest :: Generic CreateTrafficPolicyRequest _
instance showCreateTrafficPolicyRequest :: Show CreateTrafficPolicyRequest where show = genericShow
instance decodeCreateTrafficPolicyRequest :: Decode CreateTrafficPolicyRequest where decode = genericDecode options
instance encodeCreateTrafficPolicyRequest :: Encode CreateTrafficPolicyRequest where encode = genericEncode options

-- | Constructs CreateTrafficPolicyRequest from required parameters
newCreateTrafficPolicyRequest :: TrafficPolicyDocument -> TrafficPolicyName -> CreateTrafficPolicyRequest
newCreateTrafficPolicyRequest _Document _Name = CreateTrafficPolicyRequest { "Document": _Document, "Name": _Name, "Comment": Nothing }

-- | Constructs CreateTrafficPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrafficPolicyRequest' :: TrafficPolicyDocument -> TrafficPolicyName -> ( { "Name" :: (TrafficPolicyName) , "Document" :: (TrafficPolicyDocument) , "Comment" :: Maybe (TrafficPolicyComment) } -> {"Name" :: (TrafficPolicyName) , "Document" :: (TrafficPolicyDocument) , "Comment" :: Maybe (TrafficPolicyComment) } ) -> CreateTrafficPolicyRequest
newCreateTrafficPolicyRequest' _Document _Name customize = (CreateTrafficPolicyRequest <<< customize) { "Document": _Document, "Name": _Name, "Comment": Nothing }



-- | <p>A complex type that contains the response information for the <code>CreateTrafficPolicy</code> request.</p>
newtype CreateTrafficPolicyResponse = CreateTrafficPolicyResponse 
  { "TrafficPolicy" :: (TrafficPolicy)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateTrafficPolicyResponse :: Newtype CreateTrafficPolicyResponse _
derive instance repGenericCreateTrafficPolicyResponse :: Generic CreateTrafficPolicyResponse _
instance showCreateTrafficPolicyResponse :: Show CreateTrafficPolicyResponse where show = genericShow
instance decodeCreateTrafficPolicyResponse :: Decode CreateTrafficPolicyResponse where decode = genericDecode options
instance encodeCreateTrafficPolicyResponse :: Encode CreateTrafficPolicyResponse where encode = genericEncode options

-- | Constructs CreateTrafficPolicyResponse from required parameters
newCreateTrafficPolicyResponse :: ResourceURI -> TrafficPolicy -> CreateTrafficPolicyResponse
newCreateTrafficPolicyResponse _Location _TrafficPolicy = CreateTrafficPolicyResponse { "Location": _Location, "TrafficPolicy": _TrafficPolicy }

-- | Constructs CreateTrafficPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrafficPolicyResponse' :: ResourceURI -> TrafficPolicy -> ( { "TrafficPolicy" :: (TrafficPolicy) , "Location" :: (ResourceURI) } -> {"TrafficPolicy" :: (TrafficPolicy) , "Location" :: (ResourceURI) } ) -> CreateTrafficPolicyResponse
newCreateTrafficPolicyResponse' _Location _TrafficPolicy customize = (CreateTrafficPolicyResponse <<< customize) { "Location": _Location, "TrafficPolicy": _TrafficPolicy }



-- | <p>A complex type that contains information about the traffic policy that you want to create a new version for.</p>
newtype CreateTrafficPolicyVersionRequest = CreateTrafficPolicyVersionRequest 
  { "Id" :: (TrafficPolicyId)
  , "Document" :: (TrafficPolicyDocument)
  , "Comment" :: Maybe (TrafficPolicyComment)
  }
derive instance newtypeCreateTrafficPolicyVersionRequest :: Newtype CreateTrafficPolicyVersionRequest _
derive instance repGenericCreateTrafficPolicyVersionRequest :: Generic CreateTrafficPolicyVersionRequest _
instance showCreateTrafficPolicyVersionRequest :: Show CreateTrafficPolicyVersionRequest where show = genericShow
instance decodeCreateTrafficPolicyVersionRequest :: Decode CreateTrafficPolicyVersionRequest where decode = genericDecode options
instance encodeCreateTrafficPolicyVersionRequest :: Encode CreateTrafficPolicyVersionRequest where encode = genericEncode options

-- | Constructs CreateTrafficPolicyVersionRequest from required parameters
newCreateTrafficPolicyVersionRequest :: TrafficPolicyDocument -> TrafficPolicyId -> CreateTrafficPolicyVersionRequest
newCreateTrafficPolicyVersionRequest _Document _Id = CreateTrafficPolicyVersionRequest { "Document": _Document, "Id": _Id, "Comment": Nothing }

-- | Constructs CreateTrafficPolicyVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrafficPolicyVersionRequest' :: TrafficPolicyDocument -> TrafficPolicyId -> ( { "Id" :: (TrafficPolicyId) , "Document" :: (TrafficPolicyDocument) , "Comment" :: Maybe (TrafficPolicyComment) } -> {"Id" :: (TrafficPolicyId) , "Document" :: (TrafficPolicyDocument) , "Comment" :: Maybe (TrafficPolicyComment) } ) -> CreateTrafficPolicyVersionRequest
newCreateTrafficPolicyVersionRequest' _Document _Id customize = (CreateTrafficPolicyVersionRequest <<< customize) { "Document": _Document, "Id": _Id, "Comment": Nothing }



-- | <p>A complex type that contains the response information for the <code>CreateTrafficPolicyVersion</code> request.</p>
newtype CreateTrafficPolicyVersionResponse = CreateTrafficPolicyVersionResponse 
  { "TrafficPolicy" :: (TrafficPolicy)
  , "Location" :: (ResourceURI)
  }
derive instance newtypeCreateTrafficPolicyVersionResponse :: Newtype CreateTrafficPolicyVersionResponse _
derive instance repGenericCreateTrafficPolicyVersionResponse :: Generic CreateTrafficPolicyVersionResponse _
instance showCreateTrafficPolicyVersionResponse :: Show CreateTrafficPolicyVersionResponse where show = genericShow
instance decodeCreateTrafficPolicyVersionResponse :: Decode CreateTrafficPolicyVersionResponse where decode = genericDecode options
instance encodeCreateTrafficPolicyVersionResponse :: Encode CreateTrafficPolicyVersionResponse where encode = genericEncode options

-- | Constructs CreateTrafficPolicyVersionResponse from required parameters
newCreateTrafficPolicyVersionResponse :: ResourceURI -> TrafficPolicy -> CreateTrafficPolicyVersionResponse
newCreateTrafficPolicyVersionResponse _Location _TrafficPolicy = CreateTrafficPolicyVersionResponse { "Location": _Location, "TrafficPolicy": _TrafficPolicy }

-- | Constructs CreateTrafficPolicyVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrafficPolicyVersionResponse' :: ResourceURI -> TrafficPolicy -> ( { "TrafficPolicy" :: (TrafficPolicy) , "Location" :: (ResourceURI) } -> {"TrafficPolicy" :: (TrafficPolicy) , "Location" :: (ResourceURI) } ) -> CreateTrafficPolicyVersionResponse
newCreateTrafficPolicyVersionResponse' _Location _TrafficPolicy customize = (CreateTrafficPolicyVersionResponse <<< customize) { "Location": _Location, "TrafficPolicy": _TrafficPolicy }



-- | <p>A complex type that contains information about the request to authorize associating a VPC with your private hosted zone. Authorization is only required when a private hosted zone and a VPC were created by using different accounts.</p>
newtype CreateVPCAssociationAuthorizationRequest = CreateVPCAssociationAuthorizationRequest 
  { "HostedZoneId" :: (ResourceId)
  , "VPC" :: (VPC)
  }
derive instance newtypeCreateVPCAssociationAuthorizationRequest :: Newtype CreateVPCAssociationAuthorizationRequest _
derive instance repGenericCreateVPCAssociationAuthorizationRequest :: Generic CreateVPCAssociationAuthorizationRequest _
instance showCreateVPCAssociationAuthorizationRequest :: Show CreateVPCAssociationAuthorizationRequest where show = genericShow
instance decodeCreateVPCAssociationAuthorizationRequest :: Decode CreateVPCAssociationAuthorizationRequest where decode = genericDecode options
instance encodeCreateVPCAssociationAuthorizationRequest :: Encode CreateVPCAssociationAuthorizationRequest where encode = genericEncode options

-- | Constructs CreateVPCAssociationAuthorizationRequest from required parameters
newCreateVPCAssociationAuthorizationRequest :: ResourceId -> VPC -> CreateVPCAssociationAuthorizationRequest
newCreateVPCAssociationAuthorizationRequest _HostedZoneId _VPC = CreateVPCAssociationAuthorizationRequest { "HostedZoneId": _HostedZoneId, "VPC": _VPC }

-- | Constructs CreateVPCAssociationAuthorizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVPCAssociationAuthorizationRequest' :: ResourceId -> VPC -> ( { "HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) } -> {"HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) } ) -> CreateVPCAssociationAuthorizationRequest
newCreateVPCAssociationAuthorizationRequest' _HostedZoneId _VPC customize = (CreateVPCAssociationAuthorizationRequest <<< customize) { "HostedZoneId": _HostedZoneId, "VPC": _VPC }



-- | <p>A complex type that contains the response information from a <code>CreateVPCAssociationAuthorization</code> request.</p>
newtype CreateVPCAssociationAuthorizationResponse = CreateVPCAssociationAuthorizationResponse 
  { "HostedZoneId" :: (ResourceId)
  , "VPC" :: (VPC)
  }
derive instance newtypeCreateVPCAssociationAuthorizationResponse :: Newtype CreateVPCAssociationAuthorizationResponse _
derive instance repGenericCreateVPCAssociationAuthorizationResponse :: Generic CreateVPCAssociationAuthorizationResponse _
instance showCreateVPCAssociationAuthorizationResponse :: Show CreateVPCAssociationAuthorizationResponse where show = genericShow
instance decodeCreateVPCAssociationAuthorizationResponse :: Decode CreateVPCAssociationAuthorizationResponse where decode = genericDecode options
instance encodeCreateVPCAssociationAuthorizationResponse :: Encode CreateVPCAssociationAuthorizationResponse where encode = genericEncode options

-- | Constructs CreateVPCAssociationAuthorizationResponse from required parameters
newCreateVPCAssociationAuthorizationResponse :: ResourceId -> VPC -> CreateVPCAssociationAuthorizationResponse
newCreateVPCAssociationAuthorizationResponse _HostedZoneId _VPC = CreateVPCAssociationAuthorizationResponse { "HostedZoneId": _HostedZoneId, "VPC": _VPC }

-- | Constructs CreateVPCAssociationAuthorizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVPCAssociationAuthorizationResponse' :: ResourceId -> VPC -> ( { "HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) } -> {"HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) } ) -> CreateVPCAssociationAuthorizationResponse
newCreateVPCAssociationAuthorizationResponse' _HostedZoneId _VPC customize = (CreateVPCAssociationAuthorizationResponse <<< customize) { "HostedZoneId": _HostedZoneId, "VPC": _VPC }



newtype DNSName = DNSName String
derive instance newtypeDNSName :: Newtype DNSName _
derive instance repGenericDNSName :: Generic DNSName _
instance showDNSName :: Show DNSName where show = genericShow
instance decodeDNSName :: Decode DNSName where decode = genericDecode options
instance encodeDNSName :: Encode DNSName where encode = genericEncode options



newtype DNSRCode = DNSRCode String
derive instance newtypeDNSRCode :: Newtype DNSRCode _
derive instance repGenericDNSRCode :: Generic DNSRCode _
instance showDNSRCode :: Show DNSRCode where show = genericShow
instance decodeDNSRCode :: Decode DNSRCode where decode = genericDecode options
instance encodeDNSRCode :: Encode DNSRCode where encode = genericEncode options



-- | <p>A complex type that lists the name servers in a delegation set, as well as the <code>CallerReference</code> and the <code>ID</code> for the delegation set.</p>
newtype DelegationSet = DelegationSet 
  { "Id" :: Maybe (ResourceId)
  , "CallerReference" :: Maybe (Nonce)
  , "NameServers" :: (DelegationSetNameServers)
  }
derive instance newtypeDelegationSet :: Newtype DelegationSet _
derive instance repGenericDelegationSet :: Generic DelegationSet _
instance showDelegationSet :: Show DelegationSet where show = genericShow
instance decodeDelegationSet :: Decode DelegationSet where decode = genericDecode options
instance encodeDelegationSet :: Encode DelegationSet where encode = genericEncode options

-- | Constructs DelegationSet from required parameters
newDelegationSet :: DelegationSetNameServers -> DelegationSet
newDelegationSet _NameServers = DelegationSet { "NameServers": _NameServers, "CallerReference": Nothing, "Id": Nothing }

-- | Constructs DelegationSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDelegationSet' :: DelegationSetNameServers -> ( { "Id" :: Maybe (ResourceId) , "CallerReference" :: Maybe (Nonce) , "NameServers" :: (DelegationSetNameServers) } -> {"Id" :: Maybe (ResourceId) , "CallerReference" :: Maybe (Nonce) , "NameServers" :: (DelegationSetNameServers) } ) -> DelegationSet
newDelegationSet' _NameServers customize = (DelegationSet <<< customize) { "NameServers": _NameServers, "CallerReference": Nothing, "Id": Nothing }



-- | <p>A delegation set with the same owner and caller reference combination has already been created.</p>
newtype DelegationSetAlreadyCreated = DelegationSetAlreadyCreated 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDelegationSetAlreadyCreated :: Newtype DelegationSetAlreadyCreated _
derive instance repGenericDelegationSetAlreadyCreated :: Generic DelegationSetAlreadyCreated _
instance showDelegationSetAlreadyCreated :: Show DelegationSetAlreadyCreated where show = genericShow
instance decodeDelegationSetAlreadyCreated :: Decode DelegationSetAlreadyCreated where decode = genericDecode options
instance encodeDelegationSetAlreadyCreated :: Encode DelegationSetAlreadyCreated where encode = genericEncode options

-- | Constructs DelegationSetAlreadyCreated from required parameters
newDelegationSetAlreadyCreated :: DelegationSetAlreadyCreated
newDelegationSetAlreadyCreated  = DelegationSetAlreadyCreated { "message": Nothing }

-- | Constructs DelegationSetAlreadyCreated's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDelegationSetAlreadyCreated' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DelegationSetAlreadyCreated
newDelegationSetAlreadyCreated'  customize = (DelegationSetAlreadyCreated <<< customize) { "message": Nothing }



-- | <p>The specified delegation set has already been marked as reusable.</p>
newtype DelegationSetAlreadyReusable = DelegationSetAlreadyReusable 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDelegationSetAlreadyReusable :: Newtype DelegationSetAlreadyReusable _
derive instance repGenericDelegationSetAlreadyReusable :: Generic DelegationSetAlreadyReusable _
instance showDelegationSetAlreadyReusable :: Show DelegationSetAlreadyReusable where show = genericShow
instance decodeDelegationSetAlreadyReusable :: Decode DelegationSetAlreadyReusable where decode = genericDecode options
instance encodeDelegationSetAlreadyReusable :: Encode DelegationSetAlreadyReusable where encode = genericEncode options

-- | Constructs DelegationSetAlreadyReusable from required parameters
newDelegationSetAlreadyReusable :: DelegationSetAlreadyReusable
newDelegationSetAlreadyReusable  = DelegationSetAlreadyReusable { "message": Nothing }

-- | Constructs DelegationSetAlreadyReusable's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDelegationSetAlreadyReusable' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DelegationSetAlreadyReusable
newDelegationSetAlreadyReusable'  customize = (DelegationSetAlreadyReusable <<< customize) { "message": Nothing }



-- | <p>The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.</p>
newtype DelegationSetInUse = DelegationSetInUse 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDelegationSetInUse :: Newtype DelegationSetInUse _
derive instance repGenericDelegationSetInUse :: Generic DelegationSetInUse _
instance showDelegationSetInUse :: Show DelegationSetInUse where show = genericShow
instance decodeDelegationSetInUse :: Decode DelegationSetInUse where decode = genericDecode options
instance encodeDelegationSetInUse :: Encode DelegationSetInUse where encode = genericEncode options

-- | Constructs DelegationSetInUse from required parameters
newDelegationSetInUse :: DelegationSetInUse
newDelegationSetInUse  = DelegationSetInUse { "message": Nothing }

-- | Constructs DelegationSetInUse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDelegationSetInUse' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DelegationSetInUse
newDelegationSetInUse'  customize = (DelegationSetInUse <<< customize) { "message": Nothing }



newtype DelegationSetNameServers = DelegationSetNameServers (Array DNSName)
derive instance newtypeDelegationSetNameServers :: Newtype DelegationSetNameServers _
derive instance repGenericDelegationSetNameServers :: Generic DelegationSetNameServers _
instance showDelegationSetNameServers :: Show DelegationSetNameServers where show = genericShow
instance decodeDelegationSetNameServers :: Decode DelegationSetNameServers where decode = genericDecode options
instance encodeDelegationSetNameServers :: Encode DelegationSetNameServers where encode = genericEncode options



-- | <p>You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Amazon Route 53 generates this error, contact Customer Support.</p>
newtype DelegationSetNotAvailable = DelegationSetNotAvailable 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDelegationSetNotAvailable :: Newtype DelegationSetNotAvailable _
derive instance repGenericDelegationSetNotAvailable :: Generic DelegationSetNotAvailable _
instance showDelegationSetNotAvailable :: Show DelegationSetNotAvailable where show = genericShow
instance decodeDelegationSetNotAvailable :: Decode DelegationSetNotAvailable where decode = genericDecode options
instance encodeDelegationSetNotAvailable :: Encode DelegationSetNotAvailable where encode = genericEncode options

-- | Constructs DelegationSetNotAvailable from required parameters
newDelegationSetNotAvailable :: DelegationSetNotAvailable
newDelegationSetNotAvailable  = DelegationSetNotAvailable { "message": Nothing }

-- | Constructs DelegationSetNotAvailable's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDelegationSetNotAvailable' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DelegationSetNotAvailable
newDelegationSetNotAvailable'  customize = (DelegationSetNotAvailable <<< customize) { "message": Nothing }



-- | <p>A reusable delegation set with the specified ID does not exist.</p>
newtype DelegationSetNotReusable = DelegationSetNotReusable 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDelegationSetNotReusable :: Newtype DelegationSetNotReusable _
derive instance repGenericDelegationSetNotReusable :: Generic DelegationSetNotReusable _
instance showDelegationSetNotReusable :: Show DelegationSetNotReusable where show = genericShow
instance decodeDelegationSetNotReusable :: Decode DelegationSetNotReusable where decode = genericDecode options
instance encodeDelegationSetNotReusable :: Encode DelegationSetNotReusable where encode = genericEncode options

-- | Constructs DelegationSetNotReusable from required parameters
newDelegationSetNotReusable :: DelegationSetNotReusable
newDelegationSetNotReusable  = DelegationSetNotReusable { "message": Nothing }

-- | Constructs DelegationSetNotReusable's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDelegationSetNotReusable' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DelegationSetNotReusable
newDelegationSetNotReusable'  customize = (DelegationSetNotReusable <<< customize) { "message": Nothing }



newtype DelegationSets = DelegationSets (Array DelegationSet)
derive instance newtypeDelegationSets :: Newtype DelegationSets _
derive instance repGenericDelegationSets :: Generic DelegationSets _
instance showDelegationSets :: Show DelegationSets where show = genericShow
instance decodeDelegationSets :: Decode DelegationSets where decode = genericDecode options
instance encodeDelegationSets :: Encode DelegationSets where encode = genericEncode options



-- | <p>This action deletes a health check.</p>
newtype DeleteHealthCheckRequest = DeleteHealthCheckRequest 
  { "HealthCheckId" :: (HealthCheckId)
  }
derive instance newtypeDeleteHealthCheckRequest :: Newtype DeleteHealthCheckRequest _
derive instance repGenericDeleteHealthCheckRequest :: Generic DeleteHealthCheckRequest _
instance showDeleteHealthCheckRequest :: Show DeleteHealthCheckRequest where show = genericShow
instance decodeDeleteHealthCheckRequest :: Decode DeleteHealthCheckRequest where decode = genericDecode options
instance encodeDeleteHealthCheckRequest :: Encode DeleteHealthCheckRequest where encode = genericEncode options

-- | Constructs DeleteHealthCheckRequest from required parameters
newDeleteHealthCheckRequest :: HealthCheckId -> DeleteHealthCheckRequest
newDeleteHealthCheckRequest _HealthCheckId = DeleteHealthCheckRequest { "HealthCheckId": _HealthCheckId }

-- | Constructs DeleteHealthCheckRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteHealthCheckRequest' :: HealthCheckId -> ( { "HealthCheckId" :: (HealthCheckId) } -> {"HealthCheckId" :: (HealthCheckId) } ) -> DeleteHealthCheckRequest
newDeleteHealthCheckRequest' _HealthCheckId customize = (DeleteHealthCheckRequest <<< customize) { "HealthCheckId": _HealthCheckId }



-- | <p>An empty element.</p>
newtype DeleteHealthCheckResponse = DeleteHealthCheckResponse Types.NoArguments
derive instance newtypeDeleteHealthCheckResponse :: Newtype DeleteHealthCheckResponse _
derive instance repGenericDeleteHealthCheckResponse :: Generic DeleteHealthCheckResponse _
instance showDeleteHealthCheckResponse :: Show DeleteHealthCheckResponse where show = genericShow
instance decodeDeleteHealthCheckResponse :: Decode DeleteHealthCheckResponse where decode = genericDecode options
instance encodeDeleteHealthCheckResponse :: Encode DeleteHealthCheckResponse where encode = genericEncode options



-- | <p>A request to delete a hosted zone.</p>
newtype DeleteHostedZoneRequest = DeleteHostedZoneRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeDeleteHostedZoneRequest :: Newtype DeleteHostedZoneRequest _
derive instance repGenericDeleteHostedZoneRequest :: Generic DeleteHostedZoneRequest _
instance showDeleteHostedZoneRequest :: Show DeleteHostedZoneRequest where show = genericShow
instance decodeDeleteHostedZoneRequest :: Decode DeleteHostedZoneRequest where decode = genericDecode options
instance encodeDeleteHostedZoneRequest :: Encode DeleteHostedZoneRequest where encode = genericEncode options

-- | Constructs DeleteHostedZoneRequest from required parameters
newDeleteHostedZoneRequest :: ResourceId -> DeleteHostedZoneRequest
newDeleteHostedZoneRequest _Id = DeleteHostedZoneRequest { "Id": _Id }

-- | Constructs DeleteHostedZoneRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteHostedZoneRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> DeleteHostedZoneRequest
newDeleteHostedZoneRequest' _Id customize = (DeleteHostedZoneRequest <<< customize) { "Id": _Id }



-- | <p>A complex type that contains the response to a <code>DeleteHostedZone</code> request.</p>
newtype DeleteHostedZoneResponse = DeleteHostedZoneResponse 
  { "ChangeInfo" :: (ChangeInfo)
  }
derive instance newtypeDeleteHostedZoneResponse :: Newtype DeleteHostedZoneResponse _
derive instance repGenericDeleteHostedZoneResponse :: Generic DeleteHostedZoneResponse _
instance showDeleteHostedZoneResponse :: Show DeleteHostedZoneResponse where show = genericShow
instance decodeDeleteHostedZoneResponse :: Decode DeleteHostedZoneResponse where decode = genericDecode options
instance encodeDeleteHostedZoneResponse :: Encode DeleteHostedZoneResponse where encode = genericEncode options

-- | Constructs DeleteHostedZoneResponse from required parameters
newDeleteHostedZoneResponse :: ChangeInfo -> DeleteHostedZoneResponse
newDeleteHostedZoneResponse _ChangeInfo = DeleteHostedZoneResponse { "ChangeInfo": _ChangeInfo }

-- | Constructs DeleteHostedZoneResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteHostedZoneResponse' :: ChangeInfo -> ( { "ChangeInfo" :: (ChangeInfo) } -> {"ChangeInfo" :: (ChangeInfo) } ) -> DeleteHostedZoneResponse
newDeleteHostedZoneResponse' _ChangeInfo customize = (DeleteHostedZoneResponse <<< customize) { "ChangeInfo": _ChangeInfo }



newtype DeleteQueryLoggingConfigRequest = DeleteQueryLoggingConfigRequest 
  { "Id" :: (QueryLoggingConfigId)
  }
derive instance newtypeDeleteQueryLoggingConfigRequest :: Newtype DeleteQueryLoggingConfigRequest _
derive instance repGenericDeleteQueryLoggingConfigRequest :: Generic DeleteQueryLoggingConfigRequest _
instance showDeleteQueryLoggingConfigRequest :: Show DeleteQueryLoggingConfigRequest where show = genericShow
instance decodeDeleteQueryLoggingConfigRequest :: Decode DeleteQueryLoggingConfigRequest where decode = genericDecode options
instance encodeDeleteQueryLoggingConfigRequest :: Encode DeleteQueryLoggingConfigRequest where encode = genericEncode options

-- | Constructs DeleteQueryLoggingConfigRequest from required parameters
newDeleteQueryLoggingConfigRequest :: QueryLoggingConfigId -> DeleteQueryLoggingConfigRequest
newDeleteQueryLoggingConfigRequest _Id = DeleteQueryLoggingConfigRequest { "Id": _Id }

-- | Constructs DeleteQueryLoggingConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteQueryLoggingConfigRequest' :: QueryLoggingConfigId -> ( { "Id" :: (QueryLoggingConfigId) } -> {"Id" :: (QueryLoggingConfigId) } ) -> DeleteQueryLoggingConfigRequest
newDeleteQueryLoggingConfigRequest' _Id customize = (DeleteQueryLoggingConfigRequest <<< customize) { "Id": _Id }



newtype DeleteQueryLoggingConfigResponse = DeleteQueryLoggingConfigResponse Types.NoArguments
derive instance newtypeDeleteQueryLoggingConfigResponse :: Newtype DeleteQueryLoggingConfigResponse _
derive instance repGenericDeleteQueryLoggingConfigResponse :: Generic DeleteQueryLoggingConfigResponse _
instance showDeleteQueryLoggingConfigResponse :: Show DeleteQueryLoggingConfigResponse where show = genericShow
instance decodeDeleteQueryLoggingConfigResponse :: Decode DeleteQueryLoggingConfigResponse where decode = genericDecode options
instance encodeDeleteQueryLoggingConfigResponse :: Encode DeleteQueryLoggingConfigResponse where encode = genericEncode options



-- | <p>A request to delete a reusable delegation set.</p>
newtype DeleteReusableDelegationSetRequest = DeleteReusableDelegationSetRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeDeleteReusableDelegationSetRequest :: Newtype DeleteReusableDelegationSetRequest _
derive instance repGenericDeleteReusableDelegationSetRequest :: Generic DeleteReusableDelegationSetRequest _
instance showDeleteReusableDelegationSetRequest :: Show DeleteReusableDelegationSetRequest where show = genericShow
instance decodeDeleteReusableDelegationSetRequest :: Decode DeleteReusableDelegationSetRequest where decode = genericDecode options
instance encodeDeleteReusableDelegationSetRequest :: Encode DeleteReusableDelegationSetRequest where encode = genericEncode options

-- | Constructs DeleteReusableDelegationSetRequest from required parameters
newDeleteReusableDelegationSetRequest :: ResourceId -> DeleteReusableDelegationSetRequest
newDeleteReusableDelegationSetRequest _Id = DeleteReusableDelegationSetRequest { "Id": _Id }

-- | Constructs DeleteReusableDelegationSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteReusableDelegationSetRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> DeleteReusableDelegationSetRequest
newDeleteReusableDelegationSetRequest' _Id customize = (DeleteReusableDelegationSetRequest <<< customize) { "Id": _Id }



-- | <p>An empty element.</p>
newtype DeleteReusableDelegationSetResponse = DeleteReusableDelegationSetResponse Types.NoArguments
derive instance newtypeDeleteReusableDelegationSetResponse :: Newtype DeleteReusableDelegationSetResponse _
derive instance repGenericDeleteReusableDelegationSetResponse :: Generic DeleteReusableDelegationSetResponse _
instance showDeleteReusableDelegationSetResponse :: Show DeleteReusableDelegationSetResponse where show = genericShow
instance decodeDeleteReusableDelegationSetResponse :: Decode DeleteReusableDelegationSetResponse where decode = genericDecode options
instance encodeDeleteReusableDelegationSetResponse :: Encode DeleteReusableDelegationSetResponse where encode = genericEncode options



-- | <p>A request to delete a specified traffic policy instance.</p>
newtype DeleteTrafficPolicyInstanceRequest = DeleteTrafficPolicyInstanceRequest 
  { "Id" :: (TrafficPolicyInstanceId)
  }
derive instance newtypeDeleteTrafficPolicyInstanceRequest :: Newtype DeleteTrafficPolicyInstanceRequest _
derive instance repGenericDeleteTrafficPolicyInstanceRequest :: Generic DeleteTrafficPolicyInstanceRequest _
instance showDeleteTrafficPolicyInstanceRequest :: Show DeleteTrafficPolicyInstanceRequest where show = genericShow
instance decodeDeleteTrafficPolicyInstanceRequest :: Decode DeleteTrafficPolicyInstanceRequest where decode = genericDecode options
instance encodeDeleteTrafficPolicyInstanceRequest :: Encode DeleteTrafficPolicyInstanceRequest where encode = genericEncode options

-- | Constructs DeleteTrafficPolicyInstanceRequest from required parameters
newDeleteTrafficPolicyInstanceRequest :: TrafficPolicyInstanceId -> DeleteTrafficPolicyInstanceRequest
newDeleteTrafficPolicyInstanceRequest _Id = DeleteTrafficPolicyInstanceRequest { "Id": _Id }

-- | Constructs DeleteTrafficPolicyInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTrafficPolicyInstanceRequest' :: TrafficPolicyInstanceId -> ( { "Id" :: (TrafficPolicyInstanceId) } -> {"Id" :: (TrafficPolicyInstanceId) } ) -> DeleteTrafficPolicyInstanceRequest
newDeleteTrafficPolicyInstanceRequest' _Id customize = (DeleteTrafficPolicyInstanceRequest <<< customize) { "Id": _Id }



-- | <p>An empty element.</p>
newtype DeleteTrafficPolicyInstanceResponse = DeleteTrafficPolicyInstanceResponse Types.NoArguments
derive instance newtypeDeleteTrafficPolicyInstanceResponse :: Newtype DeleteTrafficPolicyInstanceResponse _
derive instance repGenericDeleteTrafficPolicyInstanceResponse :: Generic DeleteTrafficPolicyInstanceResponse _
instance showDeleteTrafficPolicyInstanceResponse :: Show DeleteTrafficPolicyInstanceResponse where show = genericShow
instance decodeDeleteTrafficPolicyInstanceResponse :: Decode DeleteTrafficPolicyInstanceResponse where decode = genericDecode options
instance encodeDeleteTrafficPolicyInstanceResponse :: Encode DeleteTrafficPolicyInstanceResponse where encode = genericEncode options



-- | <p>A request to delete a specified traffic policy version.</p>
newtype DeleteTrafficPolicyRequest = DeleteTrafficPolicyRequest 
  { "Id" :: (TrafficPolicyId)
  , "Version" :: (TrafficPolicyVersion)
  }
derive instance newtypeDeleteTrafficPolicyRequest :: Newtype DeleteTrafficPolicyRequest _
derive instance repGenericDeleteTrafficPolicyRequest :: Generic DeleteTrafficPolicyRequest _
instance showDeleteTrafficPolicyRequest :: Show DeleteTrafficPolicyRequest where show = genericShow
instance decodeDeleteTrafficPolicyRequest :: Decode DeleteTrafficPolicyRequest where decode = genericDecode options
instance encodeDeleteTrafficPolicyRequest :: Encode DeleteTrafficPolicyRequest where encode = genericEncode options

-- | Constructs DeleteTrafficPolicyRequest from required parameters
newDeleteTrafficPolicyRequest :: TrafficPolicyId -> TrafficPolicyVersion -> DeleteTrafficPolicyRequest
newDeleteTrafficPolicyRequest _Id _Version = DeleteTrafficPolicyRequest { "Id": _Id, "Version": _Version }

-- | Constructs DeleteTrafficPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTrafficPolicyRequest' :: TrafficPolicyId -> TrafficPolicyVersion -> ( { "Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) } -> {"Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) } ) -> DeleteTrafficPolicyRequest
newDeleteTrafficPolicyRequest' _Id _Version customize = (DeleteTrafficPolicyRequest <<< customize) { "Id": _Id, "Version": _Version }



-- | <p>An empty element.</p>
newtype DeleteTrafficPolicyResponse = DeleteTrafficPolicyResponse Types.NoArguments
derive instance newtypeDeleteTrafficPolicyResponse :: Newtype DeleteTrafficPolicyResponse _
derive instance repGenericDeleteTrafficPolicyResponse :: Generic DeleteTrafficPolicyResponse _
instance showDeleteTrafficPolicyResponse :: Show DeleteTrafficPolicyResponse where show = genericShow
instance decodeDeleteTrafficPolicyResponse :: Decode DeleteTrafficPolicyResponse where decode = genericDecode options
instance encodeDeleteTrafficPolicyResponse :: Encode DeleteTrafficPolicyResponse where encode = genericEncode options



-- | <p>A complex type that contains information about the request to remove authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account. </p>
newtype DeleteVPCAssociationAuthorizationRequest = DeleteVPCAssociationAuthorizationRequest 
  { "HostedZoneId" :: (ResourceId)
  , "VPC" :: (VPC)
  }
derive instance newtypeDeleteVPCAssociationAuthorizationRequest :: Newtype DeleteVPCAssociationAuthorizationRequest _
derive instance repGenericDeleteVPCAssociationAuthorizationRequest :: Generic DeleteVPCAssociationAuthorizationRequest _
instance showDeleteVPCAssociationAuthorizationRequest :: Show DeleteVPCAssociationAuthorizationRequest where show = genericShow
instance decodeDeleteVPCAssociationAuthorizationRequest :: Decode DeleteVPCAssociationAuthorizationRequest where decode = genericDecode options
instance encodeDeleteVPCAssociationAuthorizationRequest :: Encode DeleteVPCAssociationAuthorizationRequest where encode = genericEncode options

-- | Constructs DeleteVPCAssociationAuthorizationRequest from required parameters
newDeleteVPCAssociationAuthorizationRequest :: ResourceId -> VPC -> DeleteVPCAssociationAuthorizationRequest
newDeleteVPCAssociationAuthorizationRequest _HostedZoneId _VPC = DeleteVPCAssociationAuthorizationRequest { "HostedZoneId": _HostedZoneId, "VPC": _VPC }

-- | Constructs DeleteVPCAssociationAuthorizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVPCAssociationAuthorizationRequest' :: ResourceId -> VPC -> ( { "HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) } -> {"HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) } ) -> DeleteVPCAssociationAuthorizationRequest
newDeleteVPCAssociationAuthorizationRequest' _HostedZoneId _VPC customize = (DeleteVPCAssociationAuthorizationRequest <<< customize) { "HostedZoneId": _HostedZoneId, "VPC": _VPC }



-- | <p>Empty response for the request.</p>
newtype DeleteVPCAssociationAuthorizationResponse = DeleteVPCAssociationAuthorizationResponse Types.NoArguments
derive instance newtypeDeleteVPCAssociationAuthorizationResponse :: Newtype DeleteVPCAssociationAuthorizationResponse _
derive instance repGenericDeleteVPCAssociationAuthorizationResponse :: Generic DeleteVPCAssociationAuthorizationResponse _
instance showDeleteVPCAssociationAuthorizationResponse :: Show DeleteVPCAssociationAuthorizationResponse where show = genericShow
instance decodeDeleteVPCAssociationAuthorizationResponse :: Decode DeleteVPCAssociationAuthorizationResponse where decode = genericDecode options
instance encodeDeleteVPCAssociationAuthorizationResponse :: Encode DeleteVPCAssociationAuthorizationResponse where encode = genericEncode options



-- | <p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about one dimension.</p>
newtype Dimension = Dimension 
  { "Name" :: (DimensionField)
  , "Value" :: (DimensionField)
  }
derive instance newtypeDimension :: Newtype Dimension _
derive instance repGenericDimension :: Generic Dimension _
instance showDimension :: Show Dimension where show = genericShow
instance decodeDimension :: Decode Dimension where decode = genericDecode options
instance encodeDimension :: Encode Dimension where encode = genericEncode options

-- | Constructs Dimension from required parameters
newDimension :: DimensionField -> DimensionField -> Dimension
newDimension _Name _Value = Dimension { "Name": _Name, "Value": _Value }

-- | Constructs Dimension's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDimension' :: DimensionField -> DimensionField -> ( { "Name" :: (DimensionField) , "Value" :: (DimensionField) } -> {"Name" :: (DimensionField) , "Value" :: (DimensionField) } ) -> Dimension
newDimension' _Name _Value customize = (Dimension <<< customize) { "Name": _Name, "Value": _Value }



newtype DimensionField = DimensionField String
derive instance newtypeDimensionField :: Newtype DimensionField _
derive instance repGenericDimensionField :: Generic DimensionField _
instance showDimensionField :: Show DimensionField where show = genericShow
instance decodeDimensionField :: Decode DimensionField where decode = genericDecode options
instance encodeDimensionField :: Encode DimensionField where encode = genericEncode options



newtype DimensionList = DimensionList (Array Dimension)
derive instance newtypeDimensionList :: Newtype DimensionList _
derive instance repGenericDimensionList :: Generic DimensionList _
instance showDimensionList :: Show DimensionList where show = genericShow
instance decodeDimensionList :: Decode DimensionList where decode = genericDecode options
instance encodeDimensionList :: Encode DimensionList where encode = genericEncode options



newtype DisassociateVPCComment = DisassociateVPCComment String
derive instance newtypeDisassociateVPCComment :: Newtype DisassociateVPCComment _
derive instance repGenericDisassociateVPCComment :: Generic DisassociateVPCComment _
instance showDisassociateVPCComment :: Show DisassociateVPCComment where show = genericShow
instance decodeDisassociateVPCComment :: Decode DisassociateVPCComment where decode = genericDecode options
instance encodeDisassociateVPCComment :: Encode DisassociateVPCComment where encode = genericEncode options



-- | <p>A complex type that contains information about the VPC that you want to disassociate from a specified private hosted zone.</p>
newtype DisassociateVPCFromHostedZoneRequest = DisassociateVPCFromHostedZoneRequest 
  { "HostedZoneId" :: (ResourceId)
  , "VPC" :: (VPC)
  , "Comment" :: Maybe (DisassociateVPCComment)
  }
derive instance newtypeDisassociateVPCFromHostedZoneRequest :: Newtype DisassociateVPCFromHostedZoneRequest _
derive instance repGenericDisassociateVPCFromHostedZoneRequest :: Generic DisassociateVPCFromHostedZoneRequest _
instance showDisassociateVPCFromHostedZoneRequest :: Show DisassociateVPCFromHostedZoneRequest where show = genericShow
instance decodeDisassociateVPCFromHostedZoneRequest :: Decode DisassociateVPCFromHostedZoneRequest where decode = genericDecode options
instance encodeDisassociateVPCFromHostedZoneRequest :: Encode DisassociateVPCFromHostedZoneRequest where encode = genericEncode options

-- | Constructs DisassociateVPCFromHostedZoneRequest from required parameters
newDisassociateVPCFromHostedZoneRequest :: ResourceId -> VPC -> DisassociateVPCFromHostedZoneRequest
newDisassociateVPCFromHostedZoneRequest _HostedZoneId _VPC = DisassociateVPCFromHostedZoneRequest { "HostedZoneId": _HostedZoneId, "VPC": _VPC, "Comment": Nothing }

-- | Constructs DisassociateVPCFromHostedZoneRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateVPCFromHostedZoneRequest' :: ResourceId -> VPC -> ( { "HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) , "Comment" :: Maybe (DisassociateVPCComment) } -> {"HostedZoneId" :: (ResourceId) , "VPC" :: (VPC) , "Comment" :: Maybe (DisassociateVPCComment) } ) -> DisassociateVPCFromHostedZoneRequest
newDisassociateVPCFromHostedZoneRequest' _HostedZoneId _VPC customize = (DisassociateVPCFromHostedZoneRequest <<< customize) { "HostedZoneId": _HostedZoneId, "VPC": _VPC, "Comment": Nothing }



-- | <p>A complex type that contains the response information for the disassociate request.</p>
newtype DisassociateVPCFromHostedZoneResponse = DisassociateVPCFromHostedZoneResponse 
  { "ChangeInfo" :: (ChangeInfo)
  }
derive instance newtypeDisassociateVPCFromHostedZoneResponse :: Newtype DisassociateVPCFromHostedZoneResponse _
derive instance repGenericDisassociateVPCFromHostedZoneResponse :: Generic DisassociateVPCFromHostedZoneResponse _
instance showDisassociateVPCFromHostedZoneResponse :: Show DisassociateVPCFromHostedZoneResponse where show = genericShow
instance decodeDisassociateVPCFromHostedZoneResponse :: Decode DisassociateVPCFromHostedZoneResponse where decode = genericDecode options
instance encodeDisassociateVPCFromHostedZoneResponse :: Encode DisassociateVPCFromHostedZoneResponse where encode = genericEncode options

-- | Constructs DisassociateVPCFromHostedZoneResponse from required parameters
newDisassociateVPCFromHostedZoneResponse :: ChangeInfo -> DisassociateVPCFromHostedZoneResponse
newDisassociateVPCFromHostedZoneResponse _ChangeInfo = DisassociateVPCFromHostedZoneResponse { "ChangeInfo": _ChangeInfo }

-- | Constructs DisassociateVPCFromHostedZoneResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateVPCFromHostedZoneResponse' :: ChangeInfo -> ( { "ChangeInfo" :: (ChangeInfo) } -> {"ChangeInfo" :: (ChangeInfo) } ) -> DisassociateVPCFromHostedZoneResponse
newDisassociateVPCFromHostedZoneResponse' _ChangeInfo customize = (DisassociateVPCFromHostedZoneResponse <<< customize) { "ChangeInfo": _ChangeInfo }



newtype EnableSNI = EnableSNI Boolean
derive instance newtypeEnableSNI :: Newtype EnableSNI _
derive instance repGenericEnableSNI :: Generic EnableSNI _
instance showEnableSNI :: Show EnableSNI where show = genericShow
instance decodeEnableSNI :: Decode EnableSNI where decode = genericDecode options
instance encodeEnableSNI :: Encode EnableSNI where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype ErrorMessages = ErrorMessages (Array ErrorMessage)
derive instance newtypeErrorMessages :: Newtype ErrorMessages _
derive instance repGenericErrorMessages :: Generic ErrorMessages _
instance showErrorMessages :: Show ErrorMessages where show = genericShow
instance decodeErrorMessages :: Decode ErrorMessages where decode = genericDecode options
instance encodeErrorMessages :: Encode ErrorMessages where encode = genericEncode options



newtype EvaluationPeriods = EvaluationPeriods Int
derive instance newtypeEvaluationPeriods :: Newtype EvaluationPeriods _
derive instance repGenericEvaluationPeriods :: Generic EvaluationPeriods _
instance showEvaluationPeriods :: Show EvaluationPeriods where show = genericShow
instance decodeEvaluationPeriods :: Decode EvaluationPeriods where decode = genericDecode options
instance encodeEvaluationPeriods :: Encode EvaluationPeriods where encode = genericEncode options



newtype FailureThreshold = FailureThreshold Int
derive instance newtypeFailureThreshold :: Newtype FailureThreshold _
derive instance repGenericFailureThreshold :: Generic FailureThreshold _
instance showFailureThreshold :: Show FailureThreshold where show = genericShow
instance decodeFailureThreshold :: Decode FailureThreshold where decode = genericDecode options
instance encodeFailureThreshold :: Encode FailureThreshold where encode = genericEncode options



newtype FullyQualifiedDomainName = FullyQualifiedDomainName String
derive instance newtypeFullyQualifiedDomainName :: Newtype FullyQualifiedDomainName _
derive instance repGenericFullyQualifiedDomainName :: Generic FullyQualifiedDomainName _
instance showFullyQualifiedDomainName :: Show FullyQualifiedDomainName where show = genericShow
instance decodeFullyQualifiedDomainName :: Decode FullyQualifiedDomainName where decode = genericDecode options
instance encodeFullyQualifiedDomainName :: Encode FullyQualifiedDomainName where encode = genericEncode options



-- | <p>A complex type that contains information about a geo location.</p>
newtype GeoLocation = GeoLocation 
  { "ContinentCode" :: Maybe (GeoLocationContinentCode)
  , "CountryCode" :: Maybe (GeoLocationCountryCode)
  , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode)
  }
derive instance newtypeGeoLocation :: Newtype GeoLocation _
derive instance repGenericGeoLocation :: Generic GeoLocation _
instance showGeoLocation :: Show GeoLocation where show = genericShow
instance decodeGeoLocation :: Decode GeoLocation where decode = genericDecode options
instance encodeGeoLocation :: Encode GeoLocation where encode = genericEncode options

-- | Constructs GeoLocation from required parameters
newGeoLocation :: GeoLocation
newGeoLocation  = GeoLocation { "ContinentCode": Nothing, "CountryCode": Nothing, "SubdivisionCode": Nothing }

-- | Constructs GeoLocation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoLocation' :: ( { "ContinentCode" :: Maybe (GeoLocationContinentCode) , "CountryCode" :: Maybe (GeoLocationCountryCode) , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) } -> {"ContinentCode" :: Maybe (GeoLocationContinentCode) , "CountryCode" :: Maybe (GeoLocationCountryCode) , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) } ) -> GeoLocation
newGeoLocation'  customize = (GeoLocation <<< customize) { "ContinentCode": Nothing, "CountryCode": Nothing, "SubdivisionCode": Nothing }



newtype GeoLocationContinentCode = GeoLocationContinentCode String
derive instance newtypeGeoLocationContinentCode :: Newtype GeoLocationContinentCode _
derive instance repGenericGeoLocationContinentCode :: Generic GeoLocationContinentCode _
instance showGeoLocationContinentCode :: Show GeoLocationContinentCode where show = genericShow
instance decodeGeoLocationContinentCode :: Decode GeoLocationContinentCode where decode = genericDecode options
instance encodeGeoLocationContinentCode :: Encode GeoLocationContinentCode where encode = genericEncode options



newtype GeoLocationContinentName = GeoLocationContinentName String
derive instance newtypeGeoLocationContinentName :: Newtype GeoLocationContinentName _
derive instance repGenericGeoLocationContinentName :: Generic GeoLocationContinentName _
instance showGeoLocationContinentName :: Show GeoLocationContinentName where show = genericShow
instance decodeGeoLocationContinentName :: Decode GeoLocationContinentName where decode = genericDecode options
instance encodeGeoLocationContinentName :: Encode GeoLocationContinentName where encode = genericEncode options



newtype GeoLocationCountryCode = GeoLocationCountryCode String
derive instance newtypeGeoLocationCountryCode :: Newtype GeoLocationCountryCode _
derive instance repGenericGeoLocationCountryCode :: Generic GeoLocationCountryCode _
instance showGeoLocationCountryCode :: Show GeoLocationCountryCode where show = genericShow
instance decodeGeoLocationCountryCode :: Decode GeoLocationCountryCode where decode = genericDecode options
instance encodeGeoLocationCountryCode :: Encode GeoLocationCountryCode where encode = genericEncode options



newtype GeoLocationCountryName = GeoLocationCountryName String
derive instance newtypeGeoLocationCountryName :: Newtype GeoLocationCountryName _
derive instance repGenericGeoLocationCountryName :: Generic GeoLocationCountryName _
instance showGeoLocationCountryName :: Show GeoLocationCountryName where show = genericShow
instance decodeGeoLocationCountryName :: Decode GeoLocationCountryName where decode = genericDecode options
instance encodeGeoLocationCountryName :: Encode GeoLocationCountryName where encode = genericEncode options



-- | <p>A complex type that contains the codes and full continent, country, and subdivision names for the specified <code>geolocation</code> code.</p>
newtype GeoLocationDetails = GeoLocationDetails 
  { "ContinentCode" :: Maybe (GeoLocationContinentCode)
  , "ContinentName" :: Maybe (GeoLocationContinentName)
  , "CountryCode" :: Maybe (GeoLocationCountryCode)
  , "CountryName" :: Maybe (GeoLocationCountryName)
  , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode)
  , "SubdivisionName" :: Maybe (GeoLocationSubdivisionName)
  }
derive instance newtypeGeoLocationDetails :: Newtype GeoLocationDetails _
derive instance repGenericGeoLocationDetails :: Generic GeoLocationDetails _
instance showGeoLocationDetails :: Show GeoLocationDetails where show = genericShow
instance decodeGeoLocationDetails :: Decode GeoLocationDetails where decode = genericDecode options
instance encodeGeoLocationDetails :: Encode GeoLocationDetails where encode = genericEncode options

-- | Constructs GeoLocationDetails from required parameters
newGeoLocationDetails :: GeoLocationDetails
newGeoLocationDetails  = GeoLocationDetails { "ContinentCode": Nothing, "ContinentName": Nothing, "CountryCode": Nothing, "CountryName": Nothing, "SubdivisionCode": Nothing, "SubdivisionName": Nothing }

-- | Constructs GeoLocationDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoLocationDetails' :: ( { "ContinentCode" :: Maybe (GeoLocationContinentCode) , "ContinentName" :: Maybe (GeoLocationContinentName) , "CountryCode" :: Maybe (GeoLocationCountryCode) , "CountryName" :: Maybe (GeoLocationCountryName) , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) , "SubdivisionName" :: Maybe (GeoLocationSubdivisionName) } -> {"ContinentCode" :: Maybe (GeoLocationContinentCode) , "ContinentName" :: Maybe (GeoLocationContinentName) , "CountryCode" :: Maybe (GeoLocationCountryCode) , "CountryName" :: Maybe (GeoLocationCountryName) , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) , "SubdivisionName" :: Maybe (GeoLocationSubdivisionName) } ) -> GeoLocationDetails
newGeoLocationDetails'  customize = (GeoLocationDetails <<< customize) { "ContinentCode": Nothing, "ContinentName": Nothing, "CountryCode": Nothing, "CountryName": Nothing, "SubdivisionCode": Nothing, "SubdivisionName": Nothing }



newtype GeoLocationDetailsList = GeoLocationDetailsList (Array GeoLocationDetails)
derive instance newtypeGeoLocationDetailsList :: Newtype GeoLocationDetailsList _
derive instance repGenericGeoLocationDetailsList :: Generic GeoLocationDetailsList _
instance showGeoLocationDetailsList :: Show GeoLocationDetailsList where show = genericShow
instance decodeGeoLocationDetailsList :: Decode GeoLocationDetailsList where decode = genericDecode options
instance encodeGeoLocationDetailsList :: Encode GeoLocationDetailsList where encode = genericEncode options



newtype GeoLocationSubdivisionCode = GeoLocationSubdivisionCode String
derive instance newtypeGeoLocationSubdivisionCode :: Newtype GeoLocationSubdivisionCode _
derive instance repGenericGeoLocationSubdivisionCode :: Generic GeoLocationSubdivisionCode _
instance showGeoLocationSubdivisionCode :: Show GeoLocationSubdivisionCode where show = genericShow
instance decodeGeoLocationSubdivisionCode :: Decode GeoLocationSubdivisionCode where decode = genericDecode options
instance encodeGeoLocationSubdivisionCode :: Encode GeoLocationSubdivisionCode where encode = genericEncode options



newtype GeoLocationSubdivisionName = GeoLocationSubdivisionName String
derive instance newtypeGeoLocationSubdivisionName :: Newtype GeoLocationSubdivisionName _
derive instance repGenericGeoLocationSubdivisionName :: Generic GeoLocationSubdivisionName _
instance showGeoLocationSubdivisionName :: Show GeoLocationSubdivisionName where show = genericShow
instance decodeGeoLocationSubdivisionName :: Decode GeoLocationSubdivisionName where decode = genericDecode options
instance encodeGeoLocationSubdivisionName :: Encode GeoLocationSubdivisionName where encode = genericEncode options



-- | <p>A complex type that contains information about the request to create a hosted zone.</p>
newtype GetAccountLimitRequest = GetAccountLimitRequest 
  { "Type" :: (AccountLimitType)
  }
derive instance newtypeGetAccountLimitRequest :: Newtype GetAccountLimitRequest _
derive instance repGenericGetAccountLimitRequest :: Generic GetAccountLimitRequest _
instance showGetAccountLimitRequest :: Show GetAccountLimitRequest where show = genericShow
instance decodeGetAccountLimitRequest :: Decode GetAccountLimitRequest where decode = genericDecode options
instance encodeGetAccountLimitRequest :: Encode GetAccountLimitRequest where encode = genericEncode options

-- | Constructs GetAccountLimitRequest from required parameters
newGetAccountLimitRequest :: AccountLimitType -> GetAccountLimitRequest
newGetAccountLimitRequest _Type = GetAccountLimitRequest { "Type": _Type }

-- | Constructs GetAccountLimitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountLimitRequest' :: AccountLimitType -> ( { "Type" :: (AccountLimitType) } -> {"Type" :: (AccountLimitType) } ) -> GetAccountLimitRequest
newGetAccountLimitRequest' _Type customize = (GetAccountLimitRequest <<< customize) { "Type": _Type }



-- | <p>A complex type that contains the requested limit. </p>
newtype GetAccountLimitResponse = GetAccountLimitResponse 
  { "Limit" :: (AccountLimit)
  , "Count" :: (UsageCount)
  }
derive instance newtypeGetAccountLimitResponse :: Newtype GetAccountLimitResponse _
derive instance repGenericGetAccountLimitResponse :: Generic GetAccountLimitResponse _
instance showGetAccountLimitResponse :: Show GetAccountLimitResponse where show = genericShow
instance decodeGetAccountLimitResponse :: Decode GetAccountLimitResponse where decode = genericDecode options
instance encodeGetAccountLimitResponse :: Encode GetAccountLimitResponse where encode = genericEncode options

-- | Constructs GetAccountLimitResponse from required parameters
newGetAccountLimitResponse :: UsageCount -> AccountLimit -> GetAccountLimitResponse
newGetAccountLimitResponse _Count _Limit = GetAccountLimitResponse { "Count": _Count, "Limit": _Limit }

-- | Constructs GetAccountLimitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAccountLimitResponse' :: UsageCount -> AccountLimit -> ( { "Limit" :: (AccountLimit) , "Count" :: (UsageCount) } -> {"Limit" :: (AccountLimit) , "Count" :: (UsageCount) } ) -> GetAccountLimitResponse
newGetAccountLimitResponse' _Count _Limit customize = (GetAccountLimitResponse <<< customize) { "Count": _Count, "Limit": _Limit }



-- | <p>The input for a GetChange request.</p>
newtype GetChangeRequest = GetChangeRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetChangeRequest :: Newtype GetChangeRequest _
derive instance repGenericGetChangeRequest :: Generic GetChangeRequest _
instance showGetChangeRequest :: Show GetChangeRequest where show = genericShow
instance decodeGetChangeRequest :: Decode GetChangeRequest where decode = genericDecode options
instance encodeGetChangeRequest :: Encode GetChangeRequest where encode = genericEncode options

-- | Constructs GetChangeRequest from required parameters
newGetChangeRequest :: ResourceId -> GetChangeRequest
newGetChangeRequest _Id = GetChangeRequest { "Id": _Id }

-- | Constructs GetChangeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetChangeRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetChangeRequest
newGetChangeRequest' _Id customize = (GetChangeRequest <<< customize) { "Id": _Id }



-- | <p>A complex type that contains the <code>ChangeInfo</code> element.</p>
newtype GetChangeResponse = GetChangeResponse 
  { "ChangeInfo" :: (ChangeInfo)
  }
derive instance newtypeGetChangeResponse :: Newtype GetChangeResponse _
derive instance repGenericGetChangeResponse :: Generic GetChangeResponse _
instance showGetChangeResponse :: Show GetChangeResponse where show = genericShow
instance decodeGetChangeResponse :: Decode GetChangeResponse where decode = genericDecode options
instance encodeGetChangeResponse :: Encode GetChangeResponse where encode = genericEncode options

-- | Constructs GetChangeResponse from required parameters
newGetChangeResponse :: ChangeInfo -> GetChangeResponse
newGetChangeResponse _ChangeInfo = GetChangeResponse { "ChangeInfo": _ChangeInfo }

-- | Constructs GetChangeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetChangeResponse' :: ChangeInfo -> ( { "ChangeInfo" :: (ChangeInfo) } -> {"ChangeInfo" :: (ChangeInfo) } ) -> GetChangeResponse
newGetChangeResponse' _ChangeInfo customize = (GetChangeResponse <<< customize) { "ChangeInfo": _ChangeInfo }



newtype GetCheckerIpRangesRequest = GetCheckerIpRangesRequest Types.NoArguments
derive instance newtypeGetCheckerIpRangesRequest :: Newtype GetCheckerIpRangesRequest _
derive instance repGenericGetCheckerIpRangesRequest :: Generic GetCheckerIpRangesRequest _
instance showGetCheckerIpRangesRequest :: Show GetCheckerIpRangesRequest where show = genericShow
instance decodeGetCheckerIpRangesRequest :: Decode GetCheckerIpRangesRequest where decode = genericDecode options
instance encodeGetCheckerIpRangesRequest :: Encode GetCheckerIpRangesRequest where encode = genericEncode options



newtype GetCheckerIpRangesResponse = GetCheckerIpRangesResponse 
  { "CheckerIpRanges" :: (CheckerIpRanges)
  }
derive instance newtypeGetCheckerIpRangesResponse :: Newtype GetCheckerIpRangesResponse _
derive instance repGenericGetCheckerIpRangesResponse :: Generic GetCheckerIpRangesResponse _
instance showGetCheckerIpRangesResponse :: Show GetCheckerIpRangesResponse where show = genericShow
instance decodeGetCheckerIpRangesResponse :: Decode GetCheckerIpRangesResponse where decode = genericDecode options
instance encodeGetCheckerIpRangesResponse :: Encode GetCheckerIpRangesResponse where encode = genericEncode options

-- | Constructs GetCheckerIpRangesResponse from required parameters
newGetCheckerIpRangesResponse :: CheckerIpRanges -> GetCheckerIpRangesResponse
newGetCheckerIpRangesResponse _CheckerIpRanges = GetCheckerIpRangesResponse { "CheckerIpRanges": _CheckerIpRanges }

-- | Constructs GetCheckerIpRangesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCheckerIpRangesResponse' :: CheckerIpRanges -> ( { "CheckerIpRanges" :: (CheckerIpRanges) } -> {"CheckerIpRanges" :: (CheckerIpRanges) } ) -> GetCheckerIpRangesResponse
newGetCheckerIpRangesResponse' _CheckerIpRanges customize = (GetCheckerIpRangesResponse <<< customize) { "CheckerIpRanges": _CheckerIpRanges }



-- | <p>A request for information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.</p>
newtype GetGeoLocationRequest = GetGeoLocationRequest 
  { "ContinentCode" :: Maybe (GeoLocationContinentCode)
  , "CountryCode" :: Maybe (GeoLocationCountryCode)
  , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode)
  }
derive instance newtypeGetGeoLocationRequest :: Newtype GetGeoLocationRequest _
derive instance repGenericGetGeoLocationRequest :: Generic GetGeoLocationRequest _
instance showGetGeoLocationRequest :: Show GetGeoLocationRequest where show = genericShow
instance decodeGetGeoLocationRequest :: Decode GetGeoLocationRequest where decode = genericDecode options
instance encodeGetGeoLocationRequest :: Encode GetGeoLocationRequest where encode = genericEncode options

-- | Constructs GetGeoLocationRequest from required parameters
newGetGeoLocationRequest :: GetGeoLocationRequest
newGetGeoLocationRequest  = GetGeoLocationRequest { "ContinentCode": Nothing, "CountryCode": Nothing, "SubdivisionCode": Nothing }

-- | Constructs GetGeoLocationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGeoLocationRequest' :: ( { "ContinentCode" :: Maybe (GeoLocationContinentCode) , "CountryCode" :: Maybe (GeoLocationCountryCode) , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) } -> {"ContinentCode" :: Maybe (GeoLocationContinentCode) , "CountryCode" :: Maybe (GeoLocationCountryCode) , "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) } ) -> GetGeoLocationRequest
newGetGeoLocationRequest'  customize = (GetGeoLocationRequest <<< customize) { "ContinentCode": Nothing, "CountryCode": Nothing, "SubdivisionCode": Nothing }



-- | <p>A complex type that contains the response information for the specified geolocation code.</p>
newtype GetGeoLocationResponse = GetGeoLocationResponse 
  { "GeoLocationDetails" :: (GeoLocationDetails)
  }
derive instance newtypeGetGeoLocationResponse :: Newtype GetGeoLocationResponse _
derive instance repGenericGetGeoLocationResponse :: Generic GetGeoLocationResponse _
instance showGetGeoLocationResponse :: Show GetGeoLocationResponse where show = genericShow
instance decodeGetGeoLocationResponse :: Decode GetGeoLocationResponse where decode = genericDecode options
instance encodeGetGeoLocationResponse :: Encode GetGeoLocationResponse where encode = genericEncode options

-- | Constructs GetGeoLocationResponse from required parameters
newGetGeoLocationResponse :: GeoLocationDetails -> GetGeoLocationResponse
newGetGeoLocationResponse _GeoLocationDetails = GetGeoLocationResponse { "GeoLocationDetails": _GeoLocationDetails }

-- | Constructs GetGeoLocationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGeoLocationResponse' :: GeoLocationDetails -> ( { "GeoLocationDetails" :: (GeoLocationDetails) } -> {"GeoLocationDetails" :: (GeoLocationDetails) } ) -> GetGeoLocationResponse
newGetGeoLocationResponse' _GeoLocationDetails customize = (GetGeoLocationResponse <<< customize) { "GeoLocationDetails": _GeoLocationDetails }



-- | <p>A request for the number of health checks that are associated with the current AWS account.</p>
newtype GetHealthCheckCountRequest = GetHealthCheckCountRequest Types.NoArguments
derive instance newtypeGetHealthCheckCountRequest :: Newtype GetHealthCheckCountRequest _
derive instance repGenericGetHealthCheckCountRequest :: Generic GetHealthCheckCountRequest _
instance showGetHealthCheckCountRequest :: Show GetHealthCheckCountRequest where show = genericShow
instance decodeGetHealthCheckCountRequest :: Decode GetHealthCheckCountRequest where decode = genericDecode options
instance encodeGetHealthCheckCountRequest :: Encode GetHealthCheckCountRequest where encode = genericEncode options



-- | <p>A complex type that contains the response to a <code>GetHealthCheckCount</code> request.</p>
newtype GetHealthCheckCountResponse = GetHealthCheckCountResponse 
  { "HealthCheckCount" :: (HealthCheckCount)
  }
derive instance newtypeGetHealthCheckCountResponse :: Newtype GetHealthCheckCountResponse _
derive instance repGenericGetHealthCheckCountResponse :: Generic GetHealthCheckCountResponse _
instance showGetHealthCheckCountResponse :: Show GetHealthCheckCountResponse where show = genericShow
instance decodeGetHealthCheckCountResponse :: Decode GetHealthCheckCountResponse where decode = genericDecode options
instance encodeGetHealthCheckCountResponse :: Encode GetHealthCheckCountResponse where encode = genericEncode options

-- | Constructs GetHealthCheckCountResponse from required parameters
newGetHealthCheckCountResponse :: HealthCheckCount -> GetHealthCheckCountResponse
newGetHealthCheckCountResponse _HealthCheckCount = GetHealthCheckCountResponse { "HealthCheckCount": _HealthCheckCount }

-- | Constructs GetHealthCheckCountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckCountResponse' :: HealthCheckCount -> ( { "HealthCheckCount" :: (HealthCheckCount) } -> {"HealthCheckCount" :: (HealthCheckCount) } ) -> GetHealthCheckCountResponse
newGetHealthCheckCountResponse' _HealthCheckCount customize = (GetHealthCheckCountResponse <<< customize) { "HealthCheckCount": _HealthCheckCount }



-- | <p>A request for the reason that a health check failed most recently.</p>
newtype GetHealthCheckLastFailureReasonRequest = GetHealthCheckLastFailureReasonRequest 
  { "HealthCheckId" :: (HealthCheckId)
  }
derive instance newtypeGetHealthCheckLastFailureReasonRequest :: Newtype GetHealthCheckLastFailureReasonRequest _
derive instance repGenericGetHealthCheckLastFailureReasonRequest :: Generic GetHealthCheckLastFailureReasonRequest _
instance showGetHealthCheckLastFailureReasonRequest :: Show GetHealthCheckLastFailureReasonRequest where show = genericShow
instance decodeGetHealthCheckLastFailureReasonRequest :: Decode GetHealthCheckLastFailureReasonRequest where decode = genericDecode options
instance encodeGetHealthCheckLastFailureReasonRequest :: Encode GetHealthCheckLastFailureReasonRequest where encode = genericEncode options

-- | Constructs GetHealthCheckLastFailureReasonRequest from required parameters
newGetHealthCheckLastFailureReasonRequest :: HealthCheckId -> GetHealthCheckLastFailureReasonRequest
newGetHealthCheckLastFailureReasonRequest _HealthCheckId = GetHealthCheckLastFailureReasonRequest { "HealthCheckId": _HealthCheckId }

-- | Constructs GetHealthCheckLastFailureReasonRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckLastFailureReasonRequest' :: HealthCheckId -> ( { "HealthCheckId" :: (HealthCheckId) } -> {"HealthCheckId" :: (HealthCheckId) } ) -> GetHealthCheckLastFailureReasonRequest
newGetHealthCheckLastFailureReasonRequest' _HealthCheckId customize = (GetHealthCheckLastFailureReasonRequest <<< customize) { "HealthCheckId": _HealthCheckId }



-- | <p>A complex type that contains the response to a <code>GetHealthCheckLastFailureReason</code> request.</p>
newtype GetHealthCheckLastFailureReasonResponse = GetHealthCheckLastFailureReasonResponse 
  { "HealthCheckObservations" :: (HealthCheckObservations)
  }
derive instance newtypeGetHealthCheckLastFailureReasonResponse :: Newtype GetHealthCheckLastFailureReasonResponse _
derive instance repGenericGetHealthCheckLastFailureReasonResponse :: Generic GetHealthCheckLastFailureReasonResponse _
instance showGetHealthCheckLastFailureReasonResponse :: Show GetHealthCheckLastFailureReasonResponse where show = genericShow
instance decodeGetHealthCheckLastFailureReasonResponse :: Decode GetHealthCheckLastFailureReasonResponse where decode = genericDecode options
instance encodeGetHealthCheckLastFailureReasonResponse :: Encode GetHealthCheckLastFailureReasonResponse where encode = genericEncode options

-- | Constructs GetHealthCheckLastFailureReasonResponse from required parameters
newGetHealthCheckLastFailureReasonResponse :: HealthCheckObservations -> GetHealthCheckLastFailureReasonResponse
newGetHealthCheckLastFailureReasonResponse _HealthCheckObservations = GetHealthCheckLastFailureReasonResponse { "HealthCheckObservations": _HealthCheckObservations }

-- | Constructs GetHealthCheckLastFailureReasonResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckLastFailureReasonResponse' :: HealthCheckObservations -> ( { "HealthCheckObservations" :: (HealthCheckObservations) } -> {"HealthCheckObservations" :: (HealthCheckObservations) } ) -> GetHealthCheckLastFailureReasonResponse
newGetHealthCheckLastFailureReasonResponse' _HealthCheckObservations customize = (GetHealthCheckLastFailureReasonResponse <<< customize) { "HealthCheckObservations": _HealthCheckObservations }



-- | <p>A request to get information about a specified health check. </p>
newtype GetHealthCheckRequest = GetHealthCheckRequest 
  { "HealthCheckId" :: (HealthCheckId)
  }
derive instance newtypeGetHealthCheckRequest :: Newtype GetHealthCheckRequest _
derive instance repGenericGetHealthCheckRequest :: Generic GetHealthCheckRequest _
instance showGetHealthCheckRequest :: Show GetHealthCheckRequest where show = genericShow
instance decodeGetHealthCheckRequest :: Decode GetHealthCheckRequest where decode = genericDecode options
instance encodeGetHealthCheckRequest :: Encode GetHealthCheckRequest where encode = genericEncode options

-- | Constructs GetHealthCheckRequest from required parameters
newGetHealthCheckRequest :: HealthCheckId -> GetHealthCheckRequest
newGetHealthCheckRequest _HealthCheckId = GetHealthCheckRequest { "HealthCheckId": _HealthCheckId }

-- | Constructs GetHealthCheckRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckRequest' :: HealthCheckId -> ( { "HealthCheckId" :: (HealthCheckId) } -> {"HealthCheckId" :: (HealthCheckId) } ) -> GetHealthCheckRequest
newGetHealthCheckRequest' _HealthCheckId customize = (GetHealthCheckRequest <<< customize) { "HealthCheckId": _HealthCheckId }



-- | <p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>
newtype GetHealthCheckResponse = GetHealthCheckResponse 
  { "HealthCheck" :: (HealthCheck)
  }
derive instance newtypeGetHealthCheckResponse :: Newtype GetHealthCheckResponse _
derive instance repGenericGetHealthCheckResponse :: Generic GetHealthCheckResponse _
instance showGetHealthCheckResponse :: Show GetHealthCheckResponse where show = genericShow
instance decodeGetHealthCheckResponse :: Decode GetHealthCheckResponse where decode = genericDecode options
instance encodeGetHealthCheckResponse :: Encode GetHealthCheckResponse where encode = genericEncode options

-- | Constructs GetHealthCheckResponse from required parameters
newGetHealthCheckResponse :: HealthCheck -> GetHealthCheckResponse
newGetHealthCheckResponse _HealthCheck = GetHealthCheckResponse { "HealthCheck": _HealthCheck }

-- | Constructs GetHealthCheckResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckResponse' :: HealthCheck -> ( { "HealthCheck" :: (HealthCheck) } -> {"HealthCheck" :: (HealthCheck) } ) -> GetHealthCheckResponse
newGetHealthCheckResponse' _HealthCheck customize = (GetHealthCheckResponse <<< customize) { "HealthCheck": _HealthCheck }



-- | <p>A request to get the status for a health check.</p>
newtype GetHealthCheckStatusRequest = GetHealthCheckStatusRequest 
  { "HealthCheckId" :: (HealthCheckId)
  }
derive instance newtypeGetHealthCheckStatusRequest :: Newtype GetHealthCheckStatusRequest _
derive instance repGenericGetHealthCheckStatusRequest :: Generic GetHealthCheckStatusRequest _
instance showGetHealthCheckStatusRequest :: Show GetHealthCheckStatusRequest where show = genericShow
instance decodeGetHealthCheckStatusRequest :: Decode GetHealthCheckStatusRequest where decode = genericDecode options
instance encodeGetHealthCheckStatusRequest :: Encode GetHealthCheckStatusRequest where encode = genericEncode options

-- | Constructs GetHealthCheckStatusRequest from required parameters
newGetHealthCheckStatusRequest :: HealthCheckId -> GetHealthCheckStatusRequest
newGetHealthCheckStatusRequest _HealthCheckId = GetHealthCheckStatusRequest { "HealthCheckId": _HealthCheckId }

-- | Constructs GetHealthCheckStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckStatusRequest' :: HealthCheckId -> ( { "HealthCheckId" :: (HealthCheckId) } -> {"HealthCheckId" :: (HealthCheckId) } ) -> GetHealthCheckStatusRequest
newGetHealthCheckStatusRequest' _HealthCheckId customize = (GetHealthCheckStatusRequest <<< customize) { "HealthCheckId": _HealthCheckId }



-- | <p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>
newtype GetHealthCheckStatusResponse = GetHealthCheckStatusResponse 
  { "HealthCheckObservations" :: (HealthCheckObservations)
  }
derive instance newtypeGetHealthCheckStatusResponse :: Newtype GetHealthCheckStatusResponse _
derive instance repGenericGetHealthCheckStatusResponse :: Generic GetHealthCheckStatusResponse _
instance showGetHealthCheckStatusResponse :: Show GetHealthCheckStatusResponse where show = genericShow
instance decodeGetHealthCheckStatusResponse :: Decode GetHealthCheckStatusResponse where decode = genericDecode options
instance encodeGetHealthCheckStatusResponse :: Encode GetHealthCheckStatusResponse where encode = genericEncode options

-- | Constructs GetHealthCheckStatusResponse from required parameters
newGetHealthCheckStatusResponse :: HealthCheckObservations -> GetHealthCheckStatusResponse
newGetHealthCheckStatusResponse _HealthCheckObservations = GetHealthCheckStatusResponse { "HealthCheckObservations": _HealthCheckObservations }

-- | Constructs GetHealthCheckStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHealthCheckStatusResponse' :: HealthCheckObservations -> ( { "HealthCheckObservations" :: (HealthCheckObservations) } -> {"HealthCheckObservations" :: (HealthCheckObservations) } ) -> GetHealthCheckStatusResponse
newGetHealthCheckStatusResponse' _HealthCheckObservations customize = (GetHealthCheckStatusResponse <<< customize) { "HealthCheckObservations": _HealthCheckObservations }



-- | <p>A request to retrieve a count of all the hosted zones that are associated with the current AWS account.</p>
newtype GetHostedZoneCountRequest = GetHostedZoneCountRequest Types.NoArguments
derive instance newtypeGetHostedZoneCountRequest :: Newtype GetHostedZoneCountRequest _
derive instance repGenericGetHostedZoneCountRequest :: Generic GetHostedZoneCountRequest _
instance showGetHostedZoneCountRequest :: Show GetHostedZoneCountRequest where show = genericShow
instance decodeGetHostedZoneCountRequest :: Decode GetHostedZoneCountRequest where decode = genericDecode options
instance encodeGetHostedZoneCountRequest :: Encode GetHostedZoneCountRequest where encode = genericEncode options



-- | <p>A complex type that contains the response to a <code>GetHostedZoneCount</code> request.</p>
newtype GetHostedZoneCountResponse = GetHostedZoneCountResponse 
  { "HostedZoneCount" :: (HostedZoneCount)
  }
derive instance newtypeGetHostedZoneCountResponse :: Newtype GetHostedZoneCountResponse _
derive instance repGenericGetHostedZoneCountResponse :: Generic GetHostedZoneCountResponse _
instance showGetHostedZoneCountResponse :: Show GetHostedZoneCountResponse where show = genericShow
instance decodeGetHostedZoneCountResponse :: Decode GetHostedZoneCountResponse where decode = genericDecode options
instance encodeGetHostedZoneCountResponse :: Encode GetHostedZoneCountResponse where encode = genericEncode options

-- | Constructs GetHostedZoneCountResponse from required parameters
newGetHostedZoneCountResponse :: HostedZoneCount -> GetHostedZoneCountResponse
newGetHostedZoneCountResponse _HostedZoneCount = GetHostedZoneCountResponse { "HostedZoneCount": _HostedZoneCount }

-- | Constructs GetHostedZoneCountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostedZoneCountResponse' :: HostedZoneCount -> ( { "HostedZoneCount" :: (HostedZoneCount) } -> {"HostedZoneCount" :: (HostedZoneCount) } ) -> GetHostedZoneCountResponse
newGetHostedZoneCountResponse' _HostedZoneCount customize = (GetHostedZoneCountResponse <<< customize) { "HostedZoneCount": _HostedZoneCount }



-- | <p>A complex type that contains information about the request to create a hosted zone.</p>
newtype GetHostedZoneLimitRequest = GetHostedZoneLimitRequest 
  { "Type" :: (HostedZoneLimitType)
  , "HostedZoneId" :: (ResourceId)
  }
derive instance newtypeGetHostedZoneLimitRequest :: Newtype GetHostedZoneLimitRequest _
derive instance repGenericGetHostedZoneLimitRequest :: Generic GetHostedZoneLimitRequest _
instance showGetHostedZoneLimitRequest :: Show GetHostedZoneLimitRequest where show = genericShow
instance decodeGetHostedZoneLimitRequest :: Decode GetHostedZoneLimitRequest where decode = genericDecode options
instance encodeGetHostedZoneLimitRequest :: Encode GetHostedZoneLimitRequest where encode = genericEncode options

-- | Constructs GetHostedZoneLimitRequest from required parameters
newGetHostedZoneLimitRequest :: ResourceId -> HostedZoneLimitType -> GetHostedZoneLimitRequest
newGetHostedZoneLimitRequest _HostedZoneId _Type = GetHostedZoneLimitRequest { "HostedZoneId": _HostedZoneId, "Type": _Type }

-- | Constructs GetHostedZoneLimitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostedZoneLimitRequest' :: ResourceId -> HostedZoneLimitType -> ( { "Type" :: (HostedZoneLimitType) , "HostedZoneId" :: (ResourceId) } -> {"Type" :: (HostedZoneLimitType) , "HostedZoneId" :: (ResourceId) } ) -> GetHostedZoneLimitRequest
newGetHostedZoneLimitRequest' _HostedZoneId _Type customize = (GetHostedZoneLimitRequest <<< customize) { "HostedZoneId": _HostedZoneId, "Type": _Type }



-- | <p>A complex type that contains the requested limit. </p>
newtype GetHostedZoneLimitResponse = GetHostedZoneLimitResponse 
  { "Limit" :: (HostedZoneLimit)
  , "Count" :: (UsageCount)
  }
derive instance newtypeGetHostedZoneLimitResponse :: Newtype GetHostedZoneLimitResponse _
derive instance repGenericGetHostedZoneLimitResponse :: Generic GetHostedZoneLimitResponse _
instance showGetHostedZoneLimitResponse :: Show GetHostedZoneLimitResponse where show = genericShow
instance decodeGetHostedZoneLimitResponse :: Decode GetHostedZoneLimitResponse where decode = genericDecode options
instance encodeGetHostedZoneLimitResponse :: Encode GetHostedZoneLimitResponse where encode = genericEncode options

-- | Constructs GetHostedZoneLimitResponse from required parameters
newGetHostedZoneLimitResponse :: UsageCount -> HostedZoneLimit -> GetHostedZoneLimitResponse
newGetHostedZoneLimitResponse _Count _Limit = GetHostedZoneLimitResponse { "Count": _Count, "Limit": _Limit }

-- | Constructs GetHostedZoneLimitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostedZoneLimitResponse' :: UsageCount -> HostedZoneLimit -> ( { "Limit" :: (HostedZoneLimit) , "Count" :: (UsageCount) } -> {"Limit" :: (HostedZoneLimit) , "Count" :: (UsageCount) } ) -> GetHostedZoneLimitResponse
newGetHostedZoneLimitResponse' _Count _Limit customize = (GetHostedZoneLimitResponse <<< customize) { "Count": _Count, "Limit": _Limit }



-- | <p>A request to get information about a specified hosted zone. </p>
newtype GetHostedZoneRequest = GetHostedZoneRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetHostedZoneRequest :: Newtype GetHostedZoneRequest _
derive instance repGenericGetHostedZoneRequest :: Generic GetHostedZoneRequest _
instance showGetHostedZoneRequest :: Show GetHostedZoneRequest where show = genericShow
instance decodeGetHostedZoneRequest :: Decode GetHostedZoneRequest where decode = genericDecode options
instance encodeGetHostedZoneRequest :: Encode GetHostedZoneRequest where encode = genericEncode options

-- | Constructs GetHostedZoneRequest from required parameters
newGetHostedZoneRequest :: ResourceId -> GetHostedZoneRequest
newGetHostedZoneRequest _Id = GetHostedZoneRequest { "Id": _Id }

-- | Constructs GetHostedZoneRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostedZoneRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetHostedZoneRequest
newGetHostedZoneRequest' _Id customize = (GetHostedZoneRequest <<< customize) { "Id": _Id }



-- | <p>A complex type that contain the response to a <code>GetHostedZone</code> request.</p>
newtype GetHostedZoneResponse = GetHostedZoneResponse 
  { "HostedZone" :: (HostedZone)
  , "DelegationSet" :: Maybe (DelegationSet)
  , "VPCs" :: Maybe (VPCs)
  }
derive instance newtypeGetHostedZoneResponse :: Newtype GetHostedZoneResponse _
derive instance repGenericGetHostedZoneResponse :: Generic GetHostedZoneResponse _
instance showGetHostedZoneResponse :: Show GetHostedZoneResponse where show = genericShow
instance decodeGetHostedZoneResponse :: Decode GetHostedZoneResponse where decode = genericDecode options
instance encodeGetHostedZoneResponse :: Encode GetHostedZoneResponse where encode = genericEncode options

-- | Constructs GetHostedZoneResponse from required parameters
newGetHostedZoneResponse :: HostedZone -> GetHostedZoneResponse
newGetHostedZoneResponse _HostedZone = GetHostedZoneResponse { "HostedZone": _HostedZone, "DelegationSet": Nothing, "VPCs": Nothing }

-- | Constructs GetHostedZoneResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostedZoneResponse' :: HostedZone -> ( { "HostedZone" :: (HostedZone) , "DelegationSet" :: Maybe (DelegationSet) , "VPCs" :: Maybe (VPCs) } -> {"HostedZone" :: (HostedZone) , "DelegationSet" :: Maybe (DelegationSet) , "VPCs" :: Maybe (VPCs) } ) -> GetHostedZoneResponse
newGetHostedZoneResponse' _HostedZone customize = (GetHostedZoneResponse <<< customize) { "HostedZone": _HostedZone, "DelegationSet": Nothing, "VPCs": Nothing }



newtype GetQueryLoggingConfigRequest = GetQueryLoggingConfigRequest 
  { "Id" :: (QueryLoggingConfigId)
  }
derive instance newtypeGetQueryLoggingConfigRequest :: Newtype GetQueryLoggingConfigRequest _
derive instance repGenericGetQueryLoggingConfigRequest :: Generic GetQueryLoggingConfigRequest _
instance showGetQueryLoggingConfigRequest :: Show GetQueryLoggingConfigRequest where show = genericShow
instance decodeGetQueryLoggingConfigRequest :: Decode GetQueryLoggingConfigRequest where decode = genericDecode options
instance encodeGetQueryLoggingConfigRequest :: Encode GetQueryLoggingConfigRequest where encode = genericEncode options

-- | Constructs GetQueryLoggingConfigRequest from required parameters
newGetQueryLoggingConfigRequest :: QueryLoggingConfigId -> GetQueryLoggingConfigRequest
newGetQueryLoggingConfigRequest _Id = GetQueryLoggingConfigRequest { "Id": _Id }

-- | Constructs GetQueryLoggingConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueryLoggingConfigRequest' :: QueryLoggingConfigId -> ( { "Id" :: (QueryLoggingConfigId) } -> {"Id" :: (QueryLoggingConfigId) } ) -> GetQueryLoggingConfigRequest
newGetQueryLoggingConfigRequest' _Id customize = (GetQueryLoggingConfigRequest <<< customize) { "Id": _Id }



newtype GetQueryLoggingConfigResponse = GetQueryLoggingConfigResponse 
  { "QueryLoggingConfig" :: (QueryLoggingConfig)
  }
derive instance newtypeGetQueryLoggingConfigResponse :: Newtype GetQueryLoggingConfigResponse _
derive instance repGenericGetQueryLoggingConfigResponse :: Generic GetQueryLoggingConfigResponse _
instance showGetQueryLoggingConfigResponse :: Show GetQueryLoggingConfigResponse where show = genericShow
instance decodeGetQueryLoggingConfigResponse :: Decode GetQueryLoggingConfigResponse where decode = genericDecode options
instance encodeGetQueryLoggingConfigResponse :: Encode GetQueryLoggingConfigResponse where encode = genericEncode options

-- | Constructs GetQueryLoggingConfigResponse from required parameters
newGetQueryLoggingConfigResponse :: QueryLoggingConfig -> GetQueryLoggingConfigResponse
newGetQueryLoggingConfigResponse _QueryLoggingConfig = GetQueryLoggingConfigResponse { "QueryLoggingConfig": _QueryLoggingConfig }

-- | Constructs GetQueryLoggingConfigResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueryLoggingConfigResponse' :: QueryLoggingConfig -> ( { "QueryLoggingConfig" :: (QueryLoggingConfig) } -> {"QueryLoggingConfig" :: (QueryLoggingConfig) } ) -> GetQueryLoggingConfigResponse
newGetQueryLoggingConfigResponse' _QueryLoggingConfig customize = (GetQueryLoggingConfigResponse <<< customize) { "QueryLoggingConfig": _QueryLoggingConfig }



-- | <p>A complex type that contains information about the request to create a hosted zone.</p>
newtype GetReusableDelegationSetLimitRequest = GetReusableDelegationSetLimitRequest 
  { "Type" :: (ReusableDelegationSetLimitType)
  , "DelegationSetId" :: (ResourceId)
  }
derive instance newtypeGetReusableDelegationSetLimitRequest :: Newtype GetReusableDelegationSetLimitRequest _
derive instance repGenericGetReusableDelegationSetLimitRequest :: Generic GetReusableDelegationSetLimitRequest _
instance showGetReusableDelegationSetLimitRequest :: Show GetReusableDelegationSetLimitRequest where show = genericShow
instance decodeGetReusableDelegationSetLimitRequest :: Decode GetReusableDelegationSetLimitRequest where decode = genericDecode options
instance encodeGetReusableDelegationSetLimitRequest :: Encode GetReusableDelegationSetLimitRequest where encode = genericEncode options

-- | Constructs GetReusableDelegationSetLimitRequest from required parameters
newGetReusableDelegationSetLimitRequest :: ResourceId -> ReusableDelegationSetLimitType -> GetReusableDelegationSetLimitRequest
newGetReusableDelegationSetLimitRequest _DelegationSetId _Type = GetReusableDelegationSetLimitRequest { "DelegationSetId": _DelegationSetId, "Type": _Type }

-- | Constructs GetReusableDelegationSetLimitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReusableDelegationSetLimitRequest' :: ResourceId -> ReusableDelegationSetLimitType -> ( { "Type" :: (ReusableDelegationSetLimitType) , "DelegationSetId" :: (ResourceId) } -> {"Type" :: (ReusableDelegationSetLimitType) , "DelegationSetId" :: (ResourceId) } ) -> GetReusableDelegationSetLimitRequest
newGetReusableDelegationSetLimitRequest' _DelegationSetId _Type customize = (GetReusableDelegationSetLimitRequest <<< customize) { "DelegationSetId": _DelegationSetId, "Type": _Type }



-- | <p>A complex type that contains the requested limit. </p>
newtype GetReusableDelegationSetLimitResponse = GetReusableDelegationSetLimitResponse 
  { "Limit" :: (ReusableDelegationSetLimit)
  , "Count" :: (UsageCount)
  }
derive instance newtypeGetReusableDelegationSetLimitResponse :: Newtype GetReusableDelegationSetLimitResponse _
derive instance repGenericGetReusableDelegationSetLimitResponse :: Generic GetReusableDelegationSetLimitResponse _
instance showGetReusableDelegationSetLimitResponse :: Show GetReusableDelegationSetLimitResponse where show = genericShow
instance decodeGetReusableDelegationSetLimitResponse :: Decode GetReusableDelegationSetLimitResponse where decode = genericDecode options
instance encodeGetReusableDelegationSetLimitResponse :: Encode GetReusableDelegationSetLimitResponse where encode = genericEncode options

-- | Constructs GetReusableDelegationSetLimitResponse from required parameters
newGetReusableDelegationSetLimitResponse :: UsageCount -> ReusableDelegationSetLimit -> GetReusableDelegationSetLimitResponse
newGetReusableDelegationSetLimitResponse _Count _Limit = GetReusableDelegationSetLimitResponse { "Count": _Count, "Limit": _Limit }

-- | Constructs GetReusableDelegationSetLimitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReusableDelegationSetLimitResponse' :: UsageCount -> ReusableDelegationSetLimit -> ( { "Limit" :: (ReusableDelegationSetLimit) , "Count" :: (UsageCount) } -> {"Limit" :: (ReusableDelegationSetLimit) , "Count" :: (UsageCount) } ) -> GetReusableDelegationSetLimitResponse
newGetReusableDelegationSetLimitResponse' _Count _Limit customize = (GetReusableDelegationSetLimitResponse <<< customize) { "Count": _Count, "Limit": _Limit }



-- | <p>A request to get information about a specified reusable delegation set.</p>
newtype GetReusableDelegationSetRequest = GetReusableDelegationSetRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetReusableDelegationSetRequest :: Newtype GetReusableDelegationSetRequest _
derive instance repGenericGetReusableDelegationSetRequest :: Generic GetReusableDelegationSetRequest _
instance showGetReusableDelegationSetRequest :: Show GetReusableDelegationSetRequest where show = genericShow
instance decodeGetReusableDelegationSetRequest :: Decode GetReusableDelegationSetRequest where decode = genericDecode options
instance encodeGetReusableDelegationSetRequest :: Encode GetReusableDelegationSetRequest where encode = genericEncode options

-- | Constructs GetReusableDelegationSetRequest from required parameters
newGetReusableDelegationSetRequest :: ResourceId -> GetReusableDelegationSetRequest
newGetReusableDelegationSetRequest _Id = GetReusableDelegationSetRequest { "Id": _Id }

-- | Constructs GetReusableDelegationSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReusableDelegationSetRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetReusableDelegationSetRequest
newGetReusableDelegationSetRequest' _Id customize = (GetReusableDelegationSetRequest <<< customize) { "Id": _Id }



-- | <p>A complex type that contains the response to the <code>GetReusableDelegationSet</code> request.</p>
newtype GetReusableDelegationSetResponse = GetReusableDelegationSetResponse 
  { "DelegationSet" :: (DelegationSet)
  }
derive instance newtypeGetReusableDelegationSetResponse :: Newtype GetReusableDelegationSetResponse _
derive instance repGenericGetReusableDelegationSetResponse :: Generic GetReusableDelegationSetResponse _
instance showGetReusableDelegationSetResponse :: Show GetReusableDelegationSetResponse where show = genericShow
instance decodeGetReusableDelegationSetResponse :: Decode GetReusableDelegationSetResponse where decode = genericDecode options
instance encodeGetReusableDelegationSetResponse :: Encode GetReusableDelegationSetResponse where encode = genericEncode options

-- | Constructs GetReusableDelegationSetResponse from required parameters
newGetReusableDelegationSetResponse :: DelegationSet -> GetReusableDelegationSetResponse
newGetReusableDelegationSetResponse _DelegationSet = GetReusableDelegationSetResponse { "DelegationSet": _DelegationSet }

-- | Constructs GetReusableDelegationSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReusableDelegationSetResponse' :: DelegationSet -> ( { "DelegationSet" :: (DelegationSet) } -> {"DelegationSet" :: (DelegationSet) } ) -> GetReusableDelegationSetResponse
newGetReusableDelegationSetResponse' _DelegationSet customize = (GetReusableDelegationSetResponse <<< customize) { "DelegationSet": _DelegationSet }



-- | <p>Request to get the number of traffic policy instances that are associated with the current AWS account.</p>
newtype GetTrafficPolicyInstanceCountRequest = GetTrafficPolicyInstanceCountRequest Types.NoArguments
derive instance newtypeGetTrafficPolicyInstanceCountRequest :: Newtype GetTrafficPolicyInstanceCountRequest _
derive instance repGenericGetTrafficPolicyInstanceCountRequest :: Generic GetTrafficPolicyInstanceCountRequest _
instance showGetTrafficPolicyInstanceCountRequest :: Show GetTrafficPolicyInstanceCountRequest where show = genericShow
instance decodeGetTrafficPolicyInstanceCountRequest :: Decode GetTrafficPolicyInstanceCountRequest where decode = genericDecode options
instance encodeGetTrafficPolicyInstanceCountRequest :: Encode GetTrafficPolicyInstanceCountRequest where encode = genericEncode options



-- | <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
newtype GetTrafficPolicyInstanceCountResponse = GetTrafficPolicyInstanceCountResponse 
  { "TrafficPolicyInstanceCount" :: (TrafficPolicyInstanceCount)
  }
derive instance newtypeGetTrafficPolicyInstanceCountResponse :: Newtype GetTrafficPolicyInstanceCountResponse _
derive instance repGenericGetTrafficPolicyInstanceCountResponse :: Generic GetTrafficPolicyInstanceCountResponse _
instance showGetTrafficPolicyInstanceCountResponse :: Show GetTrafficPolicyInstanceCountResponse where show = genericShow
instance decodeGetTrafficPolicyInstanceCountResponse :: Decode GetTrafficPolicyInstanceCountResponse where decode = genericDecode options
instance encodeGetTrafficPolicyInstanceCountResponse :: Encode GetTrafficPolicyInstanceCountResponse where encode = genericEncode options

-- | Constructs GetTrafficPolicyInstanceCountResponse from required parameters
newGetTrafficPolicyInstanceCountResponse :: TrafficPolicyInstanceCount -> GetTrafficPolicyInstanceCountResponse
newGetTrafficPolicyInstanceCountResponse _TrafficPolicyInstanceCount = GetTrafficPolicyInstanceCountResponse { "TrafficPolicyInstanceCount": _TrafficPolicyInstanceCount }

-- | Constructs GetTrafficPolicyInstanceCountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrafficPolicyInstanceCountResponse' :: TrafficPolicyInstanceCount -> ( { "TrafficPolicyInstanceCount" :: (TrafficPolicyInstanceCount) } -> {"TrafficPolicyInstanceCount" :: (TrafficPolicyInstanceCount) } ) -> GetTrafficPolicyInstanceCountResponse
newGetTrafficPolicyInstanceCountResponse' _TrafficPolicyInstanceCount customize = (GetTrafficPolicyInstanceCountResponse <<< customize) { "TrafficPolicyInstanceCount": _TrafficPolicyInstanceCount }



-- | <p>Gets information about a specified traffic policy instance.</p>
newtype GetTrafficPolicyInstanceRequest = GetTrafficPolicyInstanceRequest 
  { "Id" :: (TrafficPolicyInstanceId)
  }
derive instance newtypeGetTrafficPolicyInstanceRequest :: Newtype GetTrafficPolicyInstanceRequest _
derive instance repGenericGetTrafficPolicyInstanceRequest :: Generic GetTrafficPolicyInstanceRequest _
instance showGetTrafficPolicyInstanceRequest :: Show GetTrafficPolicyInstanceRequest where show = genericShow
instance decodeGetTrafficPolicyInstanceRequest :: Decode GetTrafficPolicyInstanceRequest where decode = genericDecode options
instance encodeGetTrafficPolicyInstanceRequest :: Encode GetTrafficPolicyInstanceRequest where encode = genericEncode options

-- | Constructs GetTrafficPolicyInstanceRequest from required parameters
newGetTrafficPolicyInstanceRequest :: TrafficPolicyInstanceId -> GetTrafficPolicyInstanceRequest
newGetTrafficPolicyInstanceRequest _Id = GetTrafficPolicyInstanceRequest { "Id": _Id }

-- | Constructs GetTrafficPolicyInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrafficPolicyInstanceRequest' :: TrafficPolicyInstanceId -> ( { "Id" :: (TrafficPolicyInstanceId) } -> {"Id" :: (TrafficPolicyInstanceId) } ) -> GetTrafficPolicyInstanceRequest
newGetTrafficPolicyInstanceRequest' _Id customize = (GetTrafficPolicyInstanceRequest <<< customize) { "Id": _Id }



-- | <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
newtype GetTrafficPolicyInstanceResponse = GetTrafficPolicyInstanceResponse 
  { "TrafficPolicyInstance" :: (TrafficPolicyInstance)
  }
derive instance newtypeGetTrafficPolicyInstanceResponse :: Newtype GetTrafficPolicyInstanceResponse _
derive instance repGenericGetTrafficPolicyInstanceResponse :: Generic GetTrafficPolicyInstanceResponse _
instance showGetTrafficPolicyInstanceResponse :: Show GetTrafficPolicyInstanceResponse where show = genericShow
instance decodeGetTrafficPolicyInstanceResponse :: Decode GetTrafficPolicyInstanceResponse where decode = genericDecode options
instance encodeGetTrafficPolicyInstanceResponse :: Encode GetTrafficPolicyInstanceResponse where encode = genericEncode options

-- | Constructs GetTrafficPolicyInstanceResponse from required parameters
newGetTrafficPolicyInstanceResponse :: TrafficPolicyInstance -> GetTrafficPolicyInstanceResponse
newGetTrafficPolicyInstanceResponse _TrafficPolicyInstance = GetTrafficPolicyInstanceResponse { "TrafficPolicyInstance": _TrafficPolicyInstance }

-- | Constructs GetTrafficPolicyInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrafficPolicyInstanceResponse' :: TrafficPolicyInstance -> ( { "TrafficPolicyInstance" :: (TrafficPolicyInstance) } -> {"TrafficPolicyInstance" :: (TrafficPolicyInstance) } ) -> GetTrafficPolicyInstanceResponse
newGetTrafficPolicyInstanceResponse' _TrafficPolicyInstance customize = (GetTrafficPolicyInstanceResponse <<< customize) { "TrafficPolicyInstance": _TrafficPolicyInstance }



-- | <p>Gets information about a specific traffic policy version.</p>
newtype GetTrafficPolicyRequest = GetTrafficPolicyRequest 
  { "Id" :: (TrafficPolicyId)
  , "Version" :: (TrafficPolicyVersion)
  }
derive instance newtypeGetTrafficPolicyRequest :: Newtype GetTrafficPolicyRequest _
derive instance repGenericGetTrafficPolicyRequest :: Generic GetTrafficPolicyRequest _
instance showGetTrafficPolicyRequest :: Show GetTrafficPolicyRequest where show = genericShow
instance decodeGetTrafficPolicyRequest :: Decode GetTrafficPolicyRequest where decode = genericDecode options
instance encodeGetTrafficPolicyRequest :: Encode GetTrafficPolicyRequest where encode = genericEncode options

-- | Constructs GetTrafficPolicyRequest from required parameters
newGetTrafficPolicyRequest :: TrafficPolicyId -> TrafficPolicyVersion -> GetTrafficPolicyRequest
newGetTrafficPolicyRequest _Id _Version = GetTrafficPolicyRequest { "Id": _Id, "Version": _Version }

-- | Constructs GetTrafficPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrafficPolicyRequest' :: TrafficPolicyId -> TrafficPolicyVersion -> ( { "Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) } -> {"Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) } ) -> GetTrafficPolicyRequest
newGetTrafficPolicyRequest' _Id _Version customize = (GetTrafficPolicyRequest <<< customize) { "Id": _Id, "Version": _Version }



-- | <p>A complex type that contains the response information for the request.</p>
newtype GetTrafficPolicyResponse = GetTrafficPolicyResponse 
  { "TrafficPolicy" :: (TrafficPolicy)
  }
derive instance newtypeGetTrafficPolicyResponse :: Newtype GetTrafficPolicyResponse _
derive instance repGenericGetTrafficPolicyResponse :: Generic GetTrafficPolicyResponse _
instance showGetTrafficPolicyResponse :: Show GetTrafficPolicyResponse where show = genericShow
instance decodeGetTrafficPolicyResponse :: Decode GetTrafficPolicyResponse where decode = genericDecode options
instance encodeGetTrafficPolicyResponse :: Encode GetTrafficPolicyResponse where encode = genericEncode options

-- | Constructs GetTrafficPolicyResponse from required parameters
newGetTrafficPolicyResponse :: TrafficPolicy -> GetTrafficPolicyResponse
newGetTrafficPolicyResponse _TrafficPolicy = GetTrafficPolicyResponse { "TrafficPolicy": _TrafficPolicy }

-- | Constructs GetTrafficPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrafficPolicyResponse' :: TrafficPolicy -> ( { "TrafficPolicy" :: (TrafficPolicy) } -> {"TrafficPolicy" :: (TrafficPolicy) } ) -> GetTrafficPolicyResponse
newGetTrafficPolicyResponse' _TrafficPolicy customize = (GetTrafficPolicyResponse <<< customize) { "TrafficPolicy": _TrafficPolicy }



-- | <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
newtype HealthCheck = HealthCheck 
  { "Id" :: (HealthCheckId)
  , "CallerReference" :: (HealthCheckNonce)
  , "LinkedService" :: Maybe (LinkedService)
  , "HealthCheckConfig" :: (HealthCheckConfig)
  , "HealthCheckVersion" :: (HealthCheckVersion)
  , "CloudWatchAlarmConfiguration" :: Maybe (CloudWatchAlarmConfiguration)
  }
derive instance newtypeHealthCheck :: Newtype HealthCheck _
derive instance repGenericHealthCheck :: Generic HealthCheck _
instance showHealthCheck :: Show HealthCheck where show = genericShow
instance decodeHealthCheck :: Decode HealthCheck where decode = genericDecode options
instance encodeHealthCheck :: Encode HealthCheck where encode = genericEncode options

-- | Constructs HealthCheck from required parameters
newHealthCheck :: HealthCheckNonce -> HealthCheckConfig -> HealthCheckVersion -> HealthCheckId -> HealthCheck
newHealthCheck _CallerReference _HealthCheckConfig _HealthCheckVersion _Id = HealthCheck { "CallerReference": _CallerReference, "HealthCheckConfig": _HealthCheckConfig, "HealthCheckVersion": _HealthCheckVersion, "Id": _Id, "CloudWatchAlarmConfiguration": Nothing, "LinkedService": Nothing }

-- | Constructs HealthCheck's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheck' :: HealthCheckNonce -> HealthCheckConfig -> HealthCheckVersion -> HealthCheckId -> ( { "Id" :: (HealthCheckId) , "CallerReference" :: (HealthCheckNonce) , "LinkedService" :: Maybe (LinkedService) , "HealthCheckConfig" :: (HealthCheckConfig) , "HealthCheckVersion" :: (HealthCheckVersion) , "CloudWatchAlarmConfiguration" :: Maybe (CloudWatchAlarmConfiguration) } -> {"Id" :: (HealthCheckId) , "CallerReference" :: (HealthCheckNonce) , "LinkedService" :: Maybe (LinkedService) , "HealthCheckConfig" :: (HealthCheckConfig) , "HealthCheckVersion" :: (HealthCheckVersion) , "CloudWatchAlarmConfiguration" :: Maybe (CloudWatchAlarmConfiguration) } ) -> HealthCheck
newHealthCheck' _CallerReference _HealthCheckConfig _HealthCheckVersion _Id customize = (HealthCheck <<< customize) { "CallerReference": _CallerReference, "HealthCheckConfig": _HealthCheckConfig, "HealthCheckVersion": _HealthCheckVersion, "Id": _Id, "CloudWatchAlarmConfiguration": Nothing, "LinkedService": Nothing }



-- | <p> The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that has the following values:</p> <ul> <li> <p>The same value for <code>CallerReference</code> as an existing health check, and one or more values that differ from the existing health check that has the same caller reference.</p> </li> <li> <p>The same value for <code>CallerReference</code> as a health check that you created and later deleted, regardless of the other settings in the request.</p> </li> </ul>
newtype HealthCheckAlreadyExists = HealthCheckAlreadyExists 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHealthCheckAlreadyExists :: Newtype HealthCheckAlreadyExists _
derive instance repGenericHealthCheckAlreadyExists :: Generic HealthCheckAlreadyExists _
instance showHealthCheckAlreadyExists :: Show HealthCheckAlreadyExists where show = genericShow
instance decodeHealthCheckAlreadyExists :: Decode HealthCheckAlreadyExists where decode = genericDecode options
instance encodeHealthCheckAlreadyExists :: Encode HealthCheckAlreadyExists where encode = genericEncode options

-- | Constructs HealthCheckAlreadyExists from required parameters
newHealthCheckAlreadyExists :: HealthCheckAlreadyExists
newHealthCheckAlreadyExists  = HealthCheckAlreadyExists { "message": Nothing }

-- | Constructs HealthCheckAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckAlreadyExists' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HealthCheckAlreadyExists
newHealthCheckAlreadyExists'  customize = (HealthCheckAlreadyExists <<< customize) { "message": Nothing }



-- | <p>A complex type that contains information about the health check.</p>
newtype HealthCheckConfig = HealthCheckConfig 
  { "IPAddress" :: Maybe (IPAddress)
  , "Port" :: Maybe (Port)
  , "Type" :: (HealthCheckType)
  , "ResourcePath" :: Maybe (ResourcePath)
  , "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName)
  , "SearchString" :: Maybe (SearchString)
  , "RequestInterval" :: Maybe (RequestInterval)
  , "FailureThreshold" :: Maybe (FailureThreshold)
  , "MeasureLatency" :: Maybe (MeasureLatency)
  , "Inverted" :: Maybe (Inverted)
  , "HealthThreshold" :: Maybe (HealthThreshold)
  , "ChildHealthChecks" :: Maybe (ChildHealthCheckList)
  , "EnableSNI" :: Maybe (EnableSNI)
  , "Regions" :: Maybe (HealthCheckRegionList)
  , "AlarmIdentifier" :: Maybe (AlarmIdentifier)
  , "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus)
  }
derive instance newtypeHealthCheckConfig :: Newtype HealthCheckConfig _
derive instance repGenericHealthCheckConfig :: Generic HealthCheckConfig _
instance showHealthCheckConfig :: Show HealthCheckConfig where show = genericShow
instance decodeHealthCheckConfig :: Decode HealthCheckConfig where decode = genericDecode options
instance encodeHealthCheckConfig :: Encode HealthCheckConfig where encode = genericEncode options

-- | Constructs HealthCheckConfig from required parameters
newHealthCheckConfig :: HealthCheckType -> HealthCheckConfig
newHealthCheckConfig _Type = HealthCheckConfig { "Type": _Type, "AlarmIdentifier": Nothing, "ChildHealthChecks": Nothing, "EnableSNI": Nothing, "FailureThreshold": Nothing, "FullyQualifiedDomainName": Nothing, "HealthThreshold": Nothing, "IPAddress": Nothing, "InsufficientDataHealthStatus": Nothing, "Inverted": Nothing, "MeasureLatency": Nothing, "Port": Nothing, "Regions": Nothing, "RequestInterval": Nothing, "ResourcePath": Nothing, "SearchString": Nothing }

-- | Constructs HealthCheckConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckConfig' :: HealthCheckType -> ( { "IPAddress" :: Maybe (IPAddress) , "Port" :: Maybe (Port) , "Type" :: (HealthCheckType) , "ResourcePath" :: Maybe (ResourcePath) , "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName) , "SearchString" :: Maybe (SearchString) , "RequestInterval" :: Maybe (RequestInterval) , "FailureThreshold" :: Maybe (FailureThreshold) , "MeasureLatency" :: Maybe (MeasureLatency) , "Inverted" :: Maybe (Inverted) , "HealthThreshold" :: Maybe (HealthThreshold) , "ChildHealthChecks" :: Maybe (ChildHealthCheckList) , "EnableSNI" :: Maybe (EnableSNI) , "Regions" :: Maybe (HealthCheckRegionList) , "AlarmIdentifier" :: Maybe (AlarmIdentifier) , "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) } -> {"IPAddress" :: Maybe (IPAddress) , "Port" :: Maybe (Port) , "Type" :: (HealthCheckType) , "ResourcePath" :: Maybe (ResourcePath) , "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName) , "SearchString" :: Maybe (SearchString) , "RequestInterval" :: Maybe (RequestInterval) , "FailureThreshold" :: Maybe (FailureThreshold) , "MeasureLatency" :: Maybe (MeasureLatency) , "Inverted" :: Maybe (Inverted) , "HealthThreshold" :: Maybe (HealthThreshold) , "ChildHealthChecks" :: Maybe (ChildHealthCheckList) , "EnableSNI" :: Maybe (EnableSNI) , "Regions" :: Maybe (HealthCheckRegionList) , "AlarmIdentifier" :: Maybe (AlarmIdentifier) , "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) } ) -> HealthCheckConfig
newHealthCheckConfig' _Type customize = (HealthCheckConfig <<< customize) { "Type": _Type, "AlarmIdentifier": Nothing, "ChildHealthChecks": Nothing, "EnableSNI": Nothing, "FailureThreshold": Nothing, "FullyQualifiedDomainName": Nothing, "HealthThreshold": Nothing, "IPAddress": Nothing, "InsufficientDataHealthStatus": Nothing, "Inverted": Nothing, "MeasureLatency": Nothing, "Port": Nothing, "Regions": Nothing, "RequestInterval": Nothing, "ResourcePath": Nothing, "SearchString": Nothing }



newtype HealthCheckCount = HealthCheckCount Number
derive instance newtypeHealthCheckCount :: Newtype HealthCheckCount _
derive instance repGenericHealthCheckCount :: Generic HealthCheckCount _
instance showHealthCheckCount :: Show HealthCheckCount where show = genericShow
instance decodeHealthCheckCount :: Decode HealthCheckCount where decode = genericDecode options
instance encodeHealthCheckCount :: Encode HealthCheckCount where encode = genericEncode options



newtype HealthCheckId = HealthCheckId String
derive instance newtypeHealthCheckId :: Newtype HealthCheckId _
derive instance repGenericHealthCheckId :: Generic HealthCheckId _
instance showHealthCheckId :: Show HealthCheckId where show = genericShow
instance decodeHealthCheckId :: Decode HealthCheckId where decode = genericDecode options
instance encodeHealthCheckId :: Encode HealthCheckId where encode = genericEncode options



-- | <p>This error code is not in use.</p>
newtype HealthCheckInUse = HealthCheckInUse 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHealthCheckInUse :: Newtype HealthCheckInUse _
derive instance repGenericHealthCheckInUse :: Generic HealthCheckInUse _
instance showHealthCheckInUse :: Show HealthCheckInUse where show = genericShow
instance decodeHealthCheckInUse :: Decode HealthCheckInUse where decode = genericDecode options
instance encodeHealthCheckInUse :: Encode HealthCheckInUse where encode = genericEncode options

-- | Constructs HealthCheckInUse from required parameters
newHealthCheckInUse :: HealthCheckInUse
newHealthCheckInUse  = HealthCheckInUse { "message": Nothing }

-- | Constructs HealthCheckInUse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckInUse' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HealthCheckInUse
newHealthCheckInUse'  customize = (HealthCheckInUse <<< customize) { "message": Nothing }



newtype HealthCheckNonce = HealthCheckNonce String
derive instance newtypeHealthCheckNonce :: Newtype HealthCheckNonce _
derive instance repGenericHealthCheckNonce :: Generic HealthCheckNonce _
instance showHealthCheckNonce :: Show HealthCheckNonce where show = genericShow
instance decodeHealthCheckNonce :: Decode HealthCheckNonce where decode = genericDecode options
instance encodeHealthCheckNonce :: Encode HealthCheckNonce where encode = genericEncode options



-- | <p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker.</p>
newtype HealthCheckObservation = HealthCheckObservation 
  { "Region" :: Maybe (HealthCheckRegion)
  , "IPAddress" :: Maybe (IPAddress)
  , "StatusReport" :: Maybe (StatusReport)
  }
derive instance newtypeHealthCheckObservation :: Newtype HealthCheckObservation _
derive instance repGenericHealthCheckObservation :: Generic HealthCheckObservation _
instance showHealthCheckObservation :: Show HealthCheckObservation where show = genericShow
instance decodeHealthCheckObservation :: Decode HealthCheckObservation where decode = genericDecode options
instance encodeHealthCheckObservation :: Encode HealthCheckObservation where encode = genericEncode options

-- | Constructs HealthCheckObservation from required parameters
newHealthCheckObservation :: HealthCheckObservation
newHealthCheckObservation  = HealthCheckObservation { "IPAddress": Nothing, "Region": Nothing, "StatusReport": Nothing }

-- | Constructs HealthCheckObservation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckObservation' :: ( { "Region" :: Maybe (HealthCheckRegion) , "IPAddress" :: Maybe (IPAddress) , "StatusReport" :: Maybe (StatusReport) } -> {"Region" :: Maybe (HealthCheckRegion) , "IPAddress" :: Maybe (IPAddress) , "StatusReport" :: Maybe (StatusReport) } ) -> HealthCheckObservation
newHealthCheckObservation'  customize = (HealthCheckObservation <<< customize) { "IPAddress": Nothing, "Region": Nothing, "StatusReport": Nothing }



newtype HealthCheckObservations = HealthCheckObservations (Array HealthCheckObservation)
derive instance newtypeHealthCheckObservations :: Newtype HealthCheckObservations _
derive instance repGenericHealthCheckObservations :: Generic HealthCheckObservations _
instance showHealthCheckObservations :: Show HealthCheckObservations where show = genericShow
instance decodeHealthCheckObservations :: Decode HealthCheckObservations where decode = genericDecode options
instance encodeHealthCheckObservations :: Encode HealthCheckObservations where encode = genericEncode options



newtype HealthCheckRegion = HealthCheckRegion String
derive instance newtypeHealthCheckRegion :: Newtype HealthCheckRegion _
derive instance repGenericHealthCheckRegion :: Generic HealthCheckRegion _
instance showHealthCheckRegion :: Show HealthCheckRegion where show = genericShow
instance decodeHealthCheckRegion :: Decode HealthCheckRegion where decode = genericDecode options
instance encodeHealthCheckRegion :: Encode HealthCheckRegion where encode = genericEncode options



newtype HealthCheckRegionList = HealthCheckRegionList (Array HealthCheckRegion)
derive instance newtypeHealthCheckRegionList :: Newtype HealthCheckRegionList _
derive instance repGenericHealthCheckRegionList :: Generic HealthCheckRegionList _
instance showHealthCheckRegionList :: Show HealthCheckRegionList where show = genericShow
instance decodeHealthCheckRegionList :: Decode HealthCheckRegionList where decode = genericDecode options
instance encodeHealthCheckRegionList :: Encode HealthCheckRegionList where encode = genericEncode options



newtype HealthCheckType = HealthCheckType String
derive instance newtypeHealthCheckType :: Newtype HealthCheckType _
derive instance repGenericHealthCheckType :: Generic HealthCheckType _
instance showHealthCheckType :: Show HealthCheckType where show = genericShow
instance decodeHealthCheckType :: Decode HealthCheckType where decode = genericDecode options
instance encodeHealthCheckType :: Encode HealthCheckType where encode = genericEncode options



newtype HealthCheckVersion = HealthCheckVersion Number
derive instance newtypeHealthCheckVersion :: Newtype HealthCheckVersion _
derive instance repGenericHealthCheckVersion :: Generic HealthCheckVersion _
instance showHealthCheckVersion :: Show HealthCheckVersion where show = genericShow
instance decodeHealthCheckVersion :: Decode HealthCheckVersion where decode = genericDecode options
instance encodeHealthCheckVersion :: Encode HealthCheckVersion where encode = genericEncode options



-- | <p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of <code>HealthCheckVersion</code> in the health check.</p>
newtype HealthCheckVersionMismatch = HealthCheckVersionMismatch 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHealthCheckVersionMismatch :: Newtype HealthCheckVersionMismatch _
derive instance repGenericHealthCheckVersionMismatch :: Generic HealthCheckVersionMismatch _
instance showHealthCheckVersionMismatch :: Show HealthCheckVersionMismatch where show = genericShow
instance decodeHealthCheckVersionMismatch :: Decode HealthCheckVersionMismatch where decode = genericDecode options
instance encodeHealthCheckVersionMismatch :: Encode HealthCheckVersionMismatch where encode = genericEncode options

-- | Constructs HealthCheckVersionMismatch from required parameters
newHealthCheckVersionMismatch :: HealthCheckVersionMismatch
newHealthCheckVersionMismatch  = HealthCheckVersionMismatch { "message": Nothing }

-- | Constructs HealthCheckVersionMismatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckVersionMismatch' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HealthCheckVersionMismatch
newHealthCheckVersionMismatch'  customize = (HealthCheckVersionMismatch <<< customize) { "message": Nothing }



newtype HealthChecks = HealthChecks (Array HealthCheck)
derive instance newtypeHealthChecks :: Newtype HealthChecks _
derive instance repGenericHealthChecks :: Generic HealthChecks _
instance showHealthChecks :: Show HealthChecks where show = genericShow
instance decodeHealthChecks :: Decode HealthChecks where decode = genericDecode options
instance encodeHealthChecks :: Encode HealthChecks where encode = genericEncode options



newtype HealthThreshold = HealthThreshold Int
derive instance newtypeHealthThreshold :: Newtype HealthThreshold _
derive instance repGenericHealthThreshold :: Generic HealthThreshold _
instance showHealthThreshold :: Show HealthThreshold where show = genericShow
instance decodeHealthThreshold :: Decode HealthThreshold where decode = genericDecode options
instance encodeHealthThreshold :: Encode HealthThreshold where encode = genericEncode options



-- | <p>A complex type that contains general information about the hosted zone.</p>
newtype HostedZone = HostedZone 
  { "Id" :: (ResourceId)
  , "Name" :: (DNSName)
  , "CallerReference" :: (Nonce)
  , "Config" :: Maybe (HostedZoneConfig)
  , "ResourceRecordSetCount" :: Maybe (HostedZoneRRSetCount)
  , "LinkedService" :: Maybe (LinkedService)
  }
derive instance newtypeHostedZone :: Newtype HostedZone _
derive instance repGenericHostedZone :: Generic HostedZone _
instance showHostedZone :: Show HostedZone where show = genericShow
instance decodeHostedZone :: Decode HostedZone where decode = genericDecode options
instance encodeHostedZone :: Encode HostedZone where encode = genericEncode options

-- | Constructs HostedZone from required parameters
newHostedZone :: Nonce -> ResourceId -> DNSName -> HostedZone
newHostedZone _CallerReference _Id _Name = HostedZone { "CallerReference": _CallerReference, "Id": _Id, "Name": _Name, "Config": Nothing, "LinkedService": Nothing, "ResourceRecordSetCount": Nothing }

-- | Constructs HostedZone's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZone' :: Nonce -> ResourceId -> DNSName -> ( { "Id" :: (ResourceId) , "Name" :: (DNSName) , "CallerReference" :: (Nonce) , "Config" :: Maybe (HostedZoneConfig) , "ResourceRecordSetCount" :: Maybe (HostedZoneRRSetCount) , "LinkedService" :: Maybe (LinkedService) } -> {"Id" :: (ResourceId) , "Name" :: (DNSName) , "CallerReference" :: (Nonce) , "Config" :: Maybe (HostedZoneConfig) , "ResourceRecordSetCount" :: Maybe (HostedZoneRRSetCount) , "LinkedService" :: Maybe (LinkedService) } ) -> HostedZone
newHostedZone' _CallerReference _Id _Name customize = (HostedZone <<< customize) { "CallerReference": _CallerReference, "Id": _Id, "Name": _Name, "Config": Nothing, "LinkedService": Nothing, "ResourceRecordSetCount": Nothing }



-- | <p>The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified <code>CallerReference</code>.</p>
newtype HostedZoneAlreadyExists = HostedZoneAlreadyExists 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHostedZoneAlreadyExists :: Newtype HostedZoneAlreadyExists _
derive instance repGenericHostedZoneAlreadyExists :: Generic HostedZoneAlreadyExists _
instance showHostedZoneAlreadyExists :: Show HostedZoneAlreadyExists where show = genericShow
instance decodeHostedZoneAlreadyExists :: Decode HostedZoneAlreadyExists where decode = genericDecode options
instance encodeHostedZoneAlreadyExists :: Encode HostedZoneAlreadyExists where encode = genericEncode options

-- | Constructs HostedZoneAlreadyExists from required parameters
newHostedZoneAlreadyExists :: HostedZoneAlreadyExists
newHostedZoneAlreadyExists  = HostedZoneAlreadyExists { "message": Nothing }

-- | Constructs HostedZoneAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZoneAlreadyExists' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HostedZoneAlreadyExists
newHostedZoneAlreadyExists'  customize = (HostedZoneAlreadyExists <<< customize) { "message": Nothing }



-- | <p>A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the <code>HostedZoneConfig</code> and <code>Comment</code> elements.</p>
newtype HostedZoneConfig = HostedZoneConfig 
  { "Comment" :: Maybe (ResourceDescription)
  , "PrivateZone" :: Maybe (IsPrivateZone)
  }
derive instance newtypeHostedZoneConfig :: Newtype HostedZoneConfig _
derive instance repGenericHostedZoneConfig :: Generic HostedZoneConfig _
instance showHostedZoneConfig :: Show HostedZoneConfig where show = genericShow
instance decodeHostedZoneConfig :: Decode HostedZoneConfig where decode = genericDecode options
instance encodeHostedZoneConfig :: Encode HostedZoneConfig where encode = genericEncode options

-- | Constructs HostedZoneConfig from required parameters
newHostedZoneConfig :: HostedZoneConfig
newHostedZoneConfig  = HostedZoneConfig { "Comment": Nothing, "PrivateZone": Nothing }

-- | Constructs HostedZoneConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZoneConfig' :: ( { "Comment" :: Maybe (ResourceDescription) , "PrivateZone" :: Maybe (IsPrivateZone) } -> {"Comment" :: Maybe (ResourceDescription) , "PrivateZone" :: Maybe (IsPrivateZone) } ) -> HostedZoneConfig
newHostedZoneConfig'  customize = (HostedZoneConfig <<< customize) { "Comment": Nothing, "PrivateZone": Nothing }



newtype HostedZoneCount = HostedZoneCount Number
derive instance newtypeHostedZoneCount :: Newtype HostedZoneCount _
derive instance repGenericHostedZoneCount :: Generic HostedZoneCount _
instance showHostedZoneCount :: Show HostedZoneCount where show = genericShow
instance decodeHostedZoneCount :: Decode HostedZoneCount where decode = genericDecode options
instance encodeHostedZoneCount :: Encode HostedZoneCount where encode = genericEncode options



-- | <p>A complex type that contains the type of limit that you specified in the request and the current value for that limit.</p>
newtype HostedZoneLimit = HostedZoneLimit 
  { "Type" :: (HostedZoneLimitType)
  , "Value" :: (LimitValue)
  }
derive instance newtypeHostedZoneLimit :: Newtype HostedZoneLimit _
derive instance repGenericHostedZoneLimit :: Generic HostedZoneLimit _
instance showHostedZoneLimit :: Show HostedZoneLimit where show = genericShow
instance decodeHostedZoneLimit :: Decode HostedZoneLimit where decode = genericDecode options
instance encodeHostedZoneLimit :: Encode HostedZoneLimit where encode = genericEncode options

-- | Constructs HostedZoneLimit from required parameters
newHostedZoneLimit :: HostedZoneLimitType -> LimitValue -> HostedZoneLimit
newHostedZoneLimit _Type _Value = HostedZoneLimit { "Type": _Type, "Value": _Value }

-- | Constructs HostedZoneLimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZoneLimit' :: HostedZoneLimitType -> LimitValue -> ( { "Type" :: (HostedZoneLimitType) , "Value" :: (LimitValue) } -> {"Type" :: (HostedZoneLimitType) , "Value" :: (LimitValue) } ) -> HostedZoneLimit
newHostedZoneLimit' _Type _Value customize = (HostedZoneLimit <<< customize) { "Type": _Type, "Value": _Value }



newtype HostedZoneLimitType = HostedZoneLimitType String
derive instance newtypeHostedZoneLimitType :: Newtype HostedZoneLimitType _
derive instance repGenericHostedZoneLimitType :: Generic HostedZoneLimitType _
instance showHostedZoneLimitType :: Show HostedZoneLimitType where show = genericShow
instance decodeHostedZoneLimitType :: Decode HostedZoneLimitType where decode = genericDecode options
instance encodeHostedZoneLimitType :: Encode HostedZoneLimitType where encode = genericEncode options



-- | <p>The hosted zone contains resource records that are not SOA or NS records.</p>
newtype HostedZoneNotEmpty = HostedZoneNotEmpty 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHostedZoneNotEmpty :: Newtype HostedZoneNotEmpty _
derive instance repGenericHostedZoneNotEmpty :: Generic HostedZoneNotEmpty _
instance showHostedZoneNotEmpty :: Show HostedZoneNotEmpty where show = genericShow
instance decodeHostedZoneNotEmpty :: Decode HostedZoneNotEmpty where decode = genericDecode options
instance encodeHostedZoneNotEmpty :: Encode HostedZoneNotEmpty where encode = genericEncode options

-- | Constructs HostedZoneNotEmpty from required parameters
newHostedZoneNotEmpty :: HostedZoneNotEmpty
newHostedZoneNotEmpty  = HostedZoneNotEmpty { "message": Nothing }

-- | Constructs HostedZoneNotEmpty's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZoneNotEmpty' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HostedZoneNotEmpty
newHostedZoneNotEmpty'  customize = (HostedZoneNotEmpty <<< customize) { "message": Nothing }



-- | <p>The specified HostedZone can't be found.</p>
newtype HostedZoneNotFound = HostedZoneNotFound 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHostedZoneNotFound :: Newtype HostedZoneNotFound _
derive instance repGenericHostedZoneNotFound :: Generic HostedZoneNotFound _
instance showHostedZoneNotFound :: Show HostedZoneNotFound where show = genericShow
instance decodeHostedZoneNotFound :: Decode HostedZoneNotFound where decode = genericDecode options
instance encodeHostedZoneNotFound :: Encode HostedZoneNotFound where encode = genericEncode options

-- | Constructs HostedZoneNotFound from required parameters
newHostedZoneNotFound :: HostedZoneNotFound
newHostedZoneNotFound  = HostedZoneNotFound { "message": Nothing }

-- | Constructs HostedZoneNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZoneNotFound' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HostedZoneNotFound
newHostedZoneNotFound'  customize = (HostedZoneNotFound <<< customize) { "message": Nothing }



-- | <p>The specified hosted zone is a public hosted zone, not a private hosted zone.</p>
newtype HostedZoneNotPrivate = HostedZoneNotPrivate 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeHostedZoneNotPrivate :: Newtype HostedZoneNotPrivate _
derive instance repGenericHostedZoneNotPrivate :: Generic HostedZoneNotPrivate _
instance showHostedZoneNotPrivate :: Show HostedZoneNotPrivate where show = genericShow
instance decodeHostedZoneNotPrivate :: Decode HostedZoneNotPrivate where decode = genericDecode options
instance encodeHostedZoneNotPrivate :: Encode HostedZoneNotPrivate where encode = genericEncode options

-- | Constructs HostedZoneNotPrivate from required parameters
newHostedZoneNotPrivate :: HostedZoneNotPrivate
newHostedZoneNotPrivate  = HostedZoneNotPrivate { "message": Nothing }

-- | Constructs HostedZoneNotPrivate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostedZoneNotPrivate' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> HostedZoneNotPrivate
newHostedZoneNotPrivate'  customize = (HostedZoneNotPrivate <<< customize) { "message": Nothing }



newtype HostedZoneRRSetCount = HostedZoneRRSetCount Number
derive instance newtypeHostedZoneRRSetCount :: Newtype HostedZoneRRSetCount _
derive instance repGenericHostedZoneRRSetCount :: Generic HostedZoneRRSetCount _
instance showHostedZoneRRSetCount :: Show HostedZoneRRSetCount where show = genericShow
instance decodeHostedZoneRRSetCount :: Decode HostedZoneRRSetCount where decode = genericDecode options
instance encodeHostedZoneRRSetCount :: Encode HostedZoneRRSetCount where encode = genericEncode options



newtype HostedZones = HostedZones (Array HostedZone)
derive instance newtypeHostedZones :: Newtype HostedZones _
derive instance repGenericHostedZones :: Generic HostedZones _
instance showHostedZones :: Show HostedZones where show = genericShow
instance decodeHostedZones :: Decode HostedZones where decode = genericDecode options
instance encodeHostedZones :: Encode HostedZones where encode = genericEncode options



newtype IPAddress = IPAddress String
derive instance newtypeIPAddress :: Newtype IPAddress _
derive instance repGenericIPAddress :: Generic IPAddress _
instance showIPAddress :: Show IPAddress where show = genericShow
instance decodeIPAddress :: Decode IPAddress where decode = genericDecode options
instance encodeIPAddress :: Encode IPAddress where encode = genericEncode options



newtype IPAddressCidr = IPAddressCidr String
derive instance newtypeIPAddressCidr :: Newtype IPAddressCidr _
derive instance repGenericIPAddressCidr :: Generic IPAddressCidr _
instance showIPAddressCidr :: Show IPAddressCidr where show = genericShow
instance decodeIPAddressCidr :: Decode IPAddressCidr where decode = genericDecode options
instance encodeIPAddressCidr :: Encode IPAddressCidr where encode = genericEncode options



-- | <p>The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.</p>
newtype IncompatibleVersion = IncompatibleVersion 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeIncompatibleVersion :: Newtype IncompatibleVersion _
derive instance repGenericIncompatibleVersion :: Generic IncompatibleVersion _
instance showIncompatibleVersion :: Show IncompatibleVersion where show = genericShow
instance decodeIncompatibleVersion :: Decode IncompatibleVersion where decode = genericDecode options
instance encodeIncompatibleVersion :: Encode IncompatibleVersion where encode = genericEncode options

-- | Constructs IncompatibleVersion from required parameters
newIncompatibleVersion :: IncompatibleVersion
newIncompatibleVersion  = IncompatibleVersion { "message": Nothing }

-- | Constructs IncompatibleVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncompatibleVersion' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> IncompatibleVersion
newIncompatibleVersion'  customize = (IncompatibleVersion <<< customize) { "message": Nothing }



-- | <p>Amazon Route 53 doesn't have the permissions required to create log streams and send query logs to log streams. Possible causes include the following:</p> <ul> <li> <p>There is no resource policy that specifies the log group ARN in the value for <code>Resource</code>.</p> </li> <li> <p>The resource policy that includes the log group ARN in the value for <code>Resource</code> doesn't have the necessary permissions.</p> </li> <li> <p>The resource policy hasn't finished propagating yet.</p> </li> </ul>
newtype InsufficientCloudWatchLogsResourcePolicy = InsufficientCloudWatchLogsResourcePolicy 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInsufficientCloudWatchLogsResourcePolicy :: Newtype InsufficientCloudWatchLogsResourcePolicy _
derive instance repGenericInsufficientCloudWatchLogsResourcePolicy :: Generic InsufficientCloudWatchLogsResourcePolicy _
instance showInsufficientCloudWatchLogsResourcePolicy :: Show InsufficientCloudWatchLogsResourcePolicy where show = genericShow
instance decodeInsufficientCloudWatchLogsResourcePolicy :: Decode InsufficientCloudWatchLogsResourcePolicy where decode = genericDecode options
instance encodeInsufficientCloudWatchLogsResourcePolicy :: Encode InsufficientCloudWatchLogsResourcePolicy where encode = genericEncode options

-- | Constructs InsufficientCloudWatchLogsResourcePolicy from required parameters
newInsufficientCloudWatchLogsResourcePolicy :: InsufficientCloudWatchLogsResourcePolicy
newInsufficientCloudWatchLogsResourcePolicy  = InsufficientCloudWatchLogsResourcePolicy { "message": Nothing }

-- | Constructs InsufficientCloudWatchLogsResourcePolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInsufficientCloudWatchLogsResourcePolicy' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InsufficientCloudWatchLogsResourcePolicy
newInsufficientCloudWatchLogsResourcePolicy'  customize = (InsufficientCloudWatchLogsResourcePolicy <<< customize) { "message": Nothing }



newtype InsufficientDataHealthStatus = InsufficientDataHealthStatus String
derive instance newtypeInsufficientDataHealthStatus :: Newtype InsufficientDataHealthStatus _
derive instance repGenericInsufficientDataHealthStatus :: Generic InsufficientDataHealthStatus _
instance showInsufficientDataHealthStatus :: Show InsufficientDataHealthStatus where show = genericShow
instance decodeInsufficientDataHealthStatus :: Decode InsufficientDataHealthStatus where decode = genericDecode options
instance encodeInsufficientDataHealthStatus :: Encode InsufficientDataHealthStatus where encode = genericEncode options



-- | <p>Parameter name is invalid.</p>
newtype InvalidArgument = InvalidArgument 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidArgument :: Newtype InvalidArgument _
derive instance repGenericInvalidArgument :: Generic InvalidArgument _
instance showInvalidArgument :: Show InvalidArgument where show = genericShow
instance decodeInvalidArgument :: Decode InvalidArgument where decode = genericDecode options
instance encodeInvalidArgument :: Encode InvalidArgument where encode = genericEncode options

-- | Constructs InvalidArgument from required parameters
newInvalidArgument :: InvalidArgument
newInvalidArgument  = InvalidArgument { "message": Nothing }

-- | Constructs InvalidArgument's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArgument' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidArgument
newInvalidArgument'  customize = (InvalidArgument <<< customize) { "message": Nothing }



-- | <p>This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.</p>
newtype InvalidChangeBatch = InvalidChangeBatch 
  { "messages" :: Maybe (ErrorMessages)
  , "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidChangeBatch :: Newtype InvalidChangeBatch _
derive instance repGenericInvalidChangeBatch :: Generic InvalidChangeBatch _
instance showInvalidChangeBatch :: Show InvalidChangeBatch where show = genericShow
instance decodeInvalidChangeBatch :: Decode InvalidChangeBatch where decode = genericDecode options
instance encodeInvalidChangeBatch :: Encode InvalidChangeBatch where encode = genericEncode options

-- | Constructs InvalidChangeBatch from required parameters
newInvalidChangeBatch :: InvalidChangeBatch
newInvalidChangeBatch  = InvalidChangeBatch { "message": Nothing, "messages": Nothing }

-- | Constructs InvalidChangeBatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidChangeBatch' :: ( { "messages" :: Maybe (ErrorMessages) , "message" :: Maybe (ErrorMessage) } -> {"messages" :: Maybe (ErrorMessages) , "message" :: Maybe (ErrorMessage) } ) -> InvalidChangeBatch
newInvalidChangeBatch'  customize = (InvalidChangeBatch <<< customize) { "message": Nothing, "messages": Nothing }



-- | <p>The specified domain name is not valid.</p>
newtype InvalidDomainName = InvalidDomainName 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidDomainName :: Newtype InvalidDomainName _
derive instance repGenericInvalidDomainName :: Generic InvalidDomainName _
instance showInvalidDomainName :: Show InvalidDomainName where show = genericShow
instance decodeInvalidDomainName :: Decode InvalidDomainName where decode = genericDecode options
instance encodeInvalidDomainName :: Encode InvalidDomainName where encode = genericEncode options

-- | Constructs InvalidDomainName from required parameters
newInvalidDomainName :: InvalidDomainName
newInvalidDomainName  = InvalidDomainName { "message": Nothing }

-- | Constructs InvalidDomainName's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidDomainName' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidDomainName
newInvalidDomainName'  customize = (InvalidDomainName <<< customize) { "message": Nothing }



-- | <p>The input is not valid.</p>
newtype InvalidInput = InvalidInput 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidInput :: Newtype InvalidInput _
derive instance repGenericInvalidInput :: Generic InvalidInput _
instance showInvalidInput :: Show InvalidInput where show = genericShow
instance decodeInvalidInput :: Decode InvalidInput where decode = genericDecode options
instance encodeInvalidInput :: Encode InvalidInput where encode = genericEncode options

-- | Constructs InvalidInput from required parameters
newInvalidInput :: InvalidInput
newInvalidInput  = InvalidInput { "message": Nothing }

-- | Constructs InvalidInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInput' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidInput
newInvalidInput'  customize = (InvalidInput <<< customize) { "message": Nothing }



-- | <p>The value that you specified to get the second or subsequent page of results is invalid.</p>
newtype InvalidPaginationToken = InvalidPaginationToken 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidPaginationToken :: Newtype InvalidPaginationToken _
derive instance repGenericInvalidPaginationToken :: Generic InvalidPaginationToken _
instance showInvalidPaginationToken :: Show InvalidPaginationToken where show = genericShow
instance decodeInvalidPaginationToken :: Decode InvalidPaginationToken where decode = genericDecode options
instance encodeInvalidPaginationToken :: Encode InvalidPaginationToken where encode = genericEncode options

-- | Constructs InvalidPaginationToken from required parameters
newInvalidPaginationToken :: InvalidPaginationToken
newInvalidPaginationToken  = InvalidPaginationToken { "message": Nothing }

-- | Constructs InvalidPaginationToken's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidPaginationToken' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidPaginationToken
newInvalidPaginationToken'  customize = (InvalidPaginationToken <<< customize) { "message": Nothing }



-- | <p>The format of the traffic policy document that you specified in the <code>Document</code> element is invalid.</p>
newtype InvalidTrafficPolicyDocument = InvalidTrafficPolicyDocument 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidTrafficPolicyDocument :: Newtype InvalidTrafficPolicyDocument _
derive instance repGenericInvalidTrafficPolicyDocument :: Generic InvalidTrafficPolicyDocument _
instance showInvalidTrafficPolicyDocument :: Show InvalidTrafficPolicyDocument where show = genericShow
instance decodeInvalidTrafficPolicyDocument :: Decode InvalidTrafficPolicyDocument where decode = genericDecode options
instance encodeInvalidTrafficPolicyDocument :: Encode InvalidTrafficPolicyDocument where encode = genericEncode options

-- | Constructs InvalidTrafficPolicyDocument from required parameters
newInvalidTrafficPolicyDocument :: InvalidTrafficPolicyDocument
newInvalidTrafficPolicyDocument  = InvalidTrafficPolicyDocument { "message": Nothing }

-- | Constructs InvalidTrafficPolicyDocument's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidTrafficPolicyDocument' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidTrafficPolicyDocument
newInvalidTrafficPolicyDocument'  customize = (InvalidTrafficPolicyDocument <<< customize) { "message": Nothing }



-- | <p>The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.</p>
newtype InvalidVPCId = InvalidVPCId 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidVPCId :: Newtype InvalidVPCId _
derive instance repGenericInvalidVPCId :: Generic InvalidVPCId _
instance showInvalidVPCId :: Show InvalidVPCId where show = genericShow
instance decodeInvalidVPCId :: Decode InvalidVPCId where decode = genericDecode options
instance encodeInvalidVPCId :: Encode InvalidVPCId where encode = genericEncode options

-- | Constructs InvalidVPCId from required parameters
newInvalidVPCId :: InvalidVPCId
newInvalidVPCId  = InvalidVPCId { "message": Nothing }

-- | Constructs InvalidVPCId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidVPCId' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidVPCId
newInvalidVPCId'  customize = (InvalidVPCId <<< customize) { "message": Nothing }



newtype Inverted = Inverted Boolean
derive instance newtypeInverted :: Newtype Inverted _
derive instance repGenericInverted :: Generic Inverted _
instance showInverted :: Show Inverted where show = genericShow
instance decodeInverted :: Decode Inverted where decode = genericDecode options
instance encodeInverted :: Encode Inverted where encode = genericEncode options



newtype IsPrivateZone = IsPrivateZone Boolean
derive instance newtypeIsPrivateZone :: Newtype IsPrivateZone _
derive instance repGenericIsPrivateZone :: Generic IsPrivateZone _
instance showIsPrivateZone :: Show IsPrivateZone where show = genericShow
instance decodeIsPrivateZone :: Decode IsPrivateZone where decode = genericDecode options
instance encodeIsPrivateZone :: Encode IsPrivateZone where encode = genericEncode options



-- | <p>The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.</p>
newtype LastVPCAssociation = LastVPCAssociation 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLastVPCAssociation :: Newtype LastVPCAssociation _
derive instance repGenericLastVPCAssociation :: Generic LastVPCAssociation _
instance showLastVPCAssociation :: Show LastVPCAssociation where show = genericShow
instance decodeLastVPCAssociation :: Decode LastVPCAssociation where decode = genericDecode options
instance encodeLastVPCAssociation :: Encode LastVPCAssociation where encode = genericEncode options

-- | Constructs LastVPCAssociation from required parameters
newLastVPCAssociation :: LastVPCAssociation
newLastVPCAssociation  = LastVPCAssociation { "message": Nothing }

-- | Constructs LastVPCAssociation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLastVPCAssociation' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> LastVPCAssociation
newLastVPCAssociation'  customize = (LastVPCAssociation <<< customize) { "message": Nothing }



newtype LimitValue = LimitValue Number
derive instance newtypeLimitValue :: Newtype LimitValue _
derive instance repGenericLimitValue :: Generic LimitValue _
instance showLimitValue :: Show LimitValue where show = genericShow
instance decodeLimitValue :: Decode LimitValue where decode = genericDecode options
instance encodeLimitValue :: Encode LimitValue where encode = genericEncode options



-- | <p>This operation can't be completed either because the current account has reached the limit on reusable delegation sets that it can create or because you've reached the limit on the number of Amazon VPCs that you can associate with a private hosted zone. To get the current limit on the number of reusable delegation sets, see <a>GetAccountLimit</a>. To get the current limit on the number of Amazon VPCs that you can associate with a private hosted zone, see <a>GetHostedZoneLimit</a>. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
newtype LimitsExceeded = LimitsExceeded 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLimitsExceeded :: Newtype LimitsExceeded _
derive instance repGenericLimitsExceeded :: Generic LimitsExceeded _
instance showLimitsExceeded :: Show LimitsExceeded where show = genericShow
instance decodeLimitsExceeded :: Decode LimitsExceeded where decode = genericDecode options
instance encodeLimitsExceeded :: Encode LimitsExceeded where encode = genericEncode options

-- | Constructs LimitsExceeded from required parameters
newLimitsExceeded :: LimitsExceeded
newLimitsExceeded  = LimitsExceeded { "message": Nothing }

-- | Constructs LimitsExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitsExceeded' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> LimitsExceeded
newLimitsExceeded'  customize = (LimitsExceeded <<< customize) { "message": Nothing }



-- | <p>If a health check or hosted zone was created by another service, <code>LinkedService</code> is a complex type that describes the service that created the resource. When a resource is created by another service, you can't edit or delete it using Amazon Route 53. </p>
newtype LinkedService = LinkedService 
  { "ServicePrincipal" :: Maybe (ServicePrincipal)
  , "Description" :: Maybe (ResourceDescription)
  }
derive instance newtypeLinkedService :: Newtype LinkedService _
derive instance repGenericLinkedService :: Generic LinkedService _
instance showLinkedService :: Show LinkedService where show = genericShow
instance decodeLinkedService :: Decode LinkedService where decode = genericDecode options
instance encodeLinkedService :: Encode LinkedService where encode = genericEncode options

-- | Constructs LinkedService from required parameters
newLinkedService :: LinkedService
newLinkedService  = LinkedService { "Description": Nothing, "ServicePrincipal": Nothing }

-- | Constructs LinkedService's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLinkedService' :: ( { "ServicePrincipal" :: Maybe (ServicePrincipal) , "Description" :: Maybe (ResourceDescription) } -> {"ServicePrincipal" :: Maybe (ServicePrincipal) , "Description" :: Maybe (ResourceDescription) } ) -> LinkedService
newLinkedService'  customize = (LinkedService <<< customize) { "Description": Nothing, "ServicePrincipal": Nothing }



-- | <p>A request to get a list of geographic locations that Amazon Route 53 supports for geolocation resource record sets. </p>
newtype ListGeoLocationsRequest = ListGeoLocationsRequest 
  { "StartContinentCode" :: Maybe (GeoLocationContinentCode)
  , "StartCountryCode" :: Maybe (GeoLocationCountryCode)
  , "StartSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListGeoLocationsRequest :: Newtype ListGeoLocationsRequest _
derive instance repGenericListGeoLocationsRequest :: Generic ListGeoLocationsRequest _
instance showListGeoLocationsRequest :: Show ListGeoLocationsRequest where show = genericShow
instance decodeListGeoLocationsRequest :: Decode ListGeoLocationsRequest where decode = genericDecode options
instance encodeListGeoLocationsRequest :: Encode ListGeoLocationsRequest where encode = genericEncode options

-- | Constructs ListGeoLocationsRequest from required parameters
newListGeoLocationsRequest :: ListGeoLocationsRequest
newListGeoLocationsRequest  = ListGeoLocationsRequest { "MaxItems": Nothing, "StartContinentCode": Nothing, "StartCountryCode": Nothing, "StartSubdivisionCode": Nothing }

-- | Constructs ListGeoLocationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGeoLocationsRequest' :: ( { "StartContinentCode" :: Maybe (GeoLocationContinentCode) , "StartCountryCode" :: Maybe (GeoLocationCountryCode) , "StartSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) , "MaxItems" :: Maybe (PageMaxItems) } -> {"StartContinentCode" :: Maybe (GeoLocationContinentCode) , "StartCountryCode" :: Maybe (GeoLocationCountryCode) , "StartSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListGeoLocationsRequest
newListGeoLocationsRequest'  customize = (ListGeoLocationsRequest <<< customize) { "MaxItems": Nothing, "StartContinentCode": Nothing, "StartCountryCode": Nothing, "StartSubdivisionCode": Nothing }



-- | <p>A complex type containing the response information for the request.</p>
newtype ListGeoLocationsResponse = ListGeoLocationsResponse 
  { "GeoLocationDetailsList" :: (GeoLocationDetailsList)
  , "IsTruncated" :: (PageTruncated)
  , "NextContinentCode" :: Maybe (GeoLocationContinentCode)
  , "NextCountryCode" :: Maybe (GeoLocationCountryCode)
  , "NextSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListGeoLocationsResponse :: Newtype ListGeoLocationsResponse _
derive instance repGenericListGeoLocationsResponse :: Generic ListGeoLocationsResponse _
instance showListGeoLocationsResponse :: Show ListGeoLocationsResponse where show = genericShow
instance decodeListGeoLocationsResponse :: Decode ListGeoLocationsResponse where decode = genericDecode options
instance encodeListGeoLocationsResponse :: Encode ListGeoLocationsResponse where encode = genericEncode options

-- | Constructs ListGeoLocationsResponse from required parameters
newListGeoLocationsResponse :: GeoLocationDetailsList -> PageTruncated -> PageMaxItems -> ListGeoLocationsResponse
newListGeoLocationsResponse _GeoLocationDetailsList _IsTruncated _MaxItems = ListGeoLocationsResponse { "GeoLocationDetailsList": _GeoLocationDetailsList, "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "NextContinentCode": Nothing, "NextCountryCode": Nothing, "NextSubdivisionCode": Nothing }

-- | Constructs ListGeoLocationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGeoLocationsResponse' :: GeoLocationDetailsList -> PageTruncated -> PageMaxItems -> ( { "GeoLocationDetailsList" :: (GeoLocationDetailsList) , "IsTruncated" :: (PageTruncated) , "NextContinentCode" :: Maybe (GeoLocationContinentCode) , "NextCountryCode" :: Maybe (GeoLocationCountryCode) , "NextSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) , "MaxItems" :: (PageMaxItems) } -> {"GeoLocationDetailsList" :: (GeoLocationDetailsList) , "IsTruncated" :: (PageTruncated) , "NextContinentCode" :: Maybe (GeoLocationContinentCode) , "NextCountryCode" :: Maybe (GeoLocationCountryCode) , "NextSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) , "MaxItems" :: (PageMaxItems) } ) -> ListGeoLocationsResponse
newListGeoLocationsResponse' _GeoLocationDetailsList _IsTruncated _MaxItems customize = (ListGeoLocationsResponse <<< customize) { "GeoLocationDetailsList": _GeoLocationDetailsList, "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "NextContinentCode": Nothing, "NextCountryCode": Nothing, "NextSubdivisionCode": Nothing }



-- | <p>A request to retrieve a list of the health checks that are associated with the current AWS account.</p>
newtype ListHealthChecksRequest = ListHealthChecksRequest 
  { "Marker" :: Maybe (PageMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListHealthChecksRequest :: Newtype ListHealthChecksRequest _
derive instance repGenericListHealthChecksRequest :: Generic ListHealthChecksRequest _
instance showListHealthChecksRequest :: Show ListHealthChecksRequest where show = genericShow
instance decodeListHealthChecksRequest :: Decode ListHealthChecksRequest where decode = genericDecode options
instance encodeListHealthChecksRequest :: Encode ListHealthChecksRequest where encode = genericEncode options

-- | Constructs ListHealthChecksRequest from required parameters
newListHealthChecksRequest :: ListHealthChecksRequest
newListHealthChecksRequest  = ListHealthChecksRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListHealthChecksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHealthChecksRequest' :: ( { "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } -> {"Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListHealthChecksRequest
newListHealthChecksRequest'  customize = (ListHealthChecksRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>A complex type that contains the response to a <code>ListHealthChecks</code> request.</p>
newtype ListHealthChecksResponse = ListHealthChecksResponse 
  { "HealthChecks" :: (HealthChecks)
  , "Marker" :: (PageMarker)
  , "IsTruncated" :: (PageTruncated)
  , "NextMarker" :: Maybe (PageMarker)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListHealthChecksResponse :: Newtype ListHealthChecksResponse _
derive instance repGenericListHealthChecksResponse :: Generic ListHealthChecksResponse _
instance showListHealthChecksResponse :: Show ListHealthChecksResponse where show = genericShow
instance decodeListHealthChecksResponse :: Decode ListHealthChecksResponse where decode = genericDecode options
instance encodeListHealthChecksResponse :: Encode ListHealthChecksResponse where encode = genericEncode options

-- | Constructs ListHealthChecksResponse from required parameters
newListHealthChecksResponse :: HealthChecks -> PageTruncated -> PageMarker -> PageMaxItems -> ListHealthChecksResponse
newListHealthChecksResponse _HealthChecks _IsTruncated _Marker _MaxItems = ListHealthChecksResponse { "HealthChecks": _HealthChecks, "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "NextMarker": Nothing }

-- | Constructs ListHealthChecksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHealthChecksResponse' :: HealthChecks -> PageTruncated -> PageMarker -> PageMaxItems -> ( { "HealthChecks" :: (HealthChecks) , "Marker" :: (PageMarker) , "IsTruncated" :: (PageTruncated) , "NextMarker" :: Maybe (PageMarker) , "MaxItems" :: (PageMaxItems) } -> {"HealthChecks" :: (HealthChecks) , "Marker" :: (PageMarker) , "IsTruncated" :: (PageTruncated) , "NextMarker" :: Maybe (PageMarker) , "MaxItems" :: (PageMaxItems) } ) -> ListHealthChecksResponse
newListHealthChecksResponse' _HealthChecks _IsTruncated _Marker _MaxItems customize = (ListHealthChecksResponse <<< customize) { "HealthChecks": _HealthChecks, "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "NextMarker": Nothing }



-- | <p>Retrieves a list of the public and private hosted zones that are associated with the current AWS account in ASCII order by domain name. </p>
newtype ListHostedZonesByNameRequest = ListHostedZonesByNameRequest 
  { "DNSName" :: Maybe (DNSName)
  , "HostedZoneId" :: Maybe (ResourceId)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListHostedZonesByNameRequest :: Newtype ListHostedZonesByNameRequest _
derive instance repGenericListHostedZonesByNameRequest :: Generic ListHostedZonesByNameRequest _
instance showListHostedZonesByNameRequest :: Show ListHostedZonesByNameRequest where show = genericShow
instance decodeListHostedZonesByNameRequest :: Decode ListHostedZonesByNameRequest where decode = genericDecode options
instance encodeListHostedZonesByNameRequest :: Encode ListHostedZonesByNameRequest where encode = genericEncode options

-- | Constructs ListHostedZonesByNameRequest from required parameters
newListHostedZonesByNameRequest :: ListHostedZonesByNameRequest
newListHostedZonesByNameRequest  = ListHostedZonesByNameRequest { "DNSName": Nothing, "HostedZoneId": Nothing, "MaxItems": Nothing }

-- | Constructs ListHostedZonesByNameRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHostedZonesByNameRequest' :: ( { "DNSName" :: Maybe (DNSName) , "HostedZoneId" :: Maybe (ResourceId) , "MaxItems" :: Maybe (PageMaxItems) } -> {"DNSName" :: Maybe (DNSName) , "HostedZoneId" :: Maybe (ResourceId) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListHostedZonesByNameRequest
newListHostedZonesByNameRequest'  customize = (ListHostedZonesByNameRequest <<< customize) { "DNSName": Nothing, "HostedZoneId": Nothing, "MaxItems": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListHostedZonesByNameResponse = ListHostedZonesByNameResponse 
  { "HostedZones" :: (HostedZones)
  , "DNSName" :: Maybe (DNSName)
  , "HostedZoneId" :: Maybe (ResourceId)
  , "IsTruncated" :: (PageTruncated)
  , "NextDNSName" :: Maybe (DNSName)
  , "NextHostedZoneId" :: Maybe (ResourceId)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListHostedZonesByNameResponse :: Newtype ListHostedZonesByNameResponse _
derive instance repGenericListHostedZonesByNameResponse :: Generic ListHostedZonesByNameResponse _
instance showListHostedZonesByNameResponse :: Show ListHostedZonesByNameResponse where show = genericShow
instance decodeListHostedZonesByNameResponse :: Decode ListHostedZonesByNameResponse where decode = genericDecode options
instance encodeListHostedZonesByNameResponse :: Encode ListHostedZonesByNameResponse where encode = genericEncode options

-- | Constructs ListHostedZonesByNameResponse from required parameters
newListHostedZonesByNameResponse :: HostedZones -> PageTruncated -> PageMaxItems -> ListHostedZonesByNameResponse
newListHostedZonesByNameResponse _HostedZones _IsTruncated _MaxItems = ListHostedZonesByNameResponse { "HostedZones": _HostedZones, "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "DNSName": Nothing, "HostedZoneId": Nothing, "NextDNSName": Nothing, "NextHostedZoneId": Nothing }

-- | Constructs ListHostedZonesByNameResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHostedZonesByNameResponse' :: HostedZones -> PageTruncated -> PageMaxItems -> ( { "HostedZones" :: (HostedZones) , "DNSName" :: Maybe (DNSName) , "HostedZoneId" :: Maybe (ResourceId) , "IsTruncated" :: (PageTruncated) , "NextDNSName" :: Maybe (DNSName) , "NextHostedZoneId" :: Maybe (ResourceId) , "MaxItems" :: (PageMaxItems) } -> {"HostedZones" :: (HostedZones) , "DNSName" :: Maybe (DNSName) , "HostedZoneId" :: Maybe (ResourceId) , "IsTruncated" :: (PageTruncated) , "NextDNSName" :: Maybe (DNSName) , "NextHostedZoneId" :: Maybe (ResourceId) , "MaxItems" :: (PageMaxItems) } ) -> ListHostedZonesByNameResponse
newListHostedZonesByNameResponse' _HostedZones _IsTruncated _MaxItems customize = (ListHostedZonesByNameResponse <<< customize) { "HostedZones": _HostedZones, "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "DNSName": Nothing, "HostedZoneId": Nothing, "NextDNSName": Nothing, "NextHostedZoneId": Nothing }



-- | <p>A request to retrieve a list of the public and private hosted zones that are associated with the current AWS account.</p>
newtype ListHostedZonesRequest = ListHostedZonesRequest 
  { "Marker" :: Maybe (PageMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  , "DelegationSetId" :: Maybe (ResourceId)
  }
derive instance newtypeListHostedZonesRequest :: Newtype ListHostedZonesRequest _
derive instance repGenericListHostedZonesRequest :: Generic ListHostedZonesRequest _
instance showListHostedZonesRequest :: Show ListHostedZonesRequest where show = genericShow
instance decodeListHostedZonesRequest :: Decode ListHostedZonesRequest where decode = genericDecode options
instance encodeListHostedZonesRequest :: Encode ListHostedZonesRequest where encode = genericEncode options

-- | Constructs ListHostedZonesRequest from required parameters
newListHostedZonesRequest :: ListHostedZonesRequest
newListHostedZonesRequest  = ListHostedZonesRequest { "DelegationSetId": Nothing, "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListHostedZonesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHostedZonesRequest' :: ( { "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) , "DelegationSetId" :: Maybe (ResourceId) } -> {"Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) , "DelegationSetId" :: Maybe (ResourceId) } ) -> ListHostedZonesRequest
newListHostedZonesRequest'  customize = (ListHostedZonesRequest <<< customize) { "DelegationSetId": Nothing, "Marker": Nothing, "MaxItems": Nothing }



newtype ListHostedZonesResponse = ListHostedZonesResponse 
  { "HostedZones" :: (HostedZones)
  , "Marker" :: (PageMarker)
  , "IsTruncated" :: (PageTruncated)
  , "NextMarker" :: Maybe (PageMarker)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListHostedZonesResponse :: Newtype ListHostedZonesResponse _
derive instance repGenericListHostedZonesResponse :: Generic ListHostedZonesResponse _
instance showListHostedZonesResponse :: Show ListHostedZonesResponse where show = genericShow
instance decodeListHostedZonesResponse :: Decode ListHostedZonesResponse where decode = genericDecode options
instance encodeListHostedZonesResponse :: Encode ListHostedZonesResponse where encode = genericEncode options

-- | Constructs ListHostedZonesResponse from required parameters
newListHostedZonesResponse :: HostedZones -> PageTruncated -> PageMarker -> PageMaxItems -> ListHostedZonesResponse
newListHostedZonesResponse _HostedZones _IsTruncated _Marker _MaxItems = ListHostedZonesResponse { "HostedZones": _HostedZones, "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "NextMarker": Nothing }

-- | Constructs ListHostedZonesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHostedZonesResponse' :: HostedZones -> PageTruncated -> PageMarker -> PageMaxItems -> ( { "HostedZones" :: (HostedZones) , "Marker" :: (PageMarker) , "IsTruncated" :: (PageTruncated) , "NextMarker" :: Maybe (PageMarker) , "MaxItems" :: (PageMaxItems) } -> {"HostedZones" :: (HostedZones) , "Marker" :: (PageMarker) , "IsTruncated" :: (PageTruncated) , "NextMarker" :: Maybe (PageMarker) , "MaxItems" :: (PageMaxItems) } ) -> ListHostedZonesResponse
newListHostedZonesResponse' _HostedZones _IsTruncated _Marker _MaxItems customize = (ListHostedZonesResponse <<< customize) { "HostedZones": _HostedZones, "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "NextMarker": Nothing }



newtype ListQueryLoggingConfigsRequest = ListQueryLoggingConfigsRequest 
  { "HostedZoneId" :: Maybe (ResourceId)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListQueryLoggingConfigsRequest :: Newtype ListQueryLoggingConfigsRequest _
derive instance repGenericListQueryLoggingConfigsRequest :: Generic ListQueryLoggingConfigsRequest _
instance showListQueryLoggingConfigsRequest :: Show ListQueryLoggingConfigsRequest where show = genericShow
instance decodeListQueryLoggingConfigsRequest :: Decode ListQueryLoggingConfigsRequest where decode = genericDecode options
instance encodeListQueryLoggingConfigsRequest :: Encode ListQueryLoggingConfigsRequest where encode = genericEncode options

-- | Constructs ListQueryLoggingConfigsRequest from required parameters
newListQueryLoggingConfigsRequest :: ListQueryLoggingConfigsRequest
newListQueryLoggingConfigsRequest  = ListQueryLoggingConfigsRequest { "HostedZoneId": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListQueryLoggingConfigsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueryLoggingConfigsRequest' :: ( { "HostedZoneId" :: Maybe (ResourceId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (MaxResults) } -> {"HostedZoneId" :: Maybe (ResourceId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListQueryLoggingConfigsRequest
newListQueryLoggingConfigsRequest'  customize = (ListQueryLoggingConfigsRequest <<< customize) { "HostedZoneId": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListQueryLoggingConfigsResponse = ListQueryLoggingConfigsResponse 
  { "QueryLoggingConfigs" :: (QueryLoggingConfigs)
  , "NextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListQueryLoggingConfigsResponse :: Newtype ListQueryLoggingConfigsResponse _
derive instance repGenericListQueryLoggingConfigsResponse :: Generic ListQueryLoggingConfigsResponse _
instance showListQueryLoggingConfigsResponse :: Show ListQueryLoggingConfigsResponse where show = genericShow
instance decodeListQueryLoggingConfigsResponse :: Decode ListQueryLoggingConfigsResponse where decode = genericDecode options
instance encodeListQueryLoggingConfigsResponse :: Encode ListQueryLoggingConfigsResponse where encode = genericEncode options

-- | Constructs ListQueryLoggingConfigsResponse from required parameters
newListQueryLoggingConfigsResponse :: QueryLoggingConfigs -> ListQueryLoggingConfigsResponse
newListQueryLoggingConfigsResponse _QueryLoggingConfigs = ListQueryLoggingConfigsResponse { "QueryLoggingConfigs": _QueryLoggingConfigs, "NextToken": Nothing }

-- | Constructs ListQueryLoggingConfigsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueryLoggingConfigsResponse' :: QueryLoggingConfigs -> ( { "QueryLoggingConfigs" :: (QueryLoggingConfigs) , "NextToken" :: Maybe (PaginationToken) } -> {"QueryLoggingConfigs" :: (QueryLoggingConfigs) , "NextToken" :: Maybe (PaginationToken) } ) -> ListQueryLoggingConfigsResponse
newListQueryLoggingConfigsResponse' _QueryLoggingConfigs customize = (ListQueryLoggingConfigsResponse <<< customize) { "QueryLoggingConfigs": _QueryLoggingConfigs, "NextToken": Nothing }



-- | <p>A request for the resource record sets that are associated with a specified hosted zone.</p>
newtype ListResourceRecordSetsRequest = ListResourceRecordSetsRequest 
  { "HostedZoneId" :: (ResourceId)
  , "StartRecordName" :: Maybe (DNSName)
  , "StartRecordType" :: Maybe (RRType)
  , "StartRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListResourceRecordSetsRequest :: Newtype ListResourceRecordSetsRequest _
derive instance repGenericListResourceRecordSetsRequest :: Generic ListResourceRecordSetsRequest _
instance showListResourceRecordSetsRequest :: Show ListResourceRecordSetsRequest where show = genericShow
instance decodeListResourceRecordSetsRequest :: Decode ListResourceRecordSetsRequest where decode = genericDecode options
instance encodeListResourceRecordSetsRequest :: Encode ListResourceRecordSetsRequest where encode = genericEncode options

-- | Constructs ListResourceRecordSetsRequest from required parameters
newListResourceRecordSetsRequest :: ResourceId -> ListResourceRecordSetsRequest
newListResourceRecordSetsRequest _HostedZoneId = ListResourceRecordSetsRequest { "HostedZoneId": _HostedZoneId, "MaxItems": Nothing, "StartRecordIdentifier": Nothing, "StartRecordName": Nothing, "StartRecordType": Nothing }

-- | Constructs ListResourceRecordSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceRecordSetsRequest' :: ResourceId -> ( { "HostedZoneId" :: (ResourceId) , "StartRecordName" :: Maybe (DNSName) , "StartRecordType" :: Maybe (RRType) , "StartRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier) , "MaxItems" :: Maybe (PageMaxItems) } -> {"HostedZoneId" :: (ResourceId) , "StartRecordName" :: Maybe (DNSName) , "StartRecordType" :: Maybe (RRType) , "StartRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListResourceRecordSetsRequest
newListResourceRecordSetsRequest' _HostedZoneId customize = (ListResourceRecordSetsRequest <<< customize) { "HostedZoneId": _HostedZoneId, "MaxItems": Nothing, "StartRecordIdentifier": Nothing, "StartRecordName": Nothing, "StartRecordType": Nothing }



-- | <p>A complex type that contains list information for the resource record set.</p>
newtype ListResourceRecordSetsResponse = ListResourceRecordSetsResponse 
  { "ResourceRecordSets" :: (ResourceRecordSets)
  , "IsTruncated" :: (PageTruncated)
  , "NextRecordName" :: Maybe (DNSName)
  , "NextRecordType" :: Maybe (RRType)
  , "NextRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListResourceRecordSetsResponse :: Newtype ListResourceRecordSetsResponse _
derive instance repGenericListResourceRecordSetsResponse :: Generic ListResourceRecordSetsResponse _
instance showListResourceRecordSetsResponse :: Show ListResourceRecordSetsResponse where show = genericShow
instance decodeListResourceRecordSetsResponse :: Decode ListResourceRecordSetsResponse where decode = genericDecode options
instance encodeListResourceRecordSetsResponse :: Encode ListResourceRecordSetsResponse where encode = genericEncode options

-- | Constructs ListResourceRecordSetsResponse from required parameters
newListResourceRecordSetsResponse :: PageTruncated -> PageMaxItems -> ResourceRecordSets -> ListResourceRecordSetsResponse
newListResourceRecordSetsResponse _IsTruncated _MaxItems _ResourceRecordSets = ListResourceRecordSetsResponse { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "ResourceRecordSets": _ResourceRecordSets, "NextRecordIdentifier": Nothing, "NextRecordName": Nothing, "NextRecordType": Nothing }

-- | Constructs ListResourceRecordSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceRecordSetsResponse' :: PageTruncated -> PageMaxItems -> ResourceRecordSets -> ( { "ResourceRecordSets" :: (ResourceRecordSets) , "IsTruncated" :: (PageTruncated) , "NextRecordName" :: Maybe (DNSName) , "NextRecordType" :: Maybe (RRType) , "NextRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier) , "MaxItems" :: (PageMaxItems) } -> {"ResourceRecordSets" :: (ResourceRecordSets) , "IsTruncated" :: (PageTruncated) , "NextRecordName" :: Maybe (DNSName) , "NextRecordType" :: Maybe (RRType) , "NextRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier) , "MaxItems" :: (PageMaxItems) } ) -> ListResourceRecordSetsResponse
newListResourceRecordSetsResponse' _IsTruncated _MaxItems _ResourceRecordSets customize = (ListResourceRecordSetsResponse <<< customize) { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "ResourceRecordSets": _ResourceRecordSets, "NextRecordIdentifier": Nothing, "NextRecordName": Nothing, "NextRecordType": Nothing }



-- | <p>A request to get a list of the reusable delegation sets that are associated with the current AWS account.</p>
newtype ListReusableDelegationSetsRequest = ListReusableDelegationSetsRequest 
  { "Marker" :: Maybe (PageMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListReusableDelegationSetsRequest :: Newtype ListReusableDelegationSetsRequest _
derive instance repGenericListReusableDelegationSetsRequest :: Generic ListReusableDelegationSetsRequest _
instance showListReusableDelegationSetsRequest :: Show ListReusableDelegationSetsRequest where show = genericShow
instance decodeListReusableDelegationSetsRequest :: Decode ListReusableDelegationSetsRequest where decode = genericDecode options
instance encodeListReusableDelegationSetsRequest :: Encode ListReusableDelegationSetsRequest where encode = genericEncode options

-- | Constructs ListReusableDelegationSetsRequest from required parameters
newListReusableDelegationSetsRequest :: ListReusableDelegationSetsRequest
newListReusableDelegationSetsRequest  = ListReusableDelegationSetsRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListReusableDelegationSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReusableDelegationSetsRequest' :: ( { "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } -> {"Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListReusableDelegationSetsRequest
newListReusableDelegationSetsRequest'  customize = (ListReusableDelegationSetsRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>A complex type that contains information about the reusable delegation sets that are associated with the current AWS account.</p>
newtype ListReusableDelegationSetsResponse = ListReusableDelegationSetsResponse 
  { "DelegationSets" :: (DelegationSets)
  , "Marker" :: (PageMarker)
  , "IsTruncated" :: (PageTruncated)
  , "NextMarker" :: Maybe (PageMarker)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListReusableDelegationSetsResponse :: Newtype ListReusableDelegationSetsResponse _
derive instance repGenericListReusableDelegationSetsResponse :: Generic ListReusableDelegationSetsResponse _
instance showListReusableDelegationSetsResponse :: Show ListReusableDelegationSetsResponse where show = genericShow
instance decodeListReusableDelegationSetsResponse :: Decode ListReusableDelegationSetsResponse where decode = genericDecode options
instance encodeListReusableDelegationSetsResponse :: Encode ListReusableDelegationSetsResponse where encode = genericEncode options

-- | Constructs ListReusableDelegationSetsResponse from required parameters
newListReusableDelegationSetsResponse :: DelegationSets -> PageTruncated -> PageMarker -> PageMaxItems -> ListReusableDelegationSetsResponse
newListReusableDelegationSetsResponse _DelegationSets _IsTruncated _Marker _MaxItems = ListReusableDelegationSetsResponse { "DelegationSets": _DelegationSets, "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "NextMarker": Nothing }

-- | Constructs ListReusableDelegationSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListReusableDelegationSetsResponse' :: DelegationSets -> PageTruncated -> PageMarker -> PageMaxItems -> ( { "DelegationSets" :: (DelegationSets) , "Marker" :: (PageMarker) , "IsTruncated" :: (PageTruncated) , "NextMarker" :: Maybe (PageMarker) , "MaxItems" :: (PageMaxItems) } -> {"DelegationSets" :: (DelegationSets) , "Marker" :: (PageMarker) , "IsTruncated" :: (PageTruncated) , "NextMarker" :: Maybe (PageMarker) , "MaxItems" :: (PageMaxItems) } ) -> ListReusableDelegationSetsResponse
newListReusableDelegationSetsResponse' _DelegationSets _IsTruncated _Marker _MaxItems customize = (ListReusableDelegationSetsResponse <<< customize) { "DelegationSets": _DelegationSets, "IsTruncated": _IsTruncated, "Marker": _Marker, "MaxItems": _MaxItems, "NextMarker": Nothing }



-- | <p>A complex type containing information about a request for a list of the tags that are associated with an individual resource.</p>
newtype ListTagsForResourceRequest = ListTagsForResourceRequest 
  { "ResourceType" :: (TagResourceType)
  , "ResourceId" :: (TagResourceId)
  }
derive instance newtypeListTagsForResourceRequest :: Newtype ListTagsForResourceRequest _
derive instance repGenericListTagsForResourceRequest :: Generic ListTagsForResourceRequest _
instance showListTagsForResourceRequest :: Show ListTagsForResourceRequest where show = genericShow
instance decodeListTagsForResourceRequest :: Decode ListTagsForResourceRequest where decode = genericDecode options
instance encodeListTagsForResourceRequest :: Encode ListTagsForResourceRequest where encode = genericEncode options

-- | Constructs ListTagsForResourceRequest from required parameters
newListTagsForResourceRequest :: TagResourceId -> TagResourceType -> ListTagsForResourceRequest
newListTagsForResourceRequest _ResourceId _ResourceType = ListTagsForResourceRequest { "ResourceId": _ResourceId, "ResourceType": _ResourceType }

-- | Constructs ListTagsForResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceRequest' :: TagResourceId -> TagResourceType -> ( { "ResourceType" :: (TagResourceType) , "ResourceId" :: (TagResourceId) } -> {"ResourceType" :: (TagResourceType) , "ResourceId" :: (TagResourceId) } ) -> ListTagsForResourceRequest
newListTagsForResourceRequest' _ResourceId _ResourceType customize = (ListTagsForResourceRequest <<< customize) { "ResourceId": _ResourceId, "ResourceType": _ResourceType }



-- | <p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>
newtype ListTagsForResourceResponse = ListTagsForResourceResponse 
  { "ResourceTagSet" :: (ResourceTagSet)
  }
derive instance newtypeListTagsForResourceResponse :: Newtype ListTagsForResourceResponse _
derive instance repGenericListTagsForResourceResponse :: Generic ListTagsForResourceResponse _
instance showListTagsForResourceResponse :: Show ListTagsForResourceResponse where show = genericShow
instance decodeListTagsForResourceResponse :: Decode ListTagsForResourceResponse where decode = genericDecode options
instance encodeListTagsForResourceResponse :: Encode ListTagsForResourceResponse where encode = genericEncode options

-- | Constructs ListTagsForResourceResponse from required parameters
newListTagsForResourceResponse :: ResourceTagSet -> ListTagsForResourceResponse
newListTagsForResourceResponse _ResourceTagSet = ListTagsForResourceResponse { "ResourceTagSet": _ResourceTagSet }

-- | Constructs ListTagsForResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceResponse' :: ResourceTagSet -> ( { "ResourceTagSet" :: (ResourceTagSet) } -> {"ResourceTagSet" :: (ResourceTagSet) } ) -> ListTagsForResourceResponse
newListTagsForResourceResponse' _ResourceTagSet customize = (ListTagsForResourceResponse <<< customize) { "ResourceTagSet": _ResourceTagSet }



-- | <p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>
newtype ListTagsForResourcesRequest = ListTagsForResourcesRequest 
  { "ResourceType" :: (TagResourceType)
  , "ResourceIds" :: (TagResourceIdList)
  }
derive instance newtypeListTagsForResourcesRequest :: Newtype ListTagsForResourcesRequest _
derive instance repGenericListTagsForResourcesRequest :: Generic ListTagsForResourcesRequest _
instance showListTagsForResourcesRequest :: Show ListTagsForResourcesRequest where show = genericShow
instance decodeListTagsForResourcesRequest :: Decode ListTagsForResourcesRequest where decode = genericDecode options
instance encodeListTagsForResourcesRequest :: Encode ListTagsForResourcesRequest where encode = genericEncode options

-- | Constructs ListTagsForResourcesRequest from required parameters
newListTagsForResourcesRequest :: TagResourceIdList -> TagResourceType -> ListTagsForResourcesRequest
newListTagsForResourcesRequest _ResourceIds _ResourceType = ListTagsForResourcesRequest { "ResourceIds": _ResourceIds, "ResourceType": _ResourceType }

-- | Constructs ListTagsForResourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourcesRequest' :: TagResourceIdList -> TagResourceType -> ( { "ResourceType" :: (TagResourceType) , "ResourceIds" :: (TagResourceIdList) } -> {"ResourceType" :: (TagResourceType) , "ResourceIds" :: (TagResourceIdList) } ) -> ListTagsForResourcesRequest
newListTagsForResourcesRequest' _ResourceIds _ResourceType customize = (ListTagsForResourcesRequest <<< customize) { "ResourceIds": _ResourceIds, "ResourceType": _ResourceType }



-- | <p>A complex type containing tags for the specified resources.</p>
newtype ListTagsForResourcesResponse = ListTagsForResourcesResponse 
  { "ResourceTagSets" :: (ResourceTagSetList)
  }
derive instance newtypeListTagsForResourcesResponse :: Newtype ListTagsForResourcesResponse _
derive instance repGenericListTagsForResourcesResponse :: Generic ListTagsForResourcesResponse _
instance showListTagsForResourcesResponse :: Show ListTagsForResourcesResponse where show = genericShow
instance decodeListTagsForResourcesResponse :: Decode ListTagsForResourcesResponse where decode = genericDecode options
instance encodeListTagsForResourcesResponse :: Encode ListTagsForResourcesResponse where encode = genericEncode options

-- | Constructs ListTagsForResourcesResponse from required parameters
newListTagsForResourcesResponse :: ResourceTagSetList -> ListTagsForResourcesResponse
newListTagsForResourcesResponse _ResourceTagSets = ListTagsForResourcesResponse { "ResourceTagSets": _ResourceTagSets }

-- | Constructs ListTagsForResourcesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourcesResponse' :: ResourceTagSetList -> ( { "ResourceTagSets" :: (ResourceTagSetList) } -> {"ResourceTagSets" :: (ResourceTagSetList) } ) -> ListTagsForResourcesResponse
newListTagsForResourcesResponse' _ResourceTagSets customize = (ListTagsForResourcesResponse <<< customize) { "ResourceTagSets": _ResourceTagSets }



-- | <p>A complex type that contains the information about the request to list the traffic policies that are associated with the current AWS account.</p>
newtype ListTrafficPoliciesRequest = ListTrafficPoliciesRequest 
  { "TrafficPolicyIdMarker" :: Maybe (TrafficPolicyId)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListTrafficPoliciesRequest :: Newtype ListTrafficPoliciesRequest _
derive instance repGenericListTrafficPoliciesRequest :: Generic ListTrafficPoliciesRequest _
instance showListTrafficPoliciesRequest :: Show ListTrafficPoliciesRequest where show = genericShow
instance decodeListTrafficPoliciesRequest :: Decode ListTrafficPoliciesRequest where decode = genericDecode options
instance encodeListTrafficPoliciesRequest :: Encode ListTrafficPoliciesRequest where encode = genericEncode options

-- | Constructs ListTrafficPoliciesRequest from required parameters
newListTrafficPoliciesRequest :: ListTrafficPoliciesRequest
newListTrafficPoliciesRequest  = ListTrafficPoliciesRequest { "MaxItems": Nothing, "TrafficPolicyIdMarker": Nothing }

-- | Constructs ListTrafficPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPoliciesRequest' :: ( { "TrafficPolicyIdMarker" :: Maybe (TrafficPolicyId) , "MaxItems" :: Maybe (PageMaxItems) } -> {"TrafficPolicyIdMarker" :: Maybe (TrafficPolicyId) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListTrafficPoliciesRequest
newListTrafficPoliciesRequest'  customize = (ListTrafficPoliciesRequest <<< customize) { "MaxItems": Nothing, "TrafficPolicyIdMarker": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListTrafficPoliciesResponse = ListTrafficPoliciesResponse 
  { "TrafficPolicySummaries" :: (TrafficPolicySummaries)
  , "IsTruncated" :: (PageTruncated)
  , "TrafficPolicyIdMarker" :: (TrafficPolicyId)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListTrafficPoliciesResponse :: Newtype ListTrafficPoliciesResponse _
derive instance repGenericListTrafficPoliciesResponse :: Generic ListTrafficPoliciesResponse _
instance showListTrafficPoliciesResponse :: Show ListTrafficPoliciesResponse where show = genericShow
instance decodeListTrafficPoliciesResponse :: Decode ListTrafficPoliciesResponse where decode = genericDecode options
instance encodeListTrafficPoliciesResponse :: Encode ListTrafficPoliciesResponse where encode = genericEncode options

-- | Constructs ListTrafficPoliciesResponse from required parameters
newListTrafficPoliciesResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyId -> TrafficPolicySummaries -> ListTrafficPoliciesResponse
newListTrafficPoliciesResponse _IsTruncated _MaxItems _TrafficPolicyIdMarker _TrafficPolicySummaries = ListTrafficPoliciesResponse { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyIdMarker": _TrafficPolicyIdMarker, "TrafficPolicySummaries": _TrafficPolicySummaries }

-- | Constructs ListTrafficPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPoliciesResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyId -> TrafficPolicySummaries -> ( { "TrafficPolicySummaries" :: (TrafficPolicySummaries) , "IsTruncated" :: (PageTruncated) , "TrafficPolicyIdMarker" :: (TrafficPolicyId) , "MaxItems" :: (PageMaxItems) } -> {"TrafficPolicySummaries" :: (TrafficPolicySummaries) , "IsTruncated" :: (PageTruncated) , "TrafficPolicyIdMarker" :: (TrafficPolicyId) , "MaxItems" :: (PageMaxItems) } ) -> ListTrafficPoliciesResponse
newListTrafficPoliciesResponse' _IsTruncated _MaxItems _TrafficPolicyIdMarker _TrafficPolicySummaries customize = (ListTrafficPoliciesResponse <<< customize) { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyIdMarker": _TrafficPolicyIdMarker, "TrafficPolicySummaries": _TrafficPolicySummaries }



-- | <p>A request for the traffic policy instances that you created in a specified hosted zone.</p>
newtype ListTrafficPolicyInstancesByHostedZoneRequest = ListTrafficPolicyInstancesByHostedZoneRequest 
  { "HostedZoneId" :: (ResourceId)
  , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName)
  , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyInstancesByHostedZoneRequest :: Newtype ListTrafficPolicyInstancesByHostedZoneRequest _
derive instance repGenericListTrafficPolicyInstancesByHostedZoneRequest :: Generic ListTrafficPolicyInstancesByHostedZoneRequest _
instance showListTrafficPolicyInstancesByHostedZoneRequest :: Show ListTrafficPolicyInstancesByHostedZoneRequest where show = genericShow
instance decodeListTrafficPolicyInstancesByHostedZoneRequest :: Decode ListTrafficPolicyInstancesByHostedZoneRequest where decode = genericDecode options
instance encodeListTrafficPolicyInstancesByHostedZoneRequest :: Encode ListTrafficPolicyInstancesByHostedZoneRequest where encode = genericEncode options

-- | Constructs ListTrafficPolicyInstancesByHostedZoneRequest from required parameters
newListTrafficPolicyInstancesByHostedZoneRequest :: ResourceId -> ListTrafficPolicyInstancesByHostedZoneRequest
newListTrafficPolicyInstancesByHostedZoneRequest _HostedZoneId = ListTrafficPolicyInstancesByHostedZoneRequest { "HostedZoneId": _HostedZoneId, "MaxItems": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }

-- | Constructs ListTrafficPolicyInstancesByHostedZoneRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyInstancesByHostedZoneRequest' :: ResourceId -> ( { "HostedZoneId" :: (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "MaxItems" :: Maybe (PageMaxItems) } -> {"HostedZoneId" :: (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListTrafficPolicyInstancesByHostedZoneRequest
newListTrafficPolicyInstancesByHostedZoneRequest' _HostedZoneId customize = (ListTrafficPolicyInstancesByHostedZoneRequest <<< customize) { "HostedZoneId": _HostedZoneId, "MaxItems": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListTrafficPolicyInstancesByHostedZoneResponse = ListTrafficPolicyInstancesByHostedZoneResponse 
  { "TrafficPolicyInstances" :: (TrafficPolicyInstances)
  , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName)
  , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType)
  , "IsTruncated" :: (PageTruncated)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyInstancesByHostedZoneResponse :: Newtype ListTrafficPolicyInstancesByHostedZoneResponse _
derive instance repGenericListTrafficPolicyInstancesByHostedZoneResponse :: Generic ListTrafficPolicyInstancesByHostedZoneResponse _
instance showListTrafficPolicyInstancesByHostedZoneResponse :: Show ListTrafficPolicyInstancesByHostedZoneResponse where show = genericShow
instance decodeListTrafficPolicyInstancesByHostedZoneResponse :: Decode ListTrafficPolicyInstancesByHostedZoneResponse where decode = genericDecode options
instance encodeListTrafficPolicyInstancesByHostedZoneResponse :: Encode ListTrafficPolicyInstancesByHostedZoneResponse where encode = genericEncode options

-- | Constructs ListTrafficPolicyInstancesByHostedZoneResponse from required parameters
newListTrafficPolicyInstancesByHostedZoneResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ListTrafficPolicyInstancesByHostedZoneResponse
newListTrafficPolicyInstancesByHostedZoneResponse _IsTruncated _MaxItems _TrafficPolicyInstances = ListTrafficPolicyInstancesByHostedZoneResponse { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyInstances": _TrafficPolicyInstances, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }

-- | Constructs ListTrafficPolicyInstancesByHostedZoneResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyInstancesByHostedZoneResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ( { "TrafficPolicyInstances" :: (TrafficPolicyInstances) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "IsTruncated" :: (PageTruncated) , "MaxItems" :: (PageMaxItems) } -> {"TrafficPolicyInstances" :: (TrafficPolicyInstances) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "IsTruncated" :: (PageTruncated) , "MaxItems" :: (PageMaxItems) } ) -> ListTrafficPolicyInstancesByHostedZoneResponse
newListTrafficPolicyInstancesByHostedZoneResponse' _IsTruncated _MaxItems _TrafficPolicyInstances customize = (ListTrafficPolicyInstancesByHostedZoneResponse <<< customize) { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyInstances": _TrafficPolicyInstances, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }



-- | <p>A complex type that contains the information about the request to list your traffic policy instances.</p>
newtype ListTrafficPolicyInstancesByPolicyRequest = ListTrafficPolicyInstancesByPolicyRequest 
  { "TrafficPolicyId" :: (TrafficPolicyId)
  , "TrafficPolicyVersion" :: (TrafficPolicyVersion)
  , "HostedZoneIdMarker" :: Maybe (ResourceId)
  , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName)
  , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyInstancesByPolicyRequest :: Newtype ListTrafficPolicyInstancesByPolicyRequest _
derive instance repGenericListTrafficPolicyInstancesByPolicyRequest :: Generic ListTrafficPolicyInstancesByPolicyRequest _
instance showListTrafficPolicyInstancesByPolicyRequest :: Show ListTrafficPolicyInstancesByPolicyRequest where show = genericShow
instance decodeListTrafficPolicyInstancesByPolicyRequest :: Decode ListTrafficPolicyInstancesByPolicyRequest where decode = genericDecode options
instance encodeListTrafficPolicyInstancesByPolicyRequest :: Encode ListTrafficPolicyInstancesByPolicyRequest where encode = genericEncode options

-- | Constructs ListTrafficPolicyInstancesByPolicyRequest from required parameters
newListTrafficPolicyInstancesByPolicyRequest :: TrafficPolicyId -> TrafficPolicyVersion -> ListTrafficPolicyInstancesByPolicyRequest
newListTrafficPolicyInstancesByPolicyRequest _TrafficPolicyId _TrafficPolicyVersion = ListTrafficPolicyInstancesByPolicyRequest { "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyVersion": _TrafficPolicyVersion, "HostedZoneIdMarker": Nothing, "MaxItems": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }

-- | Constructs ListTrafficPolicyInstancesByPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyInstancesByPolicyRequest' :: TrafficPolicyId -> TrafficPolicyVersion -> ( { "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) , "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "MaxItems" :: Maybe (PageMaxItems) } -> {"TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) , "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListTrafficPolicyInstancesByPolicyRequest
newListTrafficPolicyInstancesByPolicyRequest' _TrafficPolicyId _TrafficPolicyVersion customize = (ListTrafficPolicyInstancesByPolicyRequest <<< customize) { "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyVersion": _TrafficPolicyVersion, "HostedZoneIdMarker": Nothing, "MaxItems": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListTrafficPolicyInstancesByPolicyResponse = ListTrafficPolicyInstancesByPolicyResponse 
  { "TrafficPolicyInstances" :: (TrafficPolicyInstances)
  , "HostedZoneIdMarker" :: Maybe (ResourceId)
  , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName)
  , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType)
  , "IsTruncated" :: (PageTruncated)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyInstancesByPolicyResponse :: Newtype ListTrafficPolicyInstancesByPolicyResponse _
derive instance repGenericListTrafficPolicyInstancesByPolicyResponse :: Generic ListTrafficPolicyInstancesByPolicyResponse _
instance showListTrafficPolicyInstancesByPolicyResponse :: Show ListTrafficPolicyInstancesByPolicyResponse where show = genericShow
instance decodeListTrafficPolicyInstancesByPolicyResponse :: Decode ListTrafficPolicyInstancesByPolicyResponse where decode = genericDecode options
instance encodeListTrafficPolicyInstancesByPolicyResponse :: Encode ListTrafficPolicyInstancesByPolicyResponse where encode = genericEncode options

-- | Constructs ListTrafficPolicyInstancesByPolicyResponse from required parameters
newListTrafficPolicyInstancesByPolicyResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ListTrafficPolicyInstancesByPolicyResponse
newListTrafficPolicyInstancesByPolicyResponse _IsTruncated _MaxItems _TrafficPolicyInstances = ListTrafficPolicyInstancesByPolicyResponse { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyInstances": _TrafficPolicyInstances, "HostedZoneIdMarker": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }

-- | Constructs ListTrafficPolicyInstancesByPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyInstancesByPolicyResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ( { "TrafficPolicyInstances" :: (TrafficPolicyInstances) , "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "IsTruncated" :: (PageTruncated) , "MaxItems" :: (PageMaxItems) } -> {"TrafficPolicyInstances" :: (TrafficPolicyInstances) , "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "IsTruncated" :: (PageTruncated) , "MaxItems" :: (PageMaxItems) } ) -> ListTrafficPolicyInstancesByPolicyResponse
newListTrafficPolicyInstancesByPolicyResponse' _IsTruncated _MaxItems _TrafficPolicyInstances customize = (ListTrafficPolicyInstancesByPolicyResponse <<< customize) { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyInstances": _TrafficPolicyInstances, "HostedZoneIdMarker": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }



-- | <p>A request to get information about the traffic policy instances that you created by using the current AWS account.</p>
newtype ListTrafficPolicyInstancesRequest = ListTrafficPolicyInstancesRequest 
  { "HostedZoneIdMarker" :: Maybe (ResourceId)
  , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName)
  , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyInstancesRequest :: Newtype ListTrafficPolicyInstancesRequest _
derive instance repGenericListTrafficPolicyInstancesRequest :: Generic ListTrafficPolicyInstancesRequest _
instance showListTrafficPolicyInstancesRequest :: Show ListTrafficPolicyInstancesRequest where show = genericShow
instance decodeListTrafficPolicyInstancesRequest :: Decode ListTrafficPolicyInstancesRequest where decode = genericDecode options
instance encodeListTrafficPolicyInstancesRequest :: Encode ListTrafficPolicyInstancesRequest where encode = genericEncode options

-- | Constructs ListTrafficPolicyInstancesRequest from required parameters
newListTrafficPolicyInstancesRequest :: ListTrafficPolicyInstancesRequest
newListTrafficPolicyInstancesRequest  = ListTrafficPolicyInstancesRequest { "HostedZoneIdMarker": Nothing, "MaxItems": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }

-- | Constructs ListTrafficPolicyInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyInstancesRequest' :: ( { "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "MaxItems" :: Maybe (PageMaxItems) } -> {"HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListTrafficPolicyInstancesRequest
newListTrafficPolicyInstancesRequest'  customize = (ListTrafficPolicyInstancesRequest <<< customize) { "HostedZoneIdMarker": Nothing, "MaxItems": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListTrafficPolicyInstancesResponse = ListTrafficPolicyInstancesResponse 
  { "TrafficPolicyInstances" :: (TrafficPolicyInstances)
  , "HostedZoneIdMarker" :: Maybe (ResourceId)
  , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName)
  , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType)
  , "IsTruncated" :: (PageTruncated)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyInstancesResponse :: Newtype ListTrafficPolicyInstancesResponse _
derive instance repGenericListTrafficPolicyInstancesResponse :: Generic ListTrafficPolicyInstancesResponse _
instance showListTrafficPolicyInstancesResponse :: Show ListTrafficPolicyInstancesResponse where show = genericShow
instance decodeListTrafficPolicyInstancesResponse :: Decode ListTrafficPolicyInstancesResponse where decode = genericDecode options
instance encodeListTrafficPolicyInstancesResponse :: Encode ListTrafficPolicyInstancesResponse where encode = genericEncode options

-- | Constructs ListTrafficPolicyInstancesResponse from required parameters
newListTrafficPolicyInstancesResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ListTrafficPolicyInstancesResponse
newListTrafficPolicyInstancesResponse _IsTruncated _MaxItems _TrafficPolicyInstances = ListTrafficPolicyInstancesResponse { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyInstances": _TrafficPolicyInstances, "HostedZoneIdMarker": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }

-- | Constructs ListTrafficPolicyInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyInstancesResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ( { "TrafficPolicyInstances" :: (TrafficPolicyInstances) , "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "IsTruncated" :: (PageTruncated) , "MaxItems" :: (PageMaxItems) } -> {"TrafficPolicyInstances" :: (TrafficPolicyInstances) , "HostedZoneIdMarker" :: Maybe (ResourceId) , "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName) , "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType) , "IsTruncated" :: (PageTruncated) , "MaxItems" :: (PageMaxItems) } ) -> ListTrafficPolicyInstancesResponse
newListTrafficPolicyInstancesResponse' _IsTruncated _MaxItems _TrafficPolicyInstances customize = (ListTrafficPolicyInstancesResponse <<< customize) { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicyInstances": _TrafficPolicyInstances, "HostedZoneIdMarker": Nothing, "TrafficPolicyInstanceNameMarker": Nothing, "TrafficPolicyInstanceTypeMarker": Nothing }



-- | <p>A complex type that contains the information about the request to list your traffic policies.</p>
newtype ListTrafficPolicyVersionsRequest = ListTrafficPolicyVersionsRequest 
  { "Id" :: (TrafficPolicyId)
  , "TrafficPolicyVersionMarker" :: Maybe (TrafficPolicyVersionMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyVersionsRequest :: Newtype ListTrafficPolicyVersionsRequest _
derive instance repGenericListTrafficPolicyVersionsRequest :: Generic ListTrafficPolicyVersionsRequest _
instance showListTrafficPolicyVersionsRequest :: Show ListTrafficPolicyVersionsRequest where show = genericShow
instance decodeListTrafficPolicyVersionsRequest :: Decode ListTrafficPolicyVersionsRequest where decode = genericDecode options
instance encodeListTrafficPolicyVersionsRequest :: Encode ListTrafficPolicyVersionsRequest where encode = genericEncode options

-- | Constructs ListTrafficPolicyVersionsRequest from required parameters
newListTrafficPolicyVersionsRequest :: TrafficPolicyId -> ListTrafficPolicyVersionsRequest
newListTrafficPolicyVersionsRequest _Id = ListTrafficPolicyVersionsRequest { "Id": _Id, "MaxItems": Nothing, "TrafficPolicyVersionMarker": Nothing }

-- | Constructs ListTrafficPolicyVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyVersionsRequest' :: TrafficPolicyId -> ( { "Id" :: (TrafficPolicyId) , "TrafficPolicyVersionMarker" :: Maybe (TrafficPolicyVersionMarker) , "MaxItems" :: Maybe (PageMaxItems) } -> {"Id" :: (TrafficPolicyId) , "TrafficPolicyVersionMarker" :: Maybe (TrafficPolicyVersionMarker) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListTrafficPolicyVersionsRequest
newListTrafficPolicyVersionsRequest' _Id customize = (ListTrafficPolicyVersionsRequest <<< customize) { "Id": _Id, "MaxItems": Nothing, "TrafficPolicyVersionMarker": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListTrafficPolicyVersionsResponse = ListTrafficPolicyVersionsResponse 
  { "TrafficPolicies" :: (TrafficPolicies)
  , "IsTruncated" :: (PageTruncated)
  , "TrafficPolicyVersionMarker" :: (TrafficPolicyVersionMarker)
  , "MaxItems" :: (PageMaxItems)
  }
derive instance newtypeListTrafficPolicyVersionsResponse :: Newtype ListTrafficPolicyVersionsResponse _
derive instance repGenericListTrafficPolicyVersionsResponse :: Generic ListTrafficPolicyVersionsResponse _
instance showListTrafficPolicyVersionsResponse :: Show ListTrafficPolicyVersionsResponse where show = genericShow
instance decodeListTrafficPolicyVersionsResponse :: Decode ListTrafficPolicyVersionsResponse where decode = genericDecode options
instance encodeListTrafficPolicyVersionsResponse :: Encode ListTrafficPolicyVersionsResponse where encode = genericEncode options

-- | Constructs ListTrafficPolicyVersionsResponse from required parameters
newListTrafficPolicyVersionsResponse :: PageTruncated -> PageMaxItems -> TrafficPolicies -> TrafficPolicyVersionMarker -> ListTrafficPolicyVersionsResponse
newListTrafficPolicyVersionsResponse _IsTruncated _MaxItems _TrafficPolicies _TrafficPolicyVersionMarker = ListTrafficPolicyVersionsResponse { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicies": _TrafficPolicies, "TrafficPolicyVersionMarker": _TrafficPolicyVersionMarker }

-- | Constructs ListTrafficPolicyVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTrafficPolicyVersionsResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicies -> TrafficPolicyVersionMarker -> ( { "TrafficPolicies" :: (TrafficPolicies) , "IsTruncated" :: (PageTruncated) , "TrafficPolicyVersionMarker" :: (TrafficPolicyVersionMarker) , "MaxItems" :: (PageMaxItems) } -> {"TrafficPolicies" :: (TrafficPolicies) , "IsTruncated" :: (PageTruncated) , "TrafficPolicyVersionMarker" :: (TrafficPolicyVersionMarker) , "MaxItems" :: (PageMaxItems) } ) -> ListTrafficPolicyVersionsResponse
newListTrafficPolicyVersionsResponse' _IsTruncated _MaxItems _TrafficPolicies _TrafficPolicyVersionMarker customize = (ListTrafficPolicyVersionsResponse <<< customize) { "IsTruncated": _IsTruncated, "MaxItems": _MaxItems, "TrafficPolicies": _TrafficPolicies, "TrafficPolicyVersionMarker": _TrafficPolicyVersionMarker }



-- | <p>A complex type that contains information about that can be associated with your hosted zone.</p>
newtype ListVPCAssociationAuthorizationsRequest = ListVPCAssociationAuthorizationsRequest 
  { "HostedZoneId" :: (ResourceId)
  , "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListVPCAssociationAuthorizationsRequest :: Newtype ListVPCAssociationAuthorizationsRequest _
derive instance repGenericListVPCAssociationAuthorizationsRequest :: Generic ListVPCAssociationAuthorizationsRequest _
instance showListVPCAssociationAuthorizationsRequest :: Show ListVPCAssociationAuthorizationsRequest where show = genericShow
instance decodeListVPCAssociationAuthorizationsRequest :: Decode ListVPCAssociationAuthorizationsRequest where decode = genericDecode options
instance encodeListVPCAssociationAuthorizationsRequest :: Encode ListVPCAssociationAuthorizationsRequest where encode = genericEncode options

-- | Constructs ListVPCAssociationAuthorizationsRequest from required parameters
newListVPCAssociationAuthorizationsRequest :: ResourceId -> ListVPCAssociationAuthorizationsRequest
newListVPCAssociationAuthorizationsRequest _HostedZoneId = ListVPCAssociationAuthorizationsRequest { "HostedZoneId": _HostedZoneId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListVPCAssociationAuthorizationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVPCAssociationAuthorizationsRequest' :: ResourceId -> ( { "HostedZoneId" :: (ResourceId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (MaxResults) } -> {"HostedZoneId" :: (ResourceId) , "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListVPCAssociationAuthorizationsRequest
newListVPCAssociationAuthorizationsRequest' _HostedZoneId customize = (ListVPCAssociationAuthorizationsRequest <<< customize) { "HostedZoneId": _HostedZoneId, "MaxResults": Nothing, "NextToken": Nothing }



-- | <p>A complex type that contains the response information for the request.</p>
newtype ListVPCAssociationAuthorizationsResponse = ListVPCAssociationAuthorizationsResponse 
  { "HostedZoneId" :: (ResourceId)
  , "NextToken" :: Maybe (PaginationToken)
  , "VPCs" :: (VPCs)
  }
derive instance newtypeListVPCAssociationAuthorizationsResponse :: Newtype ListVPCAssociationAuthorizationsResponse _
derive instance repGenericListVPCAssociationAuthorizationsResponse :: Generic ListVPCAssociationAuthorizationsResponse _
instance showListVPCAssociationAuthorizationsResponse :: Show ListVPCAssociationAuthorizationsResponse where show = genericShow
instance decodeListVPCAssociationAuthorizationsResponse :: Decode ListVPCAssociationAuthorizationsResponse where decode = genericDecode options
instance encodeListVPCAssociationAuthorizationsResponse :: Encode ListVPCAssociationAuthorizationsResponse where encode = genericEncode options

-- | Constructs ListVPCAssociationAuthorizationsResponse from required parameters
newListVPCAssociationAuthorizationsResponse :: ResourceId -> VPCs -> ListVPCAssociationAuthorizationsResponse
newListVPCAssociationAuthorizationsResponse _HostedZoneId _VPCs = ListVPCAssociationAuthorizationsResponse { "HostedZoneId": _HostedZoneId, "VPCs": _VPCs, "NextToken": Nothing }

-- | Constructs ListVPCAssociationAuthorizationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVPCAssociationAuthorizationsResponse' :: ResourceId -> VPCs -> ( { "HostedZoneId" :: (ResourceId) , "NextToken" :: Maybe (PaginationToken) , "VPCs" :: (VPCs) } -> {"HostedZoneId" :: (ResourceId) , "NextToken" :: Maybe (PaginationToken) , "VPCs" :: (VPCs) } ) -> ListVPCAssociationAuthorizationsResponse
newListVPCAssociationAuthorizationsResponse' _HostedZoneId _VPCs customize = (ListVPCAssociationAuthorizationsResponse <<< customize) { "HostedZoneId": _HostedZoneId, "VPCs": _VPCs, "NextToken": Nothing }



newtype MaxResults = MaxResults String
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MeasureLatency = MeasureLatency Boolean
derive instance newtypeMeasureLatency :: Newtype MeasureLatency _
derive instance repGenericMeasureLatency :: Generic MeasureLatency _
instance showMeasureLatency :: Show MeasureLatency where show = genericShow
instance decodeMeasureLatency :: Decode MeasureLatency where decode = genericDecode options
instance encodeMeasureLatency :: Encode MeasureLatency where encode = genericEncode options



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype Nameserver = Nameserver String
derive instance newtypeNameserver :: Newtype Nameserver _
derive instance repGenericNameserver :: Generic Nameserver _
instance showNameserver :: Show Nameserver where show = genericShow
instance decodeNameserver :: Decode Nameserver where decode = genericDecode options
instance encodeNameserver :: Encode Nameserver where encode = genericEncode options



newtype Namespace = Namespace String
derive instance newtypeNamespace :: Newtype Namespace _
derive instance repGenericNamespace :: Generic Namespace _
instance showNamespace :: Show Namespace where show = genericShow
instance decodeNamespace :: Decode Namespace where decode = genericDecode options
instance encodeNamespace :: Encode Namespace where encode = genericEncode options



-- | <p>A change with the specified change ID does not exist.</p>
newtype NoSuchChange = NoSuchChange 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchChange :: Newtype NoSuchChange _
derive instance repGenericNoSuchChange :: Generic NoSuchChange _
instance showNoSuchChange :: Show NoSuchChange where show = genericShow
instance decodeNoSuchChange :: Decode NoSuchChange where decode = genericDecode options
instance encodeNoSuchChange :: Encode NoSuchChange where encode = genericEncode options

-- | Constructs NoSuchChange from required parameters
newNoSuchChange :: NoSuchChange
newNoSuchChange  = NoSuchChange { "message": Nothing }

-- | Constructs NoSuchChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchChange' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchChange
newNoSuchChange'  customize = (NoSuchChange <<< customize) { "message": Nothing }



-- | <p>There is no CloudWatch Logs log group with the specified ARN.</p>
newtype NoSuchCloudWatchLogsLogGroup = NoSuchCloudWatchLogsLogGroup 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchCloudWatchLogsLogGroup :: Newtype NoSuchCloudWatchLogsLogGroup _
derive instance repGenericNoSuchCloudWatchLogsLogGroup :: Generic NoSuchCloudWatchLogsLogGroup _
instance showNoSuchCloudWatchLogsLogGroup :: Show NoSuchCloudWatchLogsLogGroup where show = genericShow
instance decodeNoSuchCloudWatchLogsLogGroup :: Decode NoSuchCloudWatchLogsLogGroup where decode = genericDecode options
instance encodeNoSuchCloudWatchLogsLogGroup :: Encode NoSuchCloudWatchLogsLogGroup where encode = genericEncode options

-- | Constructs NoSuchCloudWatchLogsLogGroup from required parameters
newNoSuchCloudWatchLogsLogGroup :: NoSuchCloudWatchLogsLogGroup
newNoSuchCloudWatchLogsLogGroup  = NoSuchCloudWatchLogsLogGroup { "message": Nothing }

-- | Constructs NoSuchCloudWatchLogsLogGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchCloudWatchLogsLogGroup' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchCloudWatchLogsLogGroup
newNoSuchCloudWatchLogsLogGroup'  customize = (NoSuchCloudWatchLogsLogGroup <<< customize) { "message": Nothing }



-- | <p>A reusable delegation set with the specified ID does not exist.</p>
newtype NoSuchDelegationSet = NoSuchDelegationSet 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchDelegationSet :: Newtype NoSuchDelegationSet _
derive instance repGenericNoSuchDelegationSet :: Generic NoSuchDelegationSet _
instance showNoSuchDelegationSet :: Show NoSuchDelegationSet where show = genericShow
instance decodeNoSuchDelegationSet :: Decode NoSuchDelegationSet where decode = genericDecode options
instance encodeNoSuchDelegationSet :: Encode NoSuchDelegationSet where encode = genericEncode options

-- | Constructs NoSuchDelegationSet from required parameters
newNoSuchDelegationSet :: NoSuchDelegationSet
newNoSuchDelegationSet  = NoSuchDelegationSet { "message": Nothing }

-- | Constructs NoSuchDelegationSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchDelegationSet' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchDelegationSet
newNoSuchDelegationSet'  customize = (NoSuchDelegationSet <<< customize) { "message": Nothing }



-- | <p>Amazon Route 53 doesn't support the specified geolocation.</p>
newtype NoSuchGeoLocation = NoSuchGeoLocation 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchGeoLocation :: Newtype NoSuchGeoLocation _
derive instance repGenericNoSuchGeoLocation :: Generic NoSuchGeoLocation _
instance showNoSuchGeoLocation :: Show NoSuchGeoLocation where show = genericShow
instance decodeNoSuchGeoLocation :: Decode NoSuchGeoLocation where decode = genericDecode options
instance encodeNoSuchGeoLocation :: Encode NoSuchGeoLocation where encode = genericEncode options

-- | Constructs NoSuchGeoLocation from required parameters
newNoSuchGeoLocation :: NoSuchGeoLocation
newNoSuchGeoLocation  = NoSuchGeoLocation { "message": Nothing }

-- | Constructs NoSuchGeoLocation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchGeoLocation' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchGeoLocation
newNoSuchGeoLocation'  customize = (NoSuchGeoLocation <<< customize) { "message": Nothing }



-- | <p>No health check exists with the ID that you specified in the <code>DeleteHealthCheck</code> request.</p>
newtype NoSuchHealthCheck = NoSuchHealthCheck 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchHealthCheck :: Newtype NoSuchHealthCheck _
derive instance repGenericNoSuchHealthCheck :: Generic NoSuchHealthCheck _
instance showNoSuchHealthCheck :: Show NoSuchHealthCheck where show = genericShow
instance decodeNoSuchHealthCheck :: Decode NoSuchHealthCheck where decode = genericDecode options
instance encodeNoSuchHealthCheck :: Encode NoSuchHealthCheck where encode = genericEncode options

-- | Constructs NoSuchHealthCheck from required parameters
newNoSuchHealthCheck :: NoSuchHealthCheck
newNoSuchHealthCheck  = NoSuchHealthCheck { "message": Nothing }

-- | Constructs NoSuchHealthCheck's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchHealthCheck' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchHealthCheck
newNoSuchHealthCheck'  customize = (NoSuchHealthCheck <<< customize) { "message": Nothing }



-- | <p>No hosted zone exists with the ID that you specified.</p>
newtype NoSuchHostedZone = NoSuchHostedZone 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchHostedZone :: Newtype NoSuchHostedZone _
derive instance repGenericNoSuchHostedZone :: Generic NoSuchHostedZone _
instance showNoSuchHostedZone :: Show NoSuchHostedZone where show = genericShow
instance decodeNoSuchHostedZone :: Decode NoSuchHostedZone where decode = genericDecode options
instance encodeNoSuchHostedZone :: Encode NoSuchHostedZone where encode = genericEncode options

-- | Constructs NoSuchHostedZone from required parameters
newNoSuchHostedZone :: NoSuchHostedZone
newNoSuchHostedZone  = NoSuchHostedZone { "message": Nothing }

-- | Constructs NoSuchHostedZone's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchHostedZone' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchHostedZone
newNoSuchHostedZone'  customize = (NoSuchHostedZone <<< customize) { "message": Nothing }



-- | <p>There is no DNS query logging configuration with the specified ID.</p>
newtype NoSuchQueryLoggingConfig = NoSuchQueryLoggingConfig 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchQueryLoggingConfig :: Newtype NoSuchQueryLoggingConfig _
derive instance repGenericNoSuchQueryLoggingConfig :: Generic NoSuchQueryLoggingConfig _
instance showNoSuchQueryLoggingConfig :: Show NoSuchQueryLoggingConfig where show = genericShow
instance decodeNoSuchQueryLoggingConfig :: Decode NoSuchQueryLoggingConfig where decode = genericDecode options
instance encodeNoSuchQueryLoggingConfig :: Encode NoSuchQueryLoggingConfig where encode = genericEncode options

-- | Constructs NoSuchQueryLoggingConfig from required parameters
newNoSuchQueryLoggingConfig :: NoSuchQueryLoggingConfig
newNoSuchQueryLoggingConfig  = NoSuchQueryLoggingConfig { "message": Nothing }

-- | Constructs NoSuchQueryLoggingConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchQueryLoggingConfig' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchQueryLoggingConfig
newNoSuchQueryLoggingConfig'  customize = (NoSuchQueryLoggingConfig <<< customize) { "message": Nothing }



-- | <p>No traffic policy exists with the specified ID.</p>
newtype NoSuchTrafficPolicy = NoSuchTrafficPolicy 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchTrafficPolicy :: Newtype NoSuchTrafficPolicy _
derive instance repGenericNoSuchTrafficPolicy :: Generic NoSuchTrafficPolicy _
instance showNoSuchTrafficPolicy :: Show NoSuchTrafficPolicy where show = genericShow
instance decodeNoSuchTrafficPolicy :: Decode NoSuchTrafficPolicy where decode = genericDecode options
instance encodeNoSuchTrafficPolicy :: Encode NoSuchTrafficPolicy where encode = genericEncode options

-- | Constructs NoSuchTrafficPolicy from required parameters
newNoSuchTrafficPolicy :: NoSuchTrafficPolicy
newNoSuchTrafficPolicy  = NoSuchTrafficPolicy { "message": Nothing }

-- | Constructs NoSuchTrafficPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchTrafficPolicy' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchTrafficPolicy
newNoSuchTrafficPolicy'  customize = (NoSuchTrafficPolicy <<< customize) { "message": Nothing }



-- | <p>No traffic policy instance exists with the specified ID.</p>
newtype NoSuchTrafficPolicyInstance = NoSuchTrafficPolicyInstance 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchTrafficPolicyInstance :: Newtype NoSuchTrafficPolicyInstance _
derive instance repGenericNoSuchTrafficPolicyInstance :: Generic NoSuchTrafficPolicyInstance _
instance showNoSuchTrafficPolicyInstance :: Show NoSuchTrafficPolicyInstance where show = genericShow
instance decodeNoSuchTrafficPolicyInstance :: Decode NoSuchTrafficPolicyInstance where decode = genericDecode options
instance encodeNoSuchTrafficPolicyInstance :: Encode NoSuchTrafficPolicyInstance where encode = genericEncode options

-- | Constructs NoSuchTrafficPolicyInstance from required parameters
newNoSuchTrafficPolicyInstance :: NoSuchTrafficPolicyInstance
newNoSuchTrafficPolicyInstance  = NoSuchTrafficPolicyInstance { "message": Nothing }

-- | Constructs NoSuchTrafficPolicyInstance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchTrafficPolicyInstance' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchTrafficPolicyInstance
newNoSuchTrafficPolicyInstance'  customize = (NoSuchTrafficPolicyInstance <<< customize) { "message": Nothing }



newtype Nonce = Nonce String
derive instance newtypeNonce :: Newtype Nonce _
derive instance repGenericNonce :: Generic Nonce _
instance showNonce :: Show Nonce where show = genericShow
instance decodeNonce :: Decode Nonce where decode = genericDecode options
instance encodeNonce :: Encode Nonce where encode = genericEncode options



-- | <p>Associating the specified VPC with the specified hosted zone has not been authorized.</p>
newtype NotAuthorizedException = NotAuthorizedException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where decode = genericDecode options
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where encode = genericEncode options

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: NotAuthorizedException
newNotAuthorizedException  = NotAuthorizedException { "message": Nothing }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NotAuthorizedException
newNotAuthorizedException'  customize = (NotAuthorizedException <<< customize) { "message": Nothing }



newtype PageMarker = PageMarker String
derive instance newtypePageMarker :: Newtype PageMarker _
derive instance repGenericPageMarker :: Generic PageMarker _
instance showPageMarker :: Show PageMarker where show = genericShow
instance decodePageMarker :: Decode PageMarker where decode = genericDecode options
instance encodePageMarker :: Encode PageMarker where encode = genericEncode options



newtype PageMaxItems = PageMaxItems String
derive instance newtypePageMaxItems :: Newtype PageMaxItems _
derive instance repGenericPageMaxItems :: Generic PageMaxItems _
instance showPageMaxItems :: Show PageMaxItems where show = genericShow
instance decodePageMaxItems :: Decode PageMaxItems where decode = genericDecode options
instance encodePageMaxItems :: Encode PageMaxItems where encode = genericEncode options



newtype PageTruncated = PageTruncated Boolean
derive instance newtypePageTruncated :: Newtype PageTruncated _
derive instance repGenericPageTruncated :: Generic PageTruncated _
instance showPageTruncated :: Show PageTruncated where show = genericShow
instance decodePageTruncated :: Decode PageTruncated where decode = genericDecode options
instance encodePageTruncated :: Encode PageTruncated where encode = genericEncode options



newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where show = genericShow
instance decodePaginationToken :: Decode PaginationToken where decode = genericDecode options
instance encodePaginationToken :: Encode PaginationToken where encode = genericEncode options



newtype Period = Period Int
derive instance newtypePeriod :: Newtype Period _
derive instance repGenericPeriod :: Generic Period _
instance showPeriod :: Show Period where show = genericShow
instance decodePeriod :: Decode Period where decode = genericDecode options
instance encodePeriod :: Encode Period where encode = genericEncode options



newtype Port = Port Int
derive instance newtypePort :: Newtype Port _
derive instance repGenericPort :: Generic Port _
instance showPort :: Show Port where show = genericShow
instance decodePort :: Decode Port where decode = genericDecode options
instance encodePort :: Encode Port where encode = genericEncode options



-- | <p>If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code> (<code>Bad request</code>). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.</p>
newtype PriorRequestNotComplete = PriorRequestNotComplete 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypePriorRequestNotComplete :: Newtype PriorRequestNotComplete _
derive instance repGenericPriorRequestNotComplete :: Generic PriorRequestNotComplete _
instance showPriorRequestNotComplete :: Show PriorRequestNotComplete where show = genericShow
instance decodePriorRequestNotComplete :: Decode PriorRequestNotComplete where decode = genericDecode options
instance encodePriorRequestNotComplete :: Encode PriorRequestNotComplete where encode = genericEncode options

-- | Constructs PriorRequestNotComplete from required parameters
newPriorRequestNotComplete :: PriorRequestNotComplete
newPriorRequestNotComplete  = PriorRequestNotComplete { "message": Nothing }

-- | Constructs PriorRequestNotComplete's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPriorRequestNotComplete' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> PriorRequestNotComplete
newPriorRequestNotComplete'  customize = (PriorRequestNotComplete <<< customize) { "message": Nothing }



-- | <p>You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.</p>
newtype PublicZoneVPCAssociation = PublicZoneVPCAssociation 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypePublicZoneVPCAssociation :: Newtype PublicZoneVPCAssociation _
derive instance repGenericPublicZoneVPCAssociation :: Generic PublicZoneVPCAssociation _
instance showPublicZoneVPCAssociation :: Show PublicZoneVPCAssociation where show = genericShow
instance decodePublicZoneVPCAssociation :: Decode PublicZoneVPCAssociation where decode = genericDecode options
instance encodePublicZoneVPCAssociation :: Encode PublicZoneVPCAssociation where encode = genericEncode options

-- | Constructs PublicZoneVPCAssociation from required parameters
newPublicZoneVPCAssociation :: PublicZoneVPCAssociation
newPublicZoneVPCAssociation  = PublicZoneVPCAssociation { "message": Nothing }

-- | Constructs PublicZoneVPCAssociation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublicZoneVPCAssociation' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> PublicZoneVPCAssociation
newPublicZoneVPCAssociation'  customize = (PublicZoneVPCAssociation <<< customize) { "message": Nothing }



-- | <p>A complex type that contains information about a configuration for DNS query logging.</p>
newtype QueryLoggingConfig = QueryLoggingConfig 
  { "Id" :: (QueryLoggingConfigId)
  , "HostedZoneId" :: (ResourceId)
  , "CloudWatchLogsLogGroupArn" :: (CloudWatchLogsLogGroupArn)
  }
derive instance newtypeQueryLoggingConfig :: Newtype QueryLoggingConfig _
derive instance repGenericQueryLoggingConfig :: Generic QueryLoggingConfig _
instance showQueryLoggingConfig :: Show QueryLoggingConfig where show = genericShow
instance decodeQueryLoggingConfig :: Decode QueryLoggingConfig where decode = genericDecode options
instance encodeQueryLoggingConfig :: Encode QueryLoggingConfig where encode = genericEncode options

-- | Constructs QueryLoggingConfig from required parameters
newQueryLoggingConfig :: CloudWatchLogsLogGroupArn -> ResourceId -> QueryLoggingConfigId -> QueryLoggingConfig
newQueryLoggingConfig _CloudWatchLogsLogGroupArn _HostedZoneId _Id = QueryLoggingConfig { "CloudWatchLogsLogGroupArn": _CloudWatchLogsLogGroupArn, "HostedZoneId": _HostedZoneId, "Id": _Id }

-- | Constructs QueryLoggingConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryLoggingConfig' :: CloudWatchLogsLogGroupArn -> ResourceId -> QueryLoggingConfigId -> ( { "Id" :: (QueryLoggingConfigId) , "HostedZoneId" :: (ResourceId) , "CloudWatchLogsLogGroupArn" :: (CloudWatchLogsLogGroupArn) } -> {"Id" :: (QueryLoggingConfigId) , "HostedZoneId" :: (ResourceId) , "CloudWatchLogsLogGroupArn" :: (CloudWatchLogsLogGroupArn) } ) -> QueryLoggingConfig
newQueryLoggingConfig' _CloudWatchLogsLogGroupArn _HostedZoneId _Id customize = (QueryLoggingConfig <<< customize) { "CloudWatchLogsLogGroupArn": _CloudWatchLogsLogGroupArn, "HostedZoneId": _HostedZoneId, "Id": _Id }



-- | <p>You can create only one query logging configuration for a hosted zone, and a query logging configuration already exists for this hosted zone.</p>
newtype QueryLoggingConfigAlreadyExists = QueryLoggingConfigAlreadyExists 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeQueryLoggingConfigAlreadyExists :: Newtype QueryLoggingConfigAlreadyExists _
derive instance repGenericQueryLoggingConfigAlreadyExists :: Generic QueryLoggingConfigAlreadyExists _
instance showQueryLoggingConfigAlreadyExists :: Show QueryLoggingConfigAlreadyExists where show = genericShow
instance decodeQueryLoggingConfigAlreadyExists :: Decode QueryLoggingConfigAlreadyExists where decode = genericDecode options
instance encodeQueryLoggingConfigAlreadyExists :: Encode QueryLoggingConfigAlreadyExists where encode = genericEncode options

-- | Constructs QueryLoggingConfigAlreadyExists from required parameters
newQueryLoggingConfigAlreadyExists :: QueryLoggingConfigAlreadyExists
newQueryLoggingConfigAlreadyExists  = QueryLoggingConfigAlreadyExists { "message": Nothing }

-- | Constructs QueryLoggingConfigAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newQueryLoggingConfigAlreadyExists' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> QueryLoggingConfigAlreadyExists
newQueryLoggingConfigAlreadyExists'  customize = (QueryLoggingConfigAlreadyExists <<< customize) { "message": Nothing }



newtype QueryLoggingConfigId = QueryLoggingConfigId String
derive instance newtypeQueryLoggingConfigId :: Newtype QueryLoggingConfigId _
derive instance repGenericQueryLoggingConfigId :: Generic QueryLoggingConfigId _
instance showQueryLoggingConfigId :: Show QueryLoggingConfigId where show = genericShow
instance decodeQueryLoggingConfigId :: Decode QueryLoggingConfigId where decode = genericDecode options
instance encodeQueryLoggingConfigId :: Encode QueryLoggingConfigId where encode = genericEncode options



newtype QueryLoggingConfigs = QueryLoggingConfigs (Array QueryLoggingConfig)
derive instance newtypeQueryLoggingConfigs :: Newtype QueryLoggingConfigs _
derive instance repGenericQueryLoggingConfigs :: Generic QueryLoggingConfigs _
instance showQueryLoggingConfigs :: Show QueryLoggingConfigs where show = genericShow
instance decodeQueryLoggingConfigs :: Decode QueryLoggingConfigs where decode = genericDecode options
instance encodeQueryLoggingConfigs :: Encode QueryLoggingConfigs where encode = genericEncode options



newtype RData = RData String
derive instance newtypeRData :: Newtype RData _
derive instance repGenericRData :: Generic RData _
instance showRData :: Show RData where show = genericShow
instance decodeRData :: Decode RData where decode = genericDecode options
instance encodeRData :: Encode RData where encode = genericEncode options



newtype RRType = RRType String
derive instance newtypeRRType :: Newtype RRType _
derive instance repGenericRRType :: Generic RRType _
instance showRRType :: Show RRType where show = genericShow
instance decodeRRType :: Decode RRType where decode = genericDecode options
instance encodeRRType :: Encode RRType where encode = genericEncode options



newtype RecordData = RecordData (Array RecordDataEntry)
derive instance newtypeRecordData :: Newtype RecordData _
derive instance repGenericRecordData :: Generic RecordData _
instance showRecordData :: Show RecordData where show = genericShow
instance decodeRecordData :: Decode RecordData where decode = genericDecode options
instance encodeRecordData :: Encode RecordData where encode = genericEncode options



-- | <p>A value that Amazon Route 53 returned for this resource record set. A <code>RecordDataEntry</code> element is one of the following:</p> <ul> <li> <p>For non-alias resource record sets, a <code>RecordDataEntry</code> element contains one value in the resource record set. If the resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> <li> <p>For multiple resource record sets that have the same name and type, which includes weighted, latency, geolocation, and failover, a <code>RecordDataEntry</code> element contains the value from the appropriate resource record set based on the request.</p> </li> <li> <p>For alias resource record sets that refer to AWS resources other than another resource record set, the <code>RecordDataEntry</code> element contains an IP address or a domain name for the AWS resource, depending on the type of resource.</p> </li> <li> <p>For alias resource record sets that refer to other resource record sets, a <code>RecordDataEntry</code> element contains one value from the referenced resource record set. If the referenced resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> </ul>
newtype RecordDataEntry = RecordDataEntry String
derive instance newtypeRecordDataEntry :: Newtype RecordDataEntry _
derive instance repGenericRecordDataEntry :: Generic RecordDataEntry _
instance showRecordDataEntry :: Show RecordDataEntry where show = genericShow
instance decodeRecordDataEntry :: Decode RecordDataEntry where decode = genericDecode options
instance encodeRecordDataEntry :: Encode RecordDataEntry where encode = genericEncode options



newtype RequestInterval = RequestInterval Int
derive instance newtypeRequestInterval :: Newtype RequestInterval _
derive instance repGenericRequestInterval :: Generic RequestInterval _
instance showRequestInterval :: Show RequestInterval where show = genericShow
instance decodeRequestInterval :: Decode RequestInterval where decode = genericDecode options
instance encodeRequestInterval :: Encode RequestInterval where encode = genericEncode options



newtype ResettableElementName = ResettableElementName String
derive instance newtypeResettableElementName :: Newtype ResettableElementName _
derive instance repGenericResettableElementName :: Generic ResettableElementName _
instance showResettableElementName :: Show ResettableElementName where show = genericShow
instance decodeResettableElementName :: Decode ResettableElementName where decode = genericDecode options
instance encodeResettableElementName :: Encode ResettableElementName where encode = genericEncode options



newtype ResettableElementNameList = ResettableElementNameList (Array ResettableElementName)
derive instance newtypeResettableElementNameList :: Newtype ResettableElementNameList _
derive instance repGenericResettableElementNameList :: Generic ResettableElementNameList _
instance showResettableElementNameList :: Show ResettableElementNameList where show = genericShow
instance decodeResettableElementNameList :: Decode ResettableElementNameList where decode = genericDecode options
instance encodeResettableElementNameList :: Encode ResettableElementNameList where encode = genericEncode options



newtype ResourceDescription = ResourceDescription String
derive instance newtypeResourceDescription :: Newtype ResourceDescription _
derive instance repGenericResourceDescription :: Generic ResourceDescription _
instance showResourceDescription :: Show ResourceDescription where show = genericShow
instance decodeResourceDescription :: Decode ResourceDescription where decode = genericDecode options
instance encodeResourceDescription :: Encode ResourceDescription where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



newtype ResourcePath = ResourcePath String
derive instance newtypeResourcePath :: Newtype ResourcePath _
derive instance repGenericResourcePath :: Generic ResourcePath _
instance showResourcePath :: Show ResourcePath where show = genericShow
instance decodeResourcePath :: Decode ResourcePath where decode = genericDecode options
instance encodeResourcePath :: Encode ResourcePath where encode = genericEncode options



-- | <p>Information specific to the resource record.</p> <note> <p>If you're creating an alias resource record set, omit <code>ResourceRecord</code>.</p> </note>
newtype ResourceRecord = ResourceRecord 
  { "Value" :: (RData)
  }
derive instance newtypeResourceRecord :: Newtype ResourceRecord _
derive instance repGenericResourceRecord :: Generic ResourceRecord _
instance showResourceRecord :: Show ResourceRecord where show = genericShow
instance decodeResourceRecord :: Decode ResourceRecord where decode = genericDecode options
instance encodeResourceRecord :: Encode ResourceRecord where encode = genericEncode options

-- | Constructs ResourceRecord from required parameters
newResourceRecord :: RData -> ResourceRecord
newResourceRecord _Value = ResourceRecord { "Value": _Value }

-- | Constructs ResourceRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceRecord' :: RData -> ( { "Value" :: (RData) } -> {"Value" :: (RData) } ) -> ResourceRecord
newResourceRecord' _Value customize = (ResourceRecord <<< customize) { "Value": _Value }



-- | <p>Information about the resource record set to create or delete.</p>
newtype ResourceRecordSet = ResourceRecordSet 
  { "Name" :: (DNSName)
  , "Type" :: (RRType)
  , "SetIdentifier" :: Maybe (ResourceRecordSetIdentifier)
  , "Weight" :: Maybe (ResourceRecordSetWeight)
  , "Region" :: Maybe (ResourceRecordSetRegion)
  , "GeoLocation" :: Maybe (GeoLocation)
  , "Failover" :: Maybe (ResourceRecordSetFailover)
  , "MultiValueAnswer" :: Maybe (ResourceRecordSetMultiValueAnswer)
  , "TTL" :: Maybe (TTL)
  , "ResourceRecords" :: Maybe (ResourceRecords)
  , "AliasTarget" :: Maybe (AliasTarget)
  , "HealthCheckId" :: Maybe (HealthCheckId)
  , "TrafficPolicyInstanceId" :: Maybe (TrafficPolicyInstanceId)
  }
derive instance newtypeResourceRecordSet :: Newtype ResourceRecordSet _
derive instance repGenericResourceRecordSet :: Generic ResourceRecordSet _
instance showResourceRecordSet :: Show ResourceRecordSet where show = genericShow
instance decodeResourceRecordSet :: Decode ResourceRecordSet where decode = genericDecode options
instance encodeResourceRecordSet :: Encode ResourceRecordSet where encode = genericEncode options

-- | Constructs ResourceRecordSet from required parameters
newResourceRecordSet :: DNSName -> RRType -> ResourceRecordSet
newResourceRecordSet _Name _Type = ResourceRecordSet { "Name": _Name, "Type": _Type, "AliasTarget": Nothing, "Failover": Nothing, "GeoLocation": Nothing, "HealthCheckId": Nothing, "MultiValueAnswer": Nothing, "Region": Nothing, "ResourceRecords": Nothing, "SetIdentifier": Nothing, "TTL": Nothing, "TrafficPolicyInstanceId": Nothing, "Weight": Nothing }

-- | Constructs ResourceRecordSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceRecordSet' :: DNSName -> RRType -> ( { "Name" :: (DNSName) , "Type" :: (RRType) , "SetIdentifier" :: Maybe (ResourceRecordSetIdentifier) , "Weight" :: Maybe (ResourceRecordSetWeight) , "Region" :: Maybe (ResourceRecordSetRegion) , "GeoLocation" :: Maybe (GeoLocation) , "Failover" :: Maybe (ResourceRecordSetFailover) , "MultiValueAnswer" :: Maybe (ResourceRecordSetMultiValueAnswer) , "TTL" :: Maybe (TTL) , "ResourceRecords" :: Maybe (ResourceRecords) , "AliasTarget" :: Maybe (AliasTarget) , "HealthCheckId" :: Maybe (HealthCheckId) , "TrafficPolicyInstanceId" :: Maybe (TrafficPolicyInstanceId) } -> {"Name" :: (DNSName) , "Type" :: (RRType) , "SetIdentifier" :: Maybe (ResourceRecordSetIdentifier) , "Weight" :: Maybe (ResourceRecordSetWeight) , "Region" :: Maybe (ResourceRecordSetRegion) , "GeoLocation" :: Maybe (GeoLocation) , "Failover" :: Maybe (ResourceRecordSetFailover) , "MultiValueAnswer" :: Maybe (ResourceRecordSetMultiValueAnswer) , "TTL" :: Maybe (TTL) , "ResourceRecords" :: Maybe (ResourceRecords) , "AliasTarget" :: Maybe (AliasTarget) , "HealthCheckId" :: Maybe (HealthCheckId) , "TrafficPolicyInstanceId" :: Maybe (TrafficPolicyInstanceId) } ) -> ResourceRecordSet
newResourceRecordSet' _Name _Type customize = (ResourceRecordSet <<< customize) { "Name": _Name, "Type": _Type, "AliasTarget": Nothing, "Failover": Nothing, "GeoLocation": Nothing, "HealthCheckId": Nothing, "MultiValueAnswer": Nothing, "Region": Nothing, "ResourceRecords": Nothing, "SetIdentifier": Nothing, "TTL": Nothing, "TrafficPolicyInstanceId": Nothing, "Weight": Nothing }



newtype ResourceRecordSetFailover = ResourceRecordSetFailover String
derive instance newtypeResourceRecordSetFailover :: Newtype ResourceRecordSetFailover _
derive instance repGenericResourceRecordSetFailover :: Generic ResourceRecordSetFailover _
instance showResourceRecordSetFailover :: Show ResourceRecordSetFailover where show = genericShow
instance decodeResourceRecordSetFailover :: Decode ResourceRecordSetFailover where decode = genericDecode options
instance encodeResourceRecordSetFailover :: Encode ResourceRecordSetFailover where encode = genericEncode options



newtype ResourceRecordSetIdentifier = ResourceRecordSetIdentifier String
derive instance newtypeResourceRecordSetIdentifier :: Newtype ResourceRecordSetIdentifier _
derive instance repGenericResourceRecordSetIdentifier :: Generic ResourceRecordSetIdentifier _
instance showResourceRecordSetIdentifier :: Show ResourceRecordSetIdentifier where show = genericShow
instance decodeResourceRecordSetIdentifier :: Decode ResourceRecordSetIdentifier where decode = genericDecode options
instance encodeResourceRecordSetIdentifier :: Encode ResourceRecordSetIdentifier where encode = genericEncode options



newtype ResourceRecordSetMultiValueAnswer = ResourceRecordSetMultiValueAnswer Boolean
derive instance newtypeResourceRecordSetMultiValueAnswer :: Newtype ResourceRecordSetMultiValueAnswer _
derive instance repGenericResourceRecordSetMultiValueAnswer :: Generic ResourceRecordSetMultiValueAnswer _
instance showResourceRecordSetMultiValueAnswer :: Show ResourceRecordSetMultiValueAnswer where show = genericShow
instance decodeResourceRecordSetMultiValueAnswer :: Decode ResourceRecordSetMultiValueAnswer where decode = genericDecode options
instance encodeResourceRecordSetMultiValueAnswer :: Encode ResourceRecordSetMultiValueAnswer where encode = genericEncode options



newtype ResourceRecordSetRegion = ResourceRecordSetRegion String
derive instance newtypeResourceRecordSetRegion :: Newtype ResourceRecordSetRegion _
derive instance repGenericResourceRecordSetRegion :: Generic ResourceRecordSetRegion _
instance showResourceRecordSetRegion :: Show ResourceRecordSetRegion where show = genericShow
instance decodeResourceRecordSetRegion :: Decode ResourceRecordSetRegion where decode = genericDecode options
instance encodeResourceRecordSetRegion :: Encode ResourceRecordSetRegion where encode = genericEncode options



newtype ResourceRecordSetWeight = ResourceRecordSetWeight Number
derive instance newtypeResourceRecordSetWeight :: Newtype ResourceRecordSetWeight _
derive instance repGenericResourceRecordSetWeight :: Generic ResourceRecordSetWeight _
instance showResourceRecordSetWeight :: Show ResourceRecordSetWeight where show = genericShow
instance decodeResourceRecordSetWeight :: Decode ResourceRecordSetWeight where decode = genericDecode options
instance encodeResourceRecordSetWeight :: Encode ResourceRecordSetWeight where encode = genericEncode options



newtype ResourceRecordSets = ResourceRecordSets (Array ResourceRecordSet)
derive instance newtypeResourceRecordSets :: Newtype ResourceRecordSets _
derive instance repGenericResourceRecordSets :: Generic ResourceRecordSets _
instance showResourceRecordSets :: Show ResourceRecordSets where show = genericShow
instance decodeResourceRecordSets :: Decode ResourceRecordSets where decode = genericDecode options
instance encodeResourceRecordSets :: Encode ResourceRecordSets where encode = genericEncode options



newtype ResourceRecords = ResourceRecords (Array ResourceRecord)
derive instance newtypeResourceRecords :: Newtype ResourceRecords _
derive instance repGenericResourceRecords :: Generic ResourceRecords _
instance showResourceRecords :: Show ResourceRecords where show = genericShow
instance decodeResourceRecords :: Decode ResourceRecords where decode = genericDecode options
instance encodeResourceRecords :: Encode ResourceRecords where encode = genericEncode options



-- | <p>A complex type containing a resource and its associated tags.</p>
newtype ResourceTagSet = ResourceTagSet 
  { "ResourceType" :: Maybe (TagResourceType)
  , "ResourceId" :: Maybe (TagResourceId)
  , "Tags" :: Maybe (TagList)
  }
derive instance newtypeResourceTagSet :: Newtype ResourceTagSet _
derive instance repGenericResourceTagSet :: Generic ResourceTagSet _
instance showResourceTagSet :: Show ResourceTagSet where show = genericShow
instance decodeResourceTagSet :: Decode ResourceTagSet where decode = genericDecode options
instance encodeResourceTagSet :: Encode ResourceTagSet where encode = genericEncode options

-- | Constructs ResourceTagSet from required parameters
newResourceTagSet :: ResourceTagSet
newResourceTagSet  = ResourceTagSet { "ResourceId": Nothing, "ResourceType": Nothing, "Tags": Nothing }

-- | Constructs ResourceTagSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceTagSet' :: ( { "ResourceType" :: Maybe (TagResourceType) , "ResourceId" :: Maybe (TagResourceId) , "Tags" :: Maybe (TagList) } -> {"ResourceType" :: Maybe (TagResourceType) , "ResourceId" :: Maybe (TagResourceId) , "Tags" :: Maybe (TagList) } ) -> ResourceTagSet
newResourceTagSet'  customize = (ResourceTagSet <<< customize) { "ResourceId": Nothing, "ResourceType": Nothing, "Tags": Nothing }



newtype ResourceTagSetList = ResourceTagSetList (Array ResourceTagSet)
derive instance newtypeResourceTagSetList :: Newtype ResourceTagSetList _
derive instance repGenericResourceTagSetList :: Generic ResourceTagSetList _
instance showResourceTagSetList :: Show ResourceTagSetList where show = genericShow
instance decodeResourceTagSetList :: Decode ResourceTagSetList where decode = genericDecode options
instance encodeResourceTagSetList :: Encode ResourceTagSetList where encode = genericEncode options



newtype ResourceURI = ResourceURI String
derive instance newtypeResourceURI :: Newtype ResourceURI _
derive instance repGenericResourceURI :: Generic ResourceURI _
instance showResourceURI :: Show ResourceURI where show = genericShow
instance decodeResourceURI :: Decode ResourceURI where decode = genericDecode options
instance encodeResourceURI :: Encode ResourceURI where encode = genericEncode options



-- | <p>A complex type that contains the type of limit that you specified in the request and the current value for that limit.</p>
newtype ReusableDelegationSetLimit = ReusableDelegationSetLimit 
  { "Type" :: (ReusableDelegationSetLimitType)
  , "Value" :: (LimitValue)
  }
derive instance newtypeReusableDelegationSetLimit :: Newtype ReusableDelegationSetLimit _
derive instance repGenericReusableDelegationSetLimit :: Generic ReusableDelegationSetLimit _
instance showReusableDelegationSetLimit :: Show ReusableDelegationSetLimit where show = genericShow
instance decodeReusableDelegationSetLimit :: Decode ReusableDelegationSetLimit where decode = genericDecode options
instance encodeReusableDelegationSetLimit :: Encode ReusableDelegationSetLimit where encode = genericEncode options

-- | Constructs ReusableDelegationSetLimit from required parameters
newReusableDelegationSetLimit :: ReusableDelegationSetLimitType -> LimitValue -> ReusableDelegationSetLimit
newReusableDelegationSetLimit _Type _Value = ReusableDelegationSetLimit { "Type": _Type, "Value": _Value }

-- | Constructs ReusableDelegationSetLimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReusableDelegationSetLimit' :: ReusableDelegationSetLimitType -> LimitValue -> ( { "Type" :: (ReusableDelegationSetLimitType) , "Value" :: (LimitValue) } -> {"Type" :: (ReusableDelegationSetLimitType) , "Value" :: (LimitValue) } ) -> ReusableDelegationSetLimit
newReusableDelegationSetLimit' _Type _Value customize = (ReusableDelegationSetLimit <<< customize) { "Type": _Type, "Value": _Value }



newtype ReusableDelegationSetLimitType = ReusableDelegationSetLimitType String
derive instance newtypeReusableDelegationSetLimitType :: Newtype ReusableDelegationSetLimitType _
derive instance repGenericReusableDelegationSetLimitType :: Generic ReusableDelegationSetLimitType _
instance showReusableDelegationSetLimitType :: Show ReusableDelegationSetLimitType where show = genericShow
instance decodeReusableDelegationSetLimitType :: Decode ReusableDelegationSetLimitType where decode = genericDecode options
instance encodeReusableDelegationSetLimitType :: Encode ReusableDelegationSetLimitType where encode = genericEncode options



newtype SearchString = SearchString String
derive instance newtypeSearchString :: Newtype SearchString _
derive instance repGenericSearchString :: Generic SearchString _
instance showSearchString :: Show SearchString where show = genericShow
instance decodeSearchString :: Decode SearchString where decode = genericDecode options
instance encodeSearchString :: Encode SearchString where encode = genericEncode options



newtype ServicePrincipal = ServicePrincipal String
derive instance newtypeServicePrincipal :: Newtype ServicePrincipal _
derive instance repGenericServicePrincipal :: Generic ServicePrincipal _
instance showServicePrincipal :: Show ServicePrincipal where show = genericShow
instance decodeServicePrincipal :: Decode ServicePrincipal where decode = genericDecode options
instance encodeServicePrincipal :: Encode ServicePrincipal where encode = genericEncode options



newtype Statistic = Statistic String
derive instance newtypeStatistic :: Newtype Statistic _
derive instance repGenericStatistic :: Generic Statistic _
instance showStatistic :: Show Statistic where show = genericShow
instance decodeStatistic :: Decode Statistic where decode = genericDecode options
instance encodeStatistic :: Encode Statistic where encode = genericEncode options



newtype Status = Status String
derive instance newtypeStatus :: Newtype Status _
derive instance repGenericStatus :: Generic Status _
instance showStatus :: Show Status where show = genericShow
instance decodeStatus :: Decode Status where decode = genericDecode options
instance encodeStatus :: Encode Status where encode = genericEncode options



-- | <p>A complex type that contains the status that one Amazon Route 53 health checker reports and the time of the health check.</p>
newtype StatusReport = StatusReport 
  { "Status" :: Maybe (Status)
  , "CheckedTime" :: Maybe (TimeStamp)
  }
derive instance newtypeStatusReport :: Newtype StatusReport _
derive instance repGenericStatusReport :: Generic StatusReport _
instance showStatusReport :: Show StatusReport where show = genericShow
instance decodeStatusReport :: Decode StatusReport where decode = genericDecode options
instance encodeStatusReport :: Encode StatusReport where encode = genericEncode options

-- | Constructs StatusReport from required parameters
newStatusReport :: StatusReport
newStatusReport  = StatusReport { "CheckedTime": Nothing, "Status": Nothing }

-- | Constructs StatusReport's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStatusReport' :: ( { "Status" :: Maybe (Status) , "CheckedTime" :: Maybe (TimeStamp) } -> {"Status" :: Maybe (Status) , "CheckedTime" :: Maybe (TimeStamp) } ) -> StatusReport
newStatusReport'  customize = (StatusReport <<< customize) { "CheckedTime": Nothing, "Status": Nothing }



newtype SubnetMask = SubnetMask String
derive instance newtypeSubnetMask :: Newtype SubnetMask _
derive instance repGenericSubnetMask :: Generic SubnetMask _
instance showSubnetMask :: Show SubnetMask where show = genericShow
instance decodeSubnetMask :: Decode SubnetMask where decode = genericDecode options
instance encodeSubnetMask :: Encode SubnetMask where encode = genericEncode options



newtype TTL = TTL Number
derive instance newtypeTTL :: Newtype TTL _
derive instance repGenericTTL :: Generic TTL _
instance showTTL :: Show TTL where show = genericShow
instance decodeTTL :: Decode TTL where decode = genericDecode options
instance encodeTTL :: Encode TTL where encode = genericEncode options



-- | <p>A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.</p>
newtype Tag = Tag 
  { "Key" :: Maybe (TagKey)
  , "Value" :: Maybe (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": Nothing, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: Maybe (TagKey) , "Value" :: Maybe (TagValue) } -> {"Key" :: Maybe (TagKey) , "Value" :: Maybe (TagValue) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": Nothing, "Value": Nothing }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagResourceId = TagResourceId String
derive instance newtypeTagResourceId :: Newtype TagResourceId _
derive instance repGenericTagResourceId :: Generic TagResourceId _
instance showTagResourceId :: Show TagResourceId where show = genericShow
instance decodeTagResourceId :: Decode TagResourceId where decode = genericDecode options
instance encodeTagResourceId :: Encode TagResourceId where encode = genericEncode options



newtype TagResourceIdList = TagResourceIdList (Array TagResourceId)
derive instance newtypeTagResourceIdList :: Newtype TagResourceIdList _
derive instance repGenericTagResourceIdList :: Generic TagResourceIdList _
instance showTagResourceIdList :: Show TagResourceIdList where show = genericShow
instance decodeTagResourceIdList :: Decode TagResourceIdList where decode = genericDecode options
instance encodeTagResourceIdList :: Encode TagResourceIdList where encode = genericEncode options



newtype TagResourceType = TagResourceType String
derive instance newtypeTagResourceType :: Newtype TagResourceType _
derive instance repGenericTagResourceType :: Generic TagResourceType _
instance showTagResourceType :: Show TagResourceType where show = genericShow
instance decodeTagResourceType :: Decode TagResourceType where decode = genericDecode options
instance encodeTagResourceType :: Encode TagResourceType where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



-- | <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>
newtype TestDNSAnswerRequest = TestDNSAnswerRequest 
  { "HostedZoneId" :: (ResourceId)
  , "RecordName" :: (DNSName)
  , "RecordType" :: (RRType)
  , "ResolverIP" :: Maybe (IPAddress)
  , "EDNS0ClientSubnetIP" :: Maybe (IPAddress)
  , "EDNS0ClientSubnetMask" :: Maybe (SubnetMask)
  }
derive instance newtypeTestDNSAnswerRequest :: Newtype TestDNSAnswerRequest _
derive instance repGenericTestDNSAnswerRequest :: Generic TestDNSAnswerRequest _
instance showTestDNSAnswerRequest :: Show TestDNSAnswerRequest where show = genericShow
instance decodeTestDNSAnswerRequest :: Decode TestDNSAnswerRequest where decode = genericDecode options
instance encodeTestDNSAnswerRequest :: Encode TestDNSAnswerRequest where encode = genericEncode options

-- | Constructs TestDNSAnswerRequest from required parameters
newTestDNSAnswerRequest :: ResourceId -> DNSName -> RRType -> TestDNSAnswerRequest
newTestDNSAnswerRequest _HostedZoneId _RecordName _RecordType = TestDNSAnswerRequest { "HostedZoneId": _HostedZoneId, "RecordName": _RecordName, "RecordType": _RecordType, "EDNS0ClientSubnetIP": Nothing, "EDNS0ClientSubnetMask": Nothing, "ResolverIP": Nothing }

-- | Constructs TestDNSAnswerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestDNSAnswerRequest' :: ResourceId -> DNSName -> RRType -> ( { "HostedZoneId" :: (ResourceId) , "RecordName" :: (DNSName) , "RecordType" :: (RRType) , "ResolverIP" :: Maybe (IPAddress) , "EDNS0ClientSubnetIP" :: Maybe (IPAddress) , "EDNS0ClientSubnetMask" :: Maybe (SubnetMask) } -> {"HostedZoneId" :: (ResourceId) , "RecordName" :: (DNSName) , "RecordType" :: (RRType) , "ResolverIP" :: Maybe (IPAddress) , "EDNS0ClientSubnetIP" :: Maybe (IPAddress) , "EDNS0ClientSubnetMask" :: Maybe (SubnetMask) } ) -> TestDNSAnswerRequest
newTestDNSAnswerRequest' _HostedZoneId _RecordName _RecordType customize = (TestDNSAnswerRequest <<< customize) { "HostedZoneId": _HostedZoneId, "RecordName": _RecordName, "RecordType": _RecordType, "EDNS0ClientSubnetIP": Nothing, "EDNS0ClientSubnetMask": Nothing, "ResolverIP": Nothing }



-- | <p>A complex type that contains the response to a <code>TestDNSAnswer</code> request. </p>
newtype TestDNSAnswerResponse = TestDNSAnswerResponse 
  { "Nameserver" :: (Nameserver)
  , "RecordName" :: (DNSName)
  , "RecordType" :: (RRType)
  , "RecordData" :: (RecordData)
  , "ResponseCode" :: (DNSRCode)
  , "Protocol" :: (TransportProtocol)
  }
derive instance newtypeTestDNSAnswerResponse :: Newtype TestDNSAnswerResponse _
derive instance repGenericTestDNSAnswerResponse :: Generic TestDNSAnswerResponse _
instance showTestDNSAnswerResponse :: Show TestDNSAnswerResponse where show = genericShow
instance decodeTestDNSAnswerResponse :: Decode TestDNSAnswerResponse where decode = genericDecode options
instance encodeTestDNSAnswerResponse :: Encode TestDNSAnswerResponse where encode = genericEncode options

-- | Constructs TestDNSAnswerResponse from required parameters
newTestDNSAnswerResponse :: Nameserver -> TransportProtocol -> RecordData -> DNSName -> RRType -> DNSRCode -> TestDNSAnswerResponse
newTestDNSAnswerResponse _Nameserver _Protocol _RecordData _RecordName _RecordType _ResponseCode = TestDNSAnswerResponse { "Nameserver": _Nameserver, "Protocol": _Protocol, "RecordData": _RecordData, "RecordName": _RecordName, "RecordType": _RecordType, "ResponseCode": _ResponseCode }

-- | Constructs TestDNSAnswerResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTestDNSAnswerResponse' :: Nameserver -> TransportProtocol -> RecordData -> DNSName -> RRType -> DNSRCode -> ( { "Nameserver" :: (Nameserver) , "RecordName" :: (DNSName) , "RecordType" :: (RRType) , "RecordData" :: (RecordData) , "ResponseCode" :: (DNSRCode) , "Protocol" :: (TransportProtocol) } -> {"Nameserver" :: (Nameserver) , "RecordName" :: (DNSName) , "RecordType" :: (RRType) , "RecordData" :: (RecordData) , "ResponseCode" :: (DNSRCode) , "Protocol" :: (TransportProtocol) } ) -> TestDNSAnswerResponse
newTestDNSAnswerResponse' _Nameserver _Protocol _RecordData _RecordName _RecordType _ResponseCode customize = (TestDNSAnswerResponse <<< customize) { "Nameserver": _Nameserver, "Protocol": _Protocol, "RecordData": _RecordData, "RecordName": _RecordName, "RecordType": _RecordType, "ResponseCode": _ResponseCode }



newtype Threshold = Threshold Number
derive instance newtypeThreshold :: Newtype Threshold _
derive instance repGenericThreshold :: Generic Threshold _
instance showThreshold :: Show Threshold where show = genericShow
instance decodeThreshold :: Decode Threshold where decode = genericDecode options
instance encodeThreshold :: Encode Threshold where encode = genericEncode options



-- | <p>The limit on the number of requests per second was exceeded.</p>
newtype ThrottlingException = ThrottlingException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeThrottlingException :: Newtype ThrottlingException _
derive instance repGenericThrottlingException :: Generic ThrottlingException _
instance showThrottlingException :: Show ThrottlingException where show = genericShow
instance decodeThrottlingException :: Decode ThrottlingException where decode = genericDecode options
instance encodeThrottlingException :: Encode ThrottlingException where encode = genericEncode options

-- | Constructs ThrottlingException from required parameters
newThrottlingException :: ThrottlingException
newThrottlingException  = ThrottlingException { "message": Nothing }

-- | Constructs ThrottlingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottlingException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ThrottlingException
newThrottlingException'  customize = (ThrottlingException <<< customize) { "message": Nothing }



newtype TimeStamp = TimeStamp Types.Timestamp
derive instance newtypeTimeStamp :: Newtype TimeStamp _
derive instance repGenericTimeStamp :: Generic TimeStamp _
instance showTimeStamp :: Show TimeStamp where show = genericShow
instance decodeTimeStamp :: Decode TimeStamp where decode = genericDecode options
instance encodeTimeStamp :: Encode TimeStamp where encode = genericEncode options



-- | <p>This health check can't be created because the current account has reached the limit on the number of active health checks.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>For information about how to get the current limit for an account, see <a>GetAccountLimit</a>. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p> <p>You have reached the maximum number of active health checks for an AWS account. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
newtype TooManyHealthChecks = TooManyHealthChecks 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyHealthChecks :: Newtype TooManyHealthChecks _
derive instance repGenericTooManyHealthChecks :: Generic TooManyHealthChecks _
instance showTooManyHealthChecks :: Show TooManyHealthChecks where show = genericShow
instance decodeTooManyHealthChecks :: Decode TooManyHealthChecks where decode = genericDecode options
instance encodeTooManyHealthChecks :: Encode TooManyHealthChecks where encode = genericEncode options

-- | Constructs TooManyHealthChecks from required parameters
newTooManyHealthChecks :: TooManyHealthChecks
newTooManyHealthChecks  = TooManyHealthChecks { "message": Nothing }

-- | Constructs TooManyHealthChecks's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyHealthChecks' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TooManyHealthChecks
newTooManyHealthChecks'  customize = (TooManyHealthChecks <<< customize) { "message": Nothing }



-- | <p>This operation can't be completed either because the current account has reached the limit on the number of hosted zones or because you've reached the limit on the number of hosted zones that can be associated with a reusable delegation set.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>To get the current limit on hosted zones that can be created by an account, see <a>GetAccountLimit</a>.</p> <p>To get the current limit on hosted zones that can be associated with a reusable delegation set, see <a>GetReusableDelegationSetLimit</a>.</p> <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
newtype TooManyHostedZones = TooManyHostedZones 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyHostedZones :: Newtype TooManyHostedZones _
derive instance repGenericTooManyHostedZones :: Generic TooManyHostedZones _
instance showTooManyHostedZones :: Show TooManyHostedZones where show = genericShow
instance decodeTooManyHostedZones :: Decode TooManyHostedZones where decode = genericDecode options
instance encodeTooManyHostedZones :: Encode TooManyHostedZones where encode = genericEncode options

-- | Constructs TooManyHostedZones from required parameters
newTooManyHostedZones :: TooManyHostedZones
newTooManyHostedZones  = TooManyHostedZones { "message": Nothing }

-- | Constructs TooManyHostedZones's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyHostedZones' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TooManyHostedZones
newTooManyHostedZones'  customize = (TooManyHostedZones <<< customize) { "message": Nothing }



-- | <p>This traffic policy can't be created because the current account has reached the limit on the number of traffic policies.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>To get the current limit for an account, see <a>GetAccountLimit</a>. </p> <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
newtype TooManyTrafficPolicies = TooManyTrafficPolicies 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyTrafficPolicies :: Newtype TooManyTrafficPolicies _
derive instance repGenericTooManyTrafficPolicies :: Generic TooManyTrafficPolicies _
instance showTooManyTrafficPolicies :: Show TooManyTrafficPolicies where show = genericShow
instance decodeTooManyTrafficPolicies :: Decode TooManyTrafficPolicies where decode = genericDecode options
instance encodeTooManyTrafficPolicies :: Encode TooManyTrafficPolicies where encode = genericEncode options

-- | Constructs TooManyTrafficPolicies from required parameters
newTooManyTrafficPolicies :: TooManyTrafficPolicies
newTooManyTrafficPolicies  = TooManyTrafficPolicies { "message": Nothing }

-- | Constructs TooManyTrafficPolicies's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyTrafficPolicies' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TooManyTrafficPolicies
newTooManyTrafficPolicies'  customize = (TooManyTrafficPolicies <<< customize) { "message": Nothing }



-- | <p>This traffic policy instance can't be created because the current account has reached the limit on the number of traffic policy instances.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>For information about how to get the current limit for an account, see <a>GetAccountLimit</a>.</p> <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
newtype TooManyTrafficPolicyInstances = TooManyTrafficPolicyInstances 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyTrafficPolicyInstances :: Newtype TooManyTrafficPolicyInstances _
derive instance repGenericTooManyTrafficPolicyInstances :: Generic TooManyTrafficPolicyInstances _
instance showTooManyTrafficPolicyInstances :: Show TooManyTrafficPolicyInstances where show = genericShow
instance decodeTooManyTrafficPolicyInstances :: Decode TooManyTrafficPolicyInstances where decode = genericDecode options
instance encodeTooManyTrafficPolicyInstances :: Encode TooManyTrafficPolicyInstances where encode = genericEncode options

-- | Constructs TooManyTrafficPolicyInstances from required parameters
newTooManyTrafficPolicyInstances :: TooManyTrafficPolicyInstances
newTooManyTrafficPolicyInstances  = TooManyTrafficPolicyInstances { "message": Nothing }

-- | Constructs TooManyTrafficPolicyInstances's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyTrafficPolicyInstances' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TooManyTrafficPolicyInstances
newTooManyTrafficPolicyInstances'  customize = (TooManyTrafficPolicyInstances <<< customize) { "message": Nothing }



-- | <p>This traffic policy version can't be created because you've reached the limit of 1000 on the number of versions that you can create for the current traffic policy.</p> <p>To create more traffic policy versions, you can use <a>GetTrafficPolicy</a> to get the traffic policy document for a specified traffic policy version, and then use <a>CreateTrafficPolicy</a> to create a new traffic policy using the traffic policy document.</p>
newtype TooManyTrafficPolicyVersionsForCurrentPolicy = TooManyTrafficPolicyVersionsForCurrentPolicy 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyTrafficPolicyVersionsForCurrentPolicy :: Newtype TooManyTrafficPolicyVersionsForCurrentPolicy _
derive instance repGenericTooManyTrafficPolicyVersionsForCurrentPolicy :: Generic TooManyTrafficPolicyVersionsForCurrentPolicy _
instance showTooManyTrafficPolicyVersionsForCurrentPolicy :: Show TooManyTrafficPolicyVersionsForCurrentPolicy where show = genericShow
instance decodeTooManyTrafficPolicyVersionsForCurrentPolicy :: Decode TooManyTrafficPolicyVersionsForCurrentPolicy where decode = genericDecode options
instance encodeTooManyTrafficPolicyVersionsForCurrentPolicy :: Encode TooManyTrafficPolicyVersionsForCurrentPolicy where encode = genericEncode options

-- | Constructs TooManyTrafficPolicyVersionsForCurrentPolicy from required parameters
newTooManyTrafficPolicyVersionsForCurrentPolicy :: TooManyTrafficPolicyVersionsForCurrentPolicy
newTooManyTrafficPolicyVersionsForCurrentPolicy  = TooManyTrafficPolicyVersionsForCurrentPolicy { "message": Nothing }

-- | Constructs TooManyTrafficPolicyVersionsForCurrentPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyTrafficPolicyVersionsForCurrentPolicy' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TooManyTrafficPolicyVersionsForCurrentPolicy
newTooManyTrafficPolicyVersionsForCurrentPolicy'  customize = (TooManyTrafficPolicyVersionsForCurrentPolicy <<< customize) { "message": Nothing }



-- | <p>You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a <code>DeleteVPCAssociationAuthorization</code> request to remove an existing authorization. To get a list of existing authorizations, submit a <code>ListVPCAssociationAuthorizations</code> request.</p>
newtype TooManyVPCAssociationAuthorizations = TooManyVPCAssociationAuthorizations 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyVPCAssociationAuthorizations :: Newtype TooManyVPCAssociationAuthorizations _
derive instance repGenericTooManyVPCAssociationAuthorizations :: Generic TooManyVPCAssociationAuthorizations _
instance showTooManyVPCAssociationAuthorizations :: Show TooManyVPCAssociationAuthorizations where show = genericShow
instance decodeTooManyVPCAssociationAuthorizations :: Decode TooManyVPCAssociationAuthorizations where decode = genericDecode options
instance encodeTooManyVPCAssociationAuthorizations :: Encode TooManyVPCAssociationAuthorizations where encode = genericEncode options

-- | Constructs TooManyVPCAssociationAuthorizations from required parameters
newTooManyVPCAssociationAuthorizations :: TooManyVPCAssociationAuthorizations
newTooManyVPCAssociationAuthorizations  = TooManyVPCAssociationAuthorizations { "message": Nothing }

-- | Constructs TooManyVPCAssociationAuthorizations's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyVPCAssociationAuthorizations' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TooManyVPCAssociationAuthorizations
newTooManyVPCAssociationAuthorizations'  customize = (TooManyVPCAssociationAuthorizations <<< customize) { "message": Nothing }



newtype TrafficPolicies = TrafficPolicies (Array TrafficPolicy)
derive instance newtypeTrafficPolicies :: Newtype TrafficPolicies _
derive instance repGenericTrafficPolicies :: Generic TrafficPolicies _
instance showTrafficPolicies :: Show TrafficPolicies where show = genericShow
instance decodeTrafficPolicies :: Decode TrafficPolicies where decode = genericDecode options
instance encodeTrafficPolicies :: Encode TrafficPolicies where encode = genericEncode options



-- | <p>A complex type that contains settings for a traffic policy.</p>
newtype TrafficPolicy = TrafficPolicy 
  { "Id" :: (TrafficPolicyId)
  , "Version" :: (TrafficPolicyVersion)
  , "Name" :: (TrafficPolicyName)
  , "Type" :: (RRType)
  , "Document" :: (TrafficPolicyDocument)
  , "Comment" :: Maybe (TrafficPolicyComment)
  }
derive instance newtypeTrafficPolicy :: Newtype TrafficPolicy _
derive instance repGenericTrafficPolicy :: Generic TrafficPolicy _
instance showTrafficPolicy :: Show TrafficPolicy where show = genericShow
instance decodeTrafficPolicy :: Decode TrafficPolicy where decode = genericDecode options
instance encodeTrafficPolicy :: Encode TrafficPolicy where encode = genericEncode options

-- | Constructs TrafficPolicy from required parameters
newTrafficPolicy :: TrafficPolicyDocument -> TrafficPolicyId -> TrafficPolicyName -> RRType -> TrafficPolicyVersion -> TrafficPolicy
newTrafficPolicy _Document _Id _Name _Type _Version = TrafficPolicy { "Document": _Document, "Id": _Id, "Name": _Name, "Type": _Type, "Version": _Version, "Comment": Nothing }

-- | Constructs TrafficPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrafficPolicy' :: TrafficPolicyDocument -> TrafficPolicyId -> TrafficPolicyName -> RRType -> TrafficPolicyVersion -> ( { "Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) , "Name" :: (TrafficPolicyName) , "Type" :: (RRType) , "Document" :: (TrafficPolicyDocument) , "Comment" :: Maybe (TrafficPolicyComment) } -> {"Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) , "Name" :: (TrafficPolicyName) , "Type" :: (RRType) , "Document" :: (TrafficPolicyDocument) , "Comment" :: Maybe (TrafficPolicyComment) } ) -> TrafficPolicy
newTrafficPolicy' _Document _Id _Name _Type _Version customize = (TrafficPolicy <<< customize) { "Document": _Document, "Id": _Id, "Name": _Name, "Type": _Type, "Version": _Version, "Comment": Nothing }



-- | <p>A traffic policy that has the same value for <code>Name</code> already exists.</p>
newtype TrafficPolicyAlreadyExists = TrafficPolicyAlreadyExists 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTrafficPolicyAlreadyExists :: Newtype TrafficPolicyAlreadyExists _
derive instance repGenericTrafficPolicyAlreadyExists :: Generic TrafficPolicyAlreadyExists _
instance showTrafficPolicyAlreadyExists :: Show TrafficPolicyAlreadyExists where show = genericShow
instance decodeTrafficPolicyAlreadyExists :: Decode TrafficPolicyAlreadyExists where decode = genericDecode options
instance encodeTrafficPolicyAlreadyExists :: Encode TrafficPolicyAlreadyExists where encode = genericEncode options

-- | Constructs TrafficPolicyAlreadyExists from required parameters
newTrafficPolicyAlreadyExists :: TrafficPolicyAlreadyExists
newTrafficPolicyAlreadyExists  = TrafficPolicyAlreadyExists { "message": Nothing }

-- | Constructs TrafficPolicyAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrafficPolicyAlreadyExists' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TrafficPolicyAlreadyExists
newTrafficPolicyAlreadyExists'  customize = (TrafficPolicyAlreadyExists <<< customize) { "message": Nothing }



newtype TrafficPolicyComment = TrafficPolicyComment String
derive instance newtypeTrafficPolicyComment :: Newtype TrafficPolicyComment _
derive instance repGenericTrafficPolicyComment :: Generic TrafficPolicyComment _
instance showTrafficPolicyComment :: Show TrafficPolicyComment where show = genericShow
instance decodeTrafficPolicyComment :: Decode TrafficPolicyComment where decode = genericDecode options
instance encodeTrafficPolicyComment :: Encode TrafficPolicyComment where encode = genericEncode options



newtype TrafficPolicyDocument = TrafficPolicyDocument String
derive instance newtypeTrafficPolicyDocument :: Newtype TrafficPolicyDocument _
derive instance repGenericTrafficPolicyDocument :: Generic TrafficPolicyDocument _
instance showTrafficPolicyDocument :: Show TrafficPolicyDocument where show = genericShow
instance decodeTrafficPolicyDocument :: Decode TrafficPolicyDocument where decode = genericDecode options
instance encodeTrafficPolicyDocument :: Encode TrafficPolicyDocument where encode = genericEncode options



newtype TrafficPolicyId = TrafficPolicyId String
derive instance newtypeTrafficPolicyId :: Newtype TrafficPolicyId _
derive instance repGenericTrafficPolicyId :: Generic TrafficPolicyId _
instance showTrafficPolicyId :: Show TrafficPolicyId where show = genericShow
instance decodeTrafficPolicyId :: Decode TrafficPolicyId where decode = genericDecode options
instance encodeTrafficPolicyId :: Encode TrafficPolicyId where encode = genericEncode options



-- | <p>One or more traffic policy instances were created by using the specified traffic policy.</p>
newtype TrafficPolicyInUse = TrafficPolicyInUse 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTrafficPolicyInUse :: Newtype TrafficPolicyInUse _
derive instance repGenericTrafficPolicyInUse :: Generic TrafficPolicyInUse _
instance showTrafficPolicyInUse :: Show TrafficPolicyInUse where show = genericShow
instance decodeTrafficPolicyInUse :: Decode TrafficPolicyInUse where decode = genericDecode options
instance encodeTrafficPolicyInUse :: Encode TrafficPolicyInUse where encode = genericEncode options

-- | Constructs TrafficPolicyInUse from required parameters
newTrafficPolicyInUse :: TrafficPolicyInUse
newTrafficPolicyInUse  = TrafficPolicyInUse { "message": Nothing }

-- | Constructs TrafficPolicyInUse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrafficPolicyInUse' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TrafficPolicyInUse
newTrafficPolicyInUse'  customize = (TrafficPolicyInUse <<< customize) { "message": Nothing }



-- | <p>A complex type that contains settings for the new traffic policy instance.</p>
newtype TrafficPolicyInstance = TrafficPolicyInstance 
  { "Id" :: (TrafficPolicyInstanceId)
  , "HostedZoneId" :: (ResourceId)
  , "Name" :: (DNSName)
  , "TTL" :: (TTL)
  , "State" :: (TrafficPolicyInstanceState)
  , "Message" :: (Message)
  , "TrafficPolicyId" :: (TrafficPolicyId)
  , "TrafficPolicyVersion" :: (TrafficPolicyVersion)
  , "TrafficPolicyType" :: (RRType)
  }
derive instance newtypeTrafficPolicyInstance :: Newtype TrafficPolicyInstance _
derive instance repGenericTrafficPolicyInstance :: Generic TrafficPolicyInstance _
instance showTrafficPolicyInstance :: Show TrafficPolicyInstance where show = genericShow
instance decodeTrafficPolicyInstance :: Decode TrafficPolicyInstance where decode = genericDecode options
instance encodeTrafficPolicyInstance :: Encode TrafficPolicyInstance where encode = genericEncode options

-- | Constructs TrafficPolicyInstance from required parameters
newTrafficPolicyInstance :: ResourceId -> TrafficPolicyInstanceId -> Message -> DNSName -> TrafficPolicyInstanceState -> TTL -> TrafficPolicyId -> RRType -> TrafficPolicyVersion -> TrafficPolicyInstance
newTrafficPolicyInstance _HostedZoneId _Id _Message _Name _State _TTL _TrafficPolicyId _TrafficPolicyType _TrafficPolicyVersion = TrafficPolicyInstance { "HostedZoneId": _HostedZoneId, "Id": _Id, "Message": _Message, "Name": _Name, "State": _State, "TTL": _TTL, "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyType": _TrafficPolicyType, "TrafficPolicyVersion": _TrafficPolicyVersion }

-- | Constructs TrafficPolicyInstance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrafficPolicyInstance' :: ResourceId -> TrafficPolicyInstanceId -> Message -> DNSName -> TrafficPolicyInstanceState -> TTL -> TrafficPolicyId -> RRType -> TrafficPolicyVersion -> ( { "Id" :: (TrafficPolicyInstanceId) , "HostedZoneId" :: (ResourceId) , "Name" :: (DNSName) , "TTL" :: (TTL) , "State" :: (TrafficPolicyInstanceState) , "Message" :: (Message) , "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) , "TrafficPolicyType" :: (RRType) } -> {"Id" :: (TrafficPolicyInstanceId) , "HostedZoneId" :: (ResourceId) , "Name" :: (DNSName) , "TTL" :: (TTL) , "State" :: (TrafficPolicyInstanceState) , "Message" :: (Message) , "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) , "TrafficPolicyType" :: (RRType) } ) -> TrafficPolicyInstance
newTrafficPolicyInstance' _HostedZoneId _Id _Message _Name _State _TTL _TrafficPolicyId _TrafficPolicyType _TrafficPolicyVersion customize = (TrafficPolicyInstance <<< customize) { "HostedZoneId": _HostedZoneId, "Id": _Id, "Message": _Message, "Name": _Name, "State": _State, "TTL": _TTL, "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyType": _TrafficPolicyType, "TrafficPolicyVersion": _TrafficPolicyVersion }



-- | <p>There is already a traffic policy instance with the specified ID.</p>
newtype TrafficPolicyInstanceAlreadyExists = TrafficPolicyInstanceAlreadyExists 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTrafficPolicyInstanceAlreadyExists :: Newtype TrafficPolicyInstanceAlreadyExists _
derive instance repGenericTrafficPolicyInstanceAlreadyExists :: Generic TrafficPolicyInstanceAlreadyExists _
instance showTrafficPolicyInstanceAlreadyExists :: Show TrafficPolicyInstanceAlreadyExists where show = genericShow
instance decodeTrafficPolicyInstanceAlreadyExists :: Decode TrafficPolicyInstanceAlreadyExists where decode = genericDecode options
instance encodeTrafficPolicyInstanceAlreadyExists :: Encode TrafficPolicyInstanceAlreadyExists where encode = genericEncode options

-- | Constructs TrafficPolicyInstanceAlreadyExists from required parameters
newTrafficPolicyInstanceAlreadyExists :: TrafficPolicyInstanceAlreadyExists
newTrafficPolicyInstanceAlreadyExists  = TrafficPolicyInstanceAlreadyExists { "message": Nothing }

-- | Constructs TrafficPolicyInstanceAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrafficPolicyInstanceAlreadyExists' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TrafficPolicyInstanceAlreadyExists
newTrafficPolicyInstanceAlreadyExists'  customize = (TrafficPolicyInstanceAlreadyExists <<< customize) { "message": Nothing }



newtype TrafficPolicyInstanceCount = TrafficPolicyInstanceCount Int
derive instance newtypeTrafficPolicyInstanceCount :: Newtype TrafficPolicyInstanceCount _
derive instance repGenericTrafficPolicyInstanceCount :: Generic TrafficPolicyInstanceCount _
instance showTrafficPolicyInstanceCount :: Show TrafficPolicyInstanceCount where show = genericShow
instance decodeTrafficPolicyInstanceCount :: Decode TrafficPolicyInstanceCount where decode = genericDecode options
instance encodeTrafficPolicyInstanceCount :: Encode TrafficPolicyInstanceCount where encode = genericEncode options



newtype TrafficPolicyInstanceId = TrafficPolicyInstanceId String
derive instance newtypeTrafficPolicyInstanceId :: Newtype TrafficPolicyInstanceId _
derive instance repGenericTrafficPolicyInstanceId :: Generic TrafficPolicyInstanceId _
instance showTrafficPolicyInstanceId :: Show TrafficPolicyInstanceId where show = genericShow
instance decodeTrafficPolicyInstanceId :: Decode TrafficPolicyInstanceId where decode = genericDecode options
instance encodeTrafficPolicyInstanceId :: Encode TrafficPolicyInstanceId where encode = genericEncode options



newtype TrafficPolicyInstanceState = TrafficPolicyInstanceState String
derive instance newtypeTrafficPolicyInstanceState :: Newtype TrafficPolicyInstanceState _
derive instance repGenericTrafficPolicyInstanceState :: Generic TrafficPolicyInstanceState _
instance showTrafficPolicyInstanceState :: Show TrafficPolicyInstanceState where show = genericShow
instance decodeTrafficPolicyInstanceState :: Decode TrafficPolicyInstanceState where decode = genericDecode options
instance encodeTrafficPolicyInstanceState :: Encode TrafficPolicyInstanceState where encode = genericEncode options



newtype TrafficPolicyInstances = TrafficPolicyInstances (Array TrafficPolicyInstance)
derive instance newtypeTrafficPolicyInstances :: Newtype TrafficPolicyInstances _
derive instance repGenericTrafficPolicyInstances :: Generic TrafficPolicyInstances _
instance showTrafficPolicyInstances :: Show TrafficPolicyInstances where show = genericShow
instance decodeTrafficPolicyInstances :: Decode TrafficPolicyInstances where decode = genericDecode options
instance encodeTrafficPolicyInstances :: Encode TrafficPolicyInstances where encode = genericEncode options



newtype TrafficPolicyName = TrafficPolicyName String
derive instance newtypeTrafficPolicyName :: Newtype TrafficPolicyName _
derive instance repGenericTrafficPolicyName :: Generic TrafficPolicyName _
instance showTrafficPolicyName :: Show TrafficPolicyName where show = genericShow
instance decodeTrafficPolicyName :: Decode TrafficPolicyName where decode = genericDecode options
instance encodeTrafficPolicyName :: Encode TrafficPolicyName where encode = genericEncode options



newtype TrafficPolicySummaries = TrafficPolicySummaries (Array TrafficPolicySummary)
derive instance newtypeTrafficPolicySummaries :: Newtype TrafficPolicySummaries _
derive instance repGenericTrafficPolicySummaries :: Generic TrafficPolicySummaries _
instance showTrafficPolicySummaries :: Show TrafficPolicySummaries where show = genericShow
instance decodeTrafficPolicySummaries :: Decode TrafficPolicySummaries where decode = genericDecode options
instance encodeTrafficPolicySummaries :: Encode TrafficPolicySummaries where encode = genericEncode options



-- | <p>A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.</p>
newtype TrafficPolicySummary = TrafficPolicySummary 
  { "Id" :: (TrafficPolicyId)
  , "Name" :: (TrafficPolicyName)
  , "Type" :: (RRType)
  , "LatestVersion" :: (TrafficPolicyVersion)
  , "TrafficPolicyCount" :: (TrafficPolicyVersion)
  }
derive instance newtypeTrafficPolicySummary :: Newtype TrafficPolicySummary _
derive instance repGenericTrafficPolicySummary :: Generic TrafficPolicySummary _
instance showTrafficPolicySummary :: Show TrafficPolicySummary where show = genericShow
instance decodeTrafficPolicySummary :: Decode TrafficPolicySummary where decode = genericDecode options
instance encodeTrafficPolicySummary :: Encode TrafficPolicySummary where encode = genericEncode options

-- | Constructs TrafficPolicySummary from required parameters
newTrafficPolicySummary :: TrafficPolicyId -> TrafficPolicyVersion -> TrafficPolicyName -> TrafficPolicyVersion -> RRType -> TrafficPolicySummary
newTrafficPolicySummary _Id _LatestVersion _Name _TrafficPolicyCount _Type = TrafficPolicySummary { "Id": _Id, "LatestVersion": _LatestVersion, "Name": _Name, "TrafficPolicyCount": _TrafficPolicyCount, "Type": _Type }

-- | Constructs TrafficPolicySummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrafficPolicySummary' :: TrafficPolicyId -> TrafficPolicyVersion -> TrafficPolicyName -> TrafficPolicyVersion -> RRType -> ( { "Id" :: (TrafficPolicyId) , "Name" :: (TrafficPolicyName) , "Type" :: (RRType) , "LatestVersion" :: (TrafficPolicyVersion) , "TrafficPolicyCount" :: (TrafficPolicyVersion) } -> {"Id" :: (TrafficPolicyId) , "Name" :: (TrafficPolicyName) , "Type" :: (RRType) , "LatestVersion" :: (TrafficPolicyVersion) , "TrafficPolicyCount" :: (TrafficPolicyVersion) } ) -> TrafficPolicySummary
newTrafficPolicySummary' _Id _LatestVersion _Name _TrafficPolicyCount _Type customize = (TrafficPolicySummary <<< customize) { "Id": _Id, "LatestVersion": _LatestVersion, "Name": _Name, "TrafficPolicyCount": _TrafficPolicyCount, "Type": _Type }



newtype TrafficPolicyVersion = TrafficPolicyVersion Int
derive instance newtypeTrafficPolicyVersion :: Newtype TrafficPolicyVersion _
derive instance repGenericTrafficPolicyVersion :: Generic TrafficPolicyVersion _
instance showTrafficPolicyVersion :: Show TrafficPolicyVersion where show = genericShow
instance decodeTrafficPolicyVersion :: Decode TrafficPolicyVersion where decode = genericDecode options
instance encodeTrafficPolicyVersion :: Encode TrafficPolicyVersion where encode = genericEncode options



newtype TrafficPolicyVersionMarker = TrafficPolicyVersionMarker String
derive instance newtypeTrafficPolicyVersionMarker :: Newtype TrafficPolicyVersionMarker _
derive instance repGenericTrafficPolicyVersionMarker :: Generic TrafficPolicyVersionMarker _
instance showTrafficPolicyVersionMarker :: Show TrafficPolicyVersionMarker where show = genericShow
instance decodeTrafficPolicyVersionMarker :: Decode TrafficPolicyVersionMarker where decode = genericDecode options
instance encodeTrafficPolicyVersionMarker :: Encode TrafficPolicyVersionMarker where encode = genericEncode options



newtype TransportProtocol = TransportProtocol String
derive instance newtypeTransportProtocol :: Newtype TransportProtocol _
derive instance repGenericTransportProtocol :: Generic TransportProtocol _
instance showTransportProtocol :: Show TransportProtocol where show = genericShow
instance decodeTransportProtocol :: Decode TransportProtocol where decode = genericDecode options
instance encodeTransportProtocol :: Encode TransportProtocol where encode = genericEncode options



-- | <p>A complex type that contains information about a request to update a health check.</p>
newtype UpdateHealthCheckRequest = UpdateHealthCheckRequest 
  { "HealthCheckId" :: (HealthCheckId)
  , "HealthCheckVersion" :: Maybe (HealthCheckVersion)
  , "IPAddress" :: Maybe (IPAddress)
  , "Port" :: Maybe (Port)
  , "ResourcePath" :: Maybe (ResourcePath)
  , "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName)
  , "SearchString" :: Maybe (SearchString)
  , "FailureThreshold" :: Maybe (FailureThreshold)
  , "Inverted" :: Maybe (Inverted)
  , "HealthThreshold" :: Maybe (HealthThreshold)
  , "ChildHealthChecks" :: Maybe (ChildHealthCheckList)
  , "EnableSNI" :: Maybe (EnableSNI)
  , "Regions" :: Maybe (HealthCheckRegionList)
  , "AlarmIdentifier" :: Maybe (AlarmIdentifier)
  , "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus)
  , "ResetElements" :: Maybe (ResettableElementNameList)
  }
derive instance newtypeUpdateHealthCheckRequest :: Newtype UpdateHealthCheckRequest _
derive instance repGenericUpdateHealthCheckRequest :: Generic UpdateHealthCheckRequest _
instance showUpdateHealthCheckRequest :: Show UpdateHealthCheckRequest where show = genericShow
instance decodeUpdateHealthCheckRequest :: Decode UpdateHealthCheckRequest where decode = genericDecode options
instance encodeUpdateHealthCheckRequest :: Encode UpdateHealthCheckRequest where encode = genericEncode options

-- | Constructs UpdateHealthCheckRequest from required parameters
newUpdateHealthCheckRequest :: HealthCheckId -> UpdateHealthCheckRequest
newUpdateHealthCheckRequest _HealthCheckId = UpdateHealthCheckRequest { "HealthCheckId": _HealthCheckId, "AlarmIdentifier": Nothing, "ChildHealthChecks": Nothing, "EnableSNI": Nothing, "FailureThreshold": Nothing, "FullyQualifiedDomainName": Nothing, "HealthCheckVersion": Nothing, "HealthThreshold": Nothing, "IPAddress": Nothing, "InsufficientDataHealthStatus": Nothing, "Inverted": Nothing, "Port": Nothing, "Regions": Nothing, "ResetElements": Nothing, "ResourcePath": Nothing, "SearchString": Nothing }

-- | Constructs UpdateHealthCheckRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHealthCheckRequest' :: HealthCheckId -> ( { "HealthCheckId" :: (HealthCheckId) , "HealthCheckVersion" :: Maybe (HealthCheckVersion) , "IPAddress" :: Maybe (IPAddress) , "Port" :: Maybe (Port) , "ResourcePath" :: Maybe (ResourcePath) , "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName) , "SearchString" :: Maybe (SearchString) , "FailureThreshold" :: Maybe (FailureThreshold) , "Inverted" :: Maybe (Inverted) , "HealthThreshold" :: Maybe (HealthThreshold) , "ChildHealthChecks" :: Maybe (ChildHealthCheckList) , "EnableSNI" :: Maybe (EnableSNI) , "Regions" :: Maybe (HealthCheckRegionList) , "AlarmIdentifier" :: Maybe (AlarmIdentifier) , "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) , "ResetElements" :: Maybe (ResettableElementNameList) } -> {"HealthCheckId" :: (HealthCheckId) , "HealthCheckVersion" :: Maybe (HealthCheckVersion) , "IPAddress" :: Maybe (IPAddress) , "Port" :: Maybe (Port) , "ResourcePath" :: Maybe (ResourcePath) , "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName) , "SearchString" :: Maybe (SearchString) , "FailureThreshold" :: Maybe (FailureThreshold) , "Inverted" :: Maybe (Inverted) , "HealthThreshold" :: Maybe (HealthThreshold) , "ChildHealthChecks" :: Maybe (ChildHealthCheckList) , "EnableSNI" :: Maybe (EnableSNI) , "Regions" :: Maybe (HealthCheckRegionList) , "AlarmIdentifier" :: Maybe (AlarmIdentifier) , "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) , "ResetElements" :: Maybe (ResettableElementNameList) } ) -> UpdateHealthCheckRequest
newUpdateHealthCheckRequest' _HealthCheckId customize = (UpdateHealthCheckRequest <<< customize) { "HealthCheckId": _HealthCheckId, "AlarmIdentifier": Nothing, "ChildHealthChecks": Nothing, "EnableSNI": Nothing, "FailureThreshold": Nothing, "FullyQualifiedDomainName": Nothing, "HealthCheckVersion": Nothing, "HealthThreshold": Nothing, "IPAddress": Nothing, "InsufficientDataHealthStatus": Nothing, "Inverted": Nothing, "Port": Nothing, "Regions": Nothing, "ResetElements": Nothing, "ResourcePath": Nothing, "SearchString": Nothing }



newtype UpdateHealthCheckResponse = UpdateHealthCheckResponse 
  { "HealthCheck" :: (HealthCheck)
  }
derive instance newtypeUpdateHealthCheckResponse :: Newtype UpdateHealthCheckResponse _
derive instance repGenericUpdateHealthCheckResponse :: Generic UpdateHealthCheckResponse _
instance showUpdateHealthCheckResponse :: Show UpdateHealthCheckResponse where show = genericShow
instance decodeUpdateHealthCheckResponse :: Decode UpdateHealthCheckResponse where decode = genericDecode options
instance encodeUpdateHealthCheckResponse :: Encode UpdateHealthCheckResponse where encode = genericEncode options

-- | Constructs UpdateHealthCheckResponse from required parameters
newUpdateHealthCheckResponse :: HealthCheck -> UpdateHealthCheckResponse
newUpdateHealthCheckResponse _HealthCheck = UpdateHealthCheckResponse { "HealthCheck": _HealthCheck }

-- | Constructs UpdateHealthCheckResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHealthCheckResponse' :: HealthCheck -> ( { "HealthCheck" :: (HealthCheck) } -> {"HealthCheck" :: (HealthCheck) } ) -> UpdateHealthCheckResponse
newUpdateHealthCheckResponse' _HealthCheck customize = (UpdateHealthCheckResponse <<< customize) { "HealthCheck": _HealthCheck }



-- | <p>A request to update the comment for a hosted zone.</p>
newtype UpdateHostedZoneCommentRequest = UpdateHostedZoneCommentRequest 
  { "Id" :: (ResourceId)
  , "Comment" :: Maybe (ResourceDescription)
  }
derive instance newtypeUpdateHostedZoneCommentRequest :: Newtype UpdateHostedZoneCommentRequest _
derive instance repGenericUpdateHostedZoneCommentRequest :: Generic UpdateHostedZoneCommentRequest _
instance showUpdateHostedZoneCommentRequest :: Show UpdateHostedZoneCommentRequest where show = genericShow
instance decodeUpdateHostedZoneCommentRequest :: Decode UpdateHostedZoneCommentRequest where decode = genericDecode options
instance encodeUpdateHostedZoneCommentRequest :: Encode UpdateHostedZoneCommentRequest where encode = genericEncode options

-- | Constructs UpdateHostedZoneCommentRequest from required parameters
newUpdateHostedZoneCommentRequest :: ResourceId -> UpdateHostedZoneCommentRequest
newUpdateHostedZoneCommentRequest _Id = UpdateHostedZoneCommentRequest { "Id": _Id, "Comment": Nothing }

-- | Constructs UpdateHostedZoneCommentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHostedZoneCommentRequest' :: ResourceId -> ( { "Id" :: (ResourceId) , "Comment" :: Maybe (ResourceDescription) } -> {"Id" :: (ResourceId) , "Comment" :: Maybe (ResourceDescription) } ) -> UpdateHostedZoneCommentRequest
newUpdateHostedZoneCommentRequest' _Id customize = (UpdateHostedZoneCommentRequest <<< customize) { "Id": _Id, "Comment": Nothing }



-- | <p>A complex type that contains the response to the <code>UpdateHostedZoneComment</code> request.</p>
newtype UpdateHostedZoneCommentResponse = UpdateHostedZoneCommentResponse 
  { "HostedZone" :: (HostedZone)
  }
derive instance newtypeUpdateHostedZoneCommentResponse :: Newtype UpdateHostedZoneCommentResponse _
derive instance repGenericUpdateHostedZoneCommentResponse :: Generic UpdateHostedZoneCommentResponse _
instance showUpdateHostedZoneCommentResponse :: Show UpdateHostedZoneCommentResponse where show = genericShow
instance decodeUpdateHostedZoneCommentResponse :: Decode UpdateHostedZoneCommentResponse where decode = genericDecode options
instance encodeUpdateHostedZoneCommentResponse :: Encode UpdateHostedZoneCommentResponse where encode = genericEncode options

-- | Constructs UpdateHostedZoneCommentResponse from required parameters
newUpdateHostedZoneCommentResponse :: HostedZone -> UpdateHostedZoneCommentResponse
newUpdateHostedZoneCommentResponse _HostedZone = UpdateHostedZoneCommentResponse { "HostedZone": _HostedZone }

-- | Constructs UpdateHostedZoneCommentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateHostedZoneCommentResponse' :: HostedZone -> ( { "HostedZone" :: (HostedZone) } -> {"HostedZone" :: (HostedZone) } ) -> UpdateHostedZoneCommentResponse
newUpdateHostedZoneCommentResponse' _HostedZone customize = (UpdateHostedZoneCommentResponse <<< customize) { "HostedZone": _HostedZone }



-- | <p>A complex type that contains information about the traffic policy that you want to update the comment for.</p>
newtype UpdateTrafficPolicyCommentRequest = UpdateTrafficPolicyCommentRequest 
  { "Id" :: (TrafficPolicyId)
  , "Version" :: (TrafficPolicyVersion)
  , "Comment" :: (TrafficPolicyComment)
  }
derive instance newtypeUpdateTrafficPolicyCommentRequest :: Newtype UpdateTrafficPolicyCommentRequest _
derive instance repGenericUpdateTrafficPolicyCommentRequest :: Generic UpdateTrafficPolicyCommentRequest _
instance showUpdateTrafficPolicyCommentRequest :: Show UpdateTrafficPolicyCommentRequest where show = genericShow
instance decodeUpdateTrafficPolicyCommentRequest :: Decode UpdateTrafficPolicyCommentRequest where decode = genericDecode options
instance encodeUpdateTrafficPolicyCommentRequest :: Encode UpdateTrafficPolicyCommentRequest where encode = genericEncode options

-- | Constructs UpdateTrafficPolicyCommentRequest from required parameters
newUpdateTrafficPolicyCommentRequest :: TrafficPolicyComment -> TrafficPolicyId -> TrafficPolicyVersion -> UpdateTrafficPolicyCommentRequest
newUpdateTrafficPolicyCommentRequest _Comment _Id _Version = UpdateTrafficPolicyCommentRequest { "Comment": _Comment, "Id": _Id, "Version": _Version }

-- | Constructs UpdateTrafficPolicyCommentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTrafficPolicyCommentRequest' :: TrafficPolicyComment -> TrafficPolicyId -> TrafficPolicyVersion -> ( { "Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) , "Comment" :: (TrafficPolicyComment) } -> {"Id" :: (TrafficPolicyId) , "Version" :: (TrafficPolicyVersion) , "Comment" :: (TrafficPolicyComment) } ) -> UpdateTrafficPolicyCommentRequest
newUpdateTrafficPolicyCommentRequest' _Comment _Id _Version customize = (UpdateTrafficPolicyCommentRequest <<< customize) { "Comment": _Comment, "Id": _Id, "Version": _Version }



-- | <p>A complex type that contains the response information for the traffic policy.</p>
newtype UpdateTrafficPolicyCommentResponse = UpdateTrafficPolicyCommentResponse 
  { "TrafficPolicy" :: (TrafficPolicy)
  }
derive instance newtypeUpdateTrafficPolicyCommentResponse :: Newtype UpdateTrafficPolicyCommentResponse _
derive instance repGenericUpdateTrafficPolicyCommentResponse :: Generic UpdateTrafficPolicyCommentResponse _
instance showUpdateTrafficPolicyCommentResponse :: Show UpdateTrafficPolicyCommentResponse where show = genericShow
instance decodeUpdateTrafficPolicyCommentResponse :: Decode UpdateTrafficPolicyCommentResponse where decode = genericDecode options
instance encodeUpdateTrafficPolicyCommentResponse :: Encode UpdateTrafficPolicyCommentResponse where encode = genericEncode options

-- | Constructs UpdateTrafficPolicyCommentResponse from required parameters
newUpdateTrafficPolicyCommentResponse :: TrafficPolicy -> UpdateTrafficPolicyCommentResponse
newUpdateTrafficPolicyCommentResponse _TrafficPolicy = UpdateTrafficPolicyCommentResponse { "TrafficPolicy": _TrafficPolicy }

-- | Constructs UpdateTrafficPolicyCommentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTrafficPolicyCommentResponse' :: TrafficPolicy -> ( { "TrafficPolicy" :: (TrafficPolicy) } -> {"TrafficPolicy" :: (TrafficPolicy) } ) -> UpdateTrafficPolicyCommentResponse
newUpdateTrafficPolicyCommentResponse' _TrafficPolicy customize = (UpdateTrafficPolicyCommentResponse <<< customize) { "TrafficPolicy": _TrafficPolicy }



-- | <p>A complex type that contains information about the resource record sets that you want to update based on a specified traffic policy instance.</p>
newtype UpdateTrafficPolicyInstanceRequest = UpdateTrafficPolicyInstanceRequest 
  { "Id" :: (TrafficPolicyInstanceId)
  , "TTL" :: (TTL)
  , "TrafficPolicyId" :: (TrafficPolicyId)
  , "TrafficPolicyVersion" :: (TrafficPolicyVersion)
  }
derive instance newtypeUpdateTrafficPolicyInstanceRequest :: Newtype UpdateTrafficPolicyInstanceRequest _
derive instance repGenericUpdateTrafficPolicyInstanceRequest :: Generic UpdateTrafficPolicyInstanceRequest _
instance showUpdateTrafficPolicyInstanceRequest :: Show UpdateTrafficPolicyInstanceRequest where show = genericShow
instance decodeUpdateTrafficPolicyInstanceRequest :: Decode UpdateTrafficPolicyInstanceRequest where decode = genericDecode options
instance encodeUpdateTrafficPolicyInstanceRequest :: Encode UpdateTrafficPolicyInstanceRequest where encode = genericEncode options

-- | Constructs UpdateTrafficPolicyInstanceRequest from required parameters
newUpdateTrafficPolicyInstanceRequest :: TrafficPolicyInstanceId -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> UpdateTrafficPolicyInstanceRequest
newUpdateTrafficPolicyInstanceRequest _Id _TTL _TrafficPolicyId _TrafficPolicyVersion = UpdateTrafficPolicyInstanceRequest { "Id": _Id, "TTL": _TTL, "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyVersion": _TrafficPolicyVersion }

-- | Constructs UpdateTrafficPolicyInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTrafficPolicyInstanceRequest' :: TrafficPolicyInstanceId -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> ( { "Id" :: (TrafficPolicyInstanceId) , "TTL" :: (TTL) , "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) } -> {"Id" :: (TrafficPolicyInstanceId) , "TTL" :: (TTL) , "TrafficPolicyId" :: (TrafficPolicyId) , "TrafficPolicyVersion" :: (TrafficPolicyVersion) } ) -> UpdateTrafficPolicyInstanceRequest
newUpdateTrafficPolicyInstanceRequest' _Id _TTL _TrafficPolicyId _TrafficPolicyVersion customize = (UpdateTrafficPolicyInstanceRequest <<< customize) { "Id": _Id, "TTL": _TTL, "TrafficPolicyId": _TrafficPolicyId, "TrafficPolicyVersion": _TrafficPolicyVersion }



-- | <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
newtype UpdateTrafficPolicyInstanceResponse = UpdateTrafficPolicyInstanceResponse 
  { "TrafficPolicyInstance" :: (TrafficPolicyInstance)
  }
derive instance newtypeUpdateTrafficPolicyInstanceResponse :: Newtype UpdateTrafficPolicyInstanceResponse _
derive instance repGenericUpdateTrafficPolicyInstanceResponse :: Generic UpdateTrafficPolicyInstanceResponse _
instance showUpdateTrafficPolicyInstanceResponse :: Show UpdateTrafficPolicyInstanceResponse where show = genericShow
instance decodeUpdateTrafficPolicyInstanceResponse :: Decode UpdateTrafficPolicyInstanceResponse where decode = genericDecode options
instance encodeUpdateTrafficPolicyInstanceResponse :: Encode UpdateTrafficPolicyInstanceResponse where encode = genericEncode options

-- | Constructs UpdateTrafficPolicyInstanceResponse from required parameters
newUpdateTrafficPolicyInstanceResponse :: TrafficPolicyInstance -> UpdateTrafficPolicyInstanceResponse
newUpdateTrafficPolicyInstanceResponse _TrafficPolicyInstance = UpdateTrafficPolicyInstanceResponse { "TrafficPolicyInstance": _TrafficPolicyInstance }

-- | Constructs UpdateTrafficPolicyInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTrafficPolicyInstanceResponse' :: TrafficPolicyInstance -> ( { "TrafficPolicyInstance" :: (TrafficPolicyInstance) } -> {"TrafficPolicyInstance" :: (TrafficPolicyInstance) } ) -> UpdateTrafficPolicyInstanceResponse
newUpdateTrafficPolicyInstanceResponse' _TrafficPolicyInstance customize = (UpdateTrafficPolicyInstanceResponse <<< customize) { "TrafficPolicyInstance": _TrafficPolicyInstance }



newtype UsageCount = UsageCount Number
derive instance newtypeUsageCount :: Newtype UsageCount _
derive instance repGenericUsageCount :: Generic UsageCount _
instance showUsageCount :: Show UsageCount where show = genericShow
instance decodeUsageCount :: Decode UsageCount where decode = genericDecode options
instance encodeUsageCount :: Encode UsageCount where encode = genericEncode options



-- | <p>(Private hosted zones only) A complex type that contains information about an Amazon VPC.</p>
newtype VPC = VPC 
  { "VPCRegion" :: Maybe (VPCRegion)
  , "VPCId" :: Maybe (VPCId)
  }
derive instance newtypeVPC :: Newtype VPC _
derive instance repGenericVPC :: Generic VPC _
instance showVPC :: Show VPC where show = genericShow
instance decodeVPC :: Decode VPC where decode = genericDecode options
instance encodeVPC :: Encode VPC where encode = genericEncode options

-- | Constructs VPC from required parameters
newVPC :: VPC
newVPC  = VPC { "VPCId": Nothing, "VPCRegion": Nothing }

-- | Constructs VPC's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVPC' :: ( { "VPCRegion" :: Maybe (VPCRegion) , "VPCId" :: Maybe (VPCId) } -> {"VPCRegion" :: Maybe (VPCRegion) , "VPCId" :: Maybe (VPCId) } ) -> VPC
newVPC'  customize = (VPC <<< customize) { "VPCId": Nothing, "VPCRegion": Nothing }



-- | <p>The VPC that you specified is not authorized to be associated with the hosted zone.</p>
newtype VPCAssociationAuthorizationNotFound = VPCAssociationAuthorizationNotFound 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeVPCAssociationAuthorizationNotFound :: Newtype VPCAssociationAuthorizationNotFound _
derive instance repGenericVPCAssociationAuthorizationNotFound :: Generic VPCAssociationAuthorizationNotFound _
instance showVPCAssociationAuthorizationNotFound :: Show VPCAssociationAuthorizationNotFound where show = genericShow
instance decodeVPCAssociationAuthorizationNotFound :: Decode VPCAssociationAuthorizationNotFound where decode = genericDecode options
instance encodeVPCAssociationAuthorizationNotFound :: Encode VPCAssociationAuthorizationNotFound where encode = genericEncode options

-- | Constructs VPCAssociationAuthorizationNotFound from required parameters
newVPCAssociationAuthorizationNotFound :: VPCAssociationAuthorizationNotFound
newVPCAssociationAuthorizationNotFound  = VPCAssociationAuthorizationNotFound { "message": Nothing }

-- | Constructs VPCAssociationAuthorizationNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVPCAssociationAuthorizationNotFound' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> VPCAssociationAuthorizationNotFound
newVPCAssociationAuthorizationNotFound'  customize = (VPCAssociationAuthorizationNotFound <<< customize) { "message": Nothing }



-- | <p>The specified VPC and hosted zone are not currently associated.</p>
newtype VPCAssociationNotFound = VPCAssociationNotFound 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeVPCAssociationNotFound :: Newtype VPCAssociationNotFound _
derive instance repGenericVPCAssociationNotFound :: Generic VPCAssociationNotFound _
instance showVPCAssociationNotFound :: Show VPCAssociationNotFound where show = genericShow
instance decodeVPCAssociationNotFound :: Decode VPCAssociationNotFound where decode = genericDecode options
instance encodeVPCAssociationNotFound :: Encode VPCAssociationNotFound where encode = genericEncode options

-- | Constructs VPCAssociationNotFound from required parameters
newVPCAssociationNotFound :: VPCAssociationNotFound
newVPCAssociationNotFound  = VPCAssociationNotFound { "message": Nothing }

-- | Constructs VPCAssociationNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVPCAssociationNotFound' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> VPCAssociationNotFound
newVPCAssociationNotFound'  customize = (VPCAssociationNotFound <<< customize) { "message": Nothing }



-- | <p>(Private hosted zones only) The ID of an Amazon VPC. </p>
newtype VPCId = VPCId String
derive instance newtypeVPCId :: Newtype VPCId _
derive instance repGenericVPCId :: Generic VPCId _
instance showVPCId :: Show VPCId where show = genericShow
instance decodeVPCId :: Decode VPCId where decode = genericDecode options
instance encodeVPCId :: Encode VPCId where encode = genericEncode options



newtype VPCRegion = VPCRegion String
derive instance newtypeVPCRegion :: Newtype VPCRegion _
derive instance repGenericVPCRegion :: Generic VPCRegion _
instance showVPCRegion :: Show VPCRegion where show = genericShow
instance decodeVPCRegion :: Decode VPCRegion where decode = genericDecode options
instance encodeVPCRegion :: Encode VPCRegion where encode = genericEncode options



-- | <p>(Private hosted zones only) A list of <code>VPC</code> elements.</p>
newtype VPCs = VPCs (Array VPC)
derive instance newtypeVPCs :: Newtype VPCs _
derive instance repGenericVPCs :: Generic VPCs _
instance showVPCs :: Show VPCs where show = genericShow
instance decodeVPCs :: Decode VPCs where decode = genericDecode options
instance encodeVPCs :: Encode VPCs where encode = genericEncode options

