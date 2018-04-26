## Module AWS.Route53.Types

#### `options`

``` purescript
options :: Options
```

#### `AccountLimit`

``` purescript
newtype AccountLimit
  = AccountLimit { "Type" :: AccountLimitType, "Value" :: LimitValue }
```

<p>A complex type that contains the type of limit that you specified in the request and the current value for that limit.</p>

##### Instances
``` purescript
Newtype AccountLimit _
Generic AccountLimit _
Show AccountLimit
Decode AccountLimit
Encode AccountLimit
```

#### `newAccountLimit`

``` purescript
newAccountLimit :: AccountLimitType -> LimitValue -> AccountLimit
```

Constructs AccountLimit from required parameters

#### `newAccountLimit'`

``` purescript
newAccountLimit' :: AccountLimitType -> LimitValue -> ({ "Type" :: AccountLimitType, "Value" :: LimitValue } -> { "Type" :: AccountLimitType, "Value" :: LimitValue }) -> AccountLimit
```

Constructs AccountLimit's fields from required parameters

#### `AccountLimitType`

``` purescript
newtype AccountLimitType
  = AccountLimitType String
```

##### Instances
``` purescript
Newtype AccountLimitType _
Generic AccountLimitType _
Show AccountLimitType
Decode AccountLimitType
Encode AccountLimitType
```

#### `AlarmIdentifier`

``` purescript
newtype AlarmIdentifier
  = AlarmIdentifier { "Region" :: CloudWatchRegion, "Name" :: AlarmName }
```

<p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>

##### Instances
``` purescript
Newtype AlarmIdentifier _
Generic AlarmIdentifier _
Show AlarmIdentifier
Decode AlarmIdentifier
Encode AlarmIdentifier
```

#### `newAlarmIdentifier`

``` purescript
newAlarmIdentifier :: AlarmName -> CloudWatchRegion -> AlarmIdentifier
```

Constructs AlarmIdentifier from required parameters

#### `newAlarmIdentifier'`

``` purescript
newAlarmIdentifier' :: AlarmName -> CloudWatchRegion -> ({ "Region" :: CloudWatchRegion, "Name" :: AlarmName } -> { "Region" :: CloudWatchRegion, "Name" :: AlarmName }) -> AlarmIdentifier
```

Constructs AlarmIdentifier's fields from required parameters

#### `AlarmName`

``` purescript
newtype AlarmName
  = AlarmName String
```

##### Instances
``` purescript
Newtype AlarmName _
Generic AlarmName _
Show AlarmName
Decode AlarmName
Encode AlarmName
```

#### `AliasHealthEnabled`

``` purescript
newtype AliasHealthEnabled
  = AliasHealthEnabled Boolean
```

##### Instances
``` purescript
Newtype AliasHealthEnabled _
Generic AliasHealthEnabled _
Show AliasHealthEnabled
Decode AliasHealthEnabled
Encode AliasHealthEnabled
```

#### `AliasTarget`

``` purescript
newtype AliasTarget
  = AliasTarget { "HostedZoneId" :: ResourceId, "DNSName" :: DNSName, "EvaluateTargetHealth" :: AliasHealthEnabled }
```

<p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set that you're redirecting queries to. An Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>When creating resource record sets for a private hosted zone, note the following:</p> <ul> <li> <p>Resource record sets can't be created for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a>.</p> </li> </ul>

##### Instances
``` purescript
Newtype AliasTarget _
Generic AliasTarget _
Show AliasTarget
Decode AliasTarget
Encode AliasTarget
```

#### `newAliasTarget`

``` purescript
newAliasTarget :: DNSName -> AliasHealthEnabled -> ResourceId -> AliasTarget
```

Constructs AliasTarget from required parameters

#### `newAliasTarget'`

``` purescript
newAliasTarget' :: DNSName -> AliasHealthEnabled -> ResourceId -> ({ "HostedZoneId" :: ResourceId, "DNSName" :: DNSName, "EvaluateTargetHealth" :: AliasHealthEnabled } -> { "HostedZoneId" :: ResourceId, "DNSName" :: DNSName, "EvaluateTargetHealth" :: AliasHealthEnabled }) -> AliasTarget
```

Constructs AliasTarget's fields from required parameters

#### `AssociateVPCComment`

``` purescript
newtype AssociateVPCComment
  = AssociateVPCComment String
```

##### Instances
``` purescript
Newtype AssociateVPCComment _
Generic AssociateVPCComment _
Show AssociateVPCComment
Decode AssociateVPCComment
Encode AssociateVPCComment
```

#### `AssociateVPCWithHostedZoneRequest`

``` purescript
newtype AssociateVPCWithHostedZoneRequest
  = AssociateVPCWithHostedZoneRequest { "HostedZoneId" :: ResourceId, "VPC" :: VPC, "Comment" :: Maybe (AssociateVPCComment) }
```

<p>A complex type that contains information about the request to associate a VPC with a private hosted zone.</p>

##### Instances
``` purescript
Newtype AssociateVPCWithHostedZoneRequest _
Generic AssociateVPCWithHostedZoneRequest _
Show AssociateVPCWithHostedZoneRequest
Decode AssociateVPCWithHostedZoneRequest
Encode AssociateVPCWithHostedZoneRequest
```

#### `newAssociateVPCWithHostedZoneRequest`

``` purescript
newAssociateVPCWithHostedZoneRequest :: ResourceId -> VPC -> AssociateVPCWithHostedZoneRequest
```

Constructs AssociateVPCWithHostedZoneRequest from required parameters

#### `newAssociateVPCWithHostedZoneRequest'`

``` purescript
newAssociateVPCWithHostedZoneRequest' :: ResourceId -> VPC -> ({ "HostedZoneId" :: ResourceId, "VPC" :: VPC, "Comment" :: Maybe (AssociateVPCComment) } -> { "HostedZoneId" :: ResourceId, "VPC" :: VPC, "Comment" :: Maybe (AssociateVPCComment) }) -> AssociateVPCWithHostedZoneRequest
```

Constructs AssociateVPCWithHostedZoneRequest's fields from required parameters

#### `AssociateVPCWithHostedZoneResponse`

``` purescript
newtype AssociateVPCWithHostedZoneResponse
  = AssociateVPCWithHostedZoneResponse { "ChangeInfo" :: ChangeInfo }
```

<p>A complex type that contains the response information for the <code>AssociateVPCWithHostedZone</code> request.</p>

##### Instances
``` purescript
Newtype AssociateVPCWithHostedZoneResponse _
Generic AssociateVPCWithHostedZoneResponse _
Show AssociateVPCWithHostedZoneResponse
Decode AssociateVPCWithHostedZoneResponse
Encode AssociateVPCWithHostedZoneResponse
```

#### `newAssociateVPCWithHostedZoneResponse`

``` purescript
newAssociateVPCWithHostedZoneResponse :: ChangeInfo -> AssociateVPCWithHostedZoneResponse
```

Constructs AssociateVPCWithHostedZoneResponse from required parameters

#### `newAssociateVPCWithHostedZoneResponse'`

``` purescript
newAssociateVPCWithHostedZoneResponse' :: ChangeInfo -> ({ "ChangeInfo" :: ChangeInfo } -> { "ChangeInfo" :: ChangeInfo }) -> AssociateVPCWithHostedZoneResponse
```

Constructs AssociateVPCWithHostedZoneResponse's fields from required parameters

#### `Change`

``` purescript
newtype Change
  = Change { "Action" :: ChangeAction, "ResourceRecordSet" :: ResourceRecordSet }
```

<p>The information for each resource record set that you want to change.</p>

##### Instances
``` purescript
Newtype Change _
Generic Change _
Show Change
Decode Change
Encode Change
```

#### `newChange`

``` purescript
newChange :: ChangeAction -> ResourceRecordSet -> Change
```

Constructs Change from required parameters

#### `newChange'`

``` purescript
newChange' :: ChangeAction -> ResourceRecordSet -> ({ "Action" :: ChangeAction, "ResourceRecordSet" :: ResourceRecordSet } -> { "Action" :: ChangeAction, "ResourceRecordSet" :: ResourceRecordSet }) -> Change
```

Constructs Change's fields from required parameters

#### `ChangeAction`

``` purescript
newtype ChangeAction
  = ChangeAction String
```

##### Instances
``` purescript
Newtype ChangeAction _
Generic ChangeAction _
Show ChangeAction
Decode ChangeAction
Encode ChangeAction
```

#### `ChangeBatch`

``` purescript
newtype ChangeBatch
  = ChangeBatch { "Comment" :: Maybe (ResourceDescription), "Changes" :: Changes }
```

<p>The information for a change request.</p>

##### Instances
``` purescript
Newtype ChangeBatch _
Generic ChangeBatch _
Show ChangeBatch
Decode ChangeBatch
Encode ChangeBatch
```

#### `newChangeBatch`

``` purescript
newChangeBatch :: Changes -> ChangeBatch
```

Constructs ChangeBatch from required parameters

#### `newChangeBatch'`

``` purescript
newChangeBatch' :: Changes -> ({ "Comment" :: Maybe (ResourceDescription), "Changes" :: Changes } -> { "Comment" :: Maybe (ResourceDescription), "Changes" :: Changes }) -> ChangeBatch
```

Constructs ChangeBatch's fields from required parameters

#### `ChangeInfo`

``` purescript
newtype ChangeInfo
  = ChangeInfo { "Id" :: ResourceId, "Status" :: ChangeStatus, "SubmittedAt" :: TimeStamp, "Comment" :: Maybe (ResourceDescription) }
```

<p>A complex type that describes change information about changes made to your hosted zone.</p>

##### Instances
``` purescript
Newtype ChangeInfo _
Generic ChangeInfo _
Show ChangeInfo
Decode ChangeInfo
Encode ChangeInfo
```

#### `newChangeInfo`

``` purescript
newChangeInfo :: ResourceId -> ChangeStatus -> TimeStamp -> ChangeInfo
```

Constructs ChangeInfo from required parameters

#### `newChangeInfo'`

``` purescript
newChangeInfo' :: ResourceId -> ChangeStatus -> TimeStamp -> ({ "Id" :: ResourceId, "Status" :: ChangeStatus, "SubmittedAt" :: TimeStamp, "Comment" :: Maybe (ResourceDescription) } -> { "Id" :: ResourceId, "Status" :: ChangeStatus, "SubmittedAt" :: TimeStamp, "Comment" :: Maybe (ResourceDescription) }) -> ChangeInfo
```

Constructs ChangeInfo's fields from required parameters

#### `ChangeResourceRecordSetsRequest`

``` purescript
newtype ChangeResourceRecordSetsRequest
  = ChangeResourceRecordSetsRequest { "HostedZoneId" :: ResourceId, "ChangeBatch" :: ChangeBatch }
```

<p>A complex type that contains change information for the resource record set.</p>

##### Instances
``` purescript
Newtype ChangeResourceRecordSetsRequest _
Generic ChangeResourceRecordSetsRequest _
Show ChangeResourceRecordSetsRequest
Decode ChangeResourceRecordSetsRequest
Encode ChangeResourceRecordSetsRequest
```

#### `newChangeResourceRecordSetsRequest`

``` purescript
newChangeResourceRecordSetsRequest :: ChangeBatch -> ResourceId -> ChangeResourceRecordSetsRequest
```

Constructs ChangeResourceRecordSetsRequest from required parameters

#### `newChangeResourceRecordSetsRequest'`

``` purescript
newChangeResourceRecordSetsRequest' :: ChangeBatch -> ResourceId -> ({ "HostedZoneId" :: ResourceId, "ChangeBatch" :: ChangeBatch } -> { "HostedZoneId" :: ResourceId, "ChangeBatch" :: ChangeBatch }) -> ChangeResourceRecordSetsRequest
```

Constructs ChangeResourceRecordSetsRequest's fields from required parameters

#### `ChangeResourceRecordSetsResponse`

``` purescript
newtype ChangeResourceRecordSetsResponse
  = ChangeResourceRecordSetsResponse { "ChangeInfo" :: ChangeInfo }
```

<p>A complex type containing the response for the request.</p>

##### Instances
``` purescript
Newtype ChangeResourceRecordSetsResponse _
Generic ChangeResourceRecordSetsResponse _
Show ChangeResourceRecordSetsResponse
Decode ChangeResourceRecordSetsResponse
Encode ChangeResourceRecordSetsResponse
```

#### `newChangeResourceRecordSetsResponse`

``` purescript
newChangeResourceRecordSetsResponse :: ChangeInfo -> ChangeResourceRecordSetsResponse
```

Constructs ChangeResourceRecordSetsResponse from required parameters

#### `newChangeResourceRecordSetsResponse'`

``` purescript
newChangeResourceRecordSetsResponse' :: ChangeInfo -> ({ "ChangeInfo" :: ChangeInfo } -> { "ChangeInfo" :: ChangeInfo }) -> ChangeResourceRecordSetsResponse
```

Constructs ChangeResourceRecordSetsResponse's fields from required parameters

#### `ChangeStatus`

``` purescript
newtype ChangeStatus
  = ChangeStatus String
```

##### Instances
``` purescript
Newtype ChangeStatus _
Generic ChangeStatus _
Show ChangeStatus
Decode ChangeStatus
Encode ChangeStatus
```

#### `ChangeTagsForResourceRequest`

``` purescript
newtype ChangeTagsForResourceRequest
  = ChangeTagsForResourceRequest { "ResourceType" :: TagResourceType, "ResourceId" :: TagResourceId, "AddTags" :: Maybe (TagList), "RemoveTagKeys" :: Maybe (TagKeyList) }
```

<p>A complex type that contains information about the tags that you want to add, edit, or delete.</p>

##### Instances
``` purescript
Newtype ChangeTagsForResourceRequest _
Generic ChangeTagsForResourceRequest _
Show ChangeTagsForResourceRequest
Decode ChangeTagsForResourceRequest
Encode ChangeTagsForResourceRequest
```

#### `newChangeTagsForResourceRequest`

``` purescript
newChangeTagsForResourceRequest :: TagResourceId -> TagResourceType -> ChangeTagsForResourceRequest
```

Constructs ChangeTagsForResourceRequest from required parameters

#### `newChangeTagsForResourceRequest'`

``` purescript
newChangeTagsForResourceRequest' :: TagResourceId -> TagResourceType -> ({ "ResourceType" :: TagResourceType, "ResourceId" :: TagResourceId, "AddTags" :: Maybe (TagList), "RemoveTagKeys" :: Maybe (TagKeyList) } -> { "ResourceType" :: TagResourceType, "ResourceId" :: TagResourceId, "AddTags" :: Maybe (TagList), "RemoveTagKeys" :: Maybe (TagKeyList) }) -> ChangeTagsForResourceRequest
```

Constructs ChangeTagsForResourceRequest's fields from required parameters

#### `ChangeTagsForResourceResponse`

``` purescript
newtype ChangeTagsForResourceResponse
  = ChangeTagsForResourceResponse NoArguments
```

<p>Empty response for the request.</p>

##### Instances
``` purescript
Newtype ChangeTagsForResourceResponse _
Generic ChangeTagsForResourceResponse _
Show ChangeTagsForResourceResponse
Decode ChangeTagsForResourceResponse
Encode ChangeTagsForResourceResponse
```

#### `Changes`

``` purescript
newtype Changes
  = Changes (Array Change)
```

##### Instances
``` purescript
Newtype Changes _
Generic Changes _
Show Changes
Decode Changes
Encode Changes
```

#### `CheckerIpRanges`

``` purescript
newtype CheckerIpRanges
  = CheckerIpRanges (Array IPAddressCidr)
```

##### Instances
``` purescript
Newtype CheckerIpRanges _
Generic CheckerIpRanges _
Show CheckerIpRanges
Decode CheckerIpRanges
Encode CheckerIpRanges
```

#### `ChildHealthCheckList`

``` purescript
newtype ChildHealthCheckList
  = ChildHealthCheckList (Array HealthCheckId)
```

##### Instances
``` purescript
Newtype ChildHealthCheckList _
Generic ChildHealthCheckList _
Show ChildHealthCheckList
Decode ChildHealthCheckList
Encode ChildHealthCheckList
```

#### `CloudWatchAlarmConfiguration`

``` purescript
newtype CloudWatchAlarmConfiguration
  = CloudWatchAlarmConfiguration { "EvaluationPeriods" :: EvaluationPeriods, "Threshold" :: Threshold, "ComparisonOperator" :: ComparisonOperator, "Period" :: Period, "MetricName" :: MetricName, "Namespace" :: Namespace, "Statistic" :: Statistic, "Dimensions" :: Maybe (DimensionList) }
```

<p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>

##### Instances
``` purescript
Newtype CloudWatchAlarmConfiguration _
Generic CloudWatchAlarmConfiguration _
Show CloudWatchAlarmConfiguration
Decode CloudWatchAlarmConfiguration
Encode CloudWatchAlarmConfiguration
```

#### `newCloudWatchAlarmConfiguration`

``` purescript
newCloudWatchAlarmConfiguration :: ComparisonOperator -> EvaluationPeriods -> MetricName -> Namespace -> Period -> Statistic -> Threshold -> CloudWatchAlarmConfiguration
```

Constructs CloudWatchAlarmConfiguration from required parameters

#### `newCloudWatchAlarmConfiguration'`

``` purescript
newCloudWatchAlarmConfiguration' :: ComparisonOperator -> EvaluationPeriods -> MetricName -> Namespace -> Period -> Statistic -> Threshold -> ({ "EvaluationPeriods" :: EvaluationPeriods, "Threshold" :: Threshold, "ComparisonOperator" :: ComparisonOperator, "Period" :: Period, "MetricName" :: MetricName, "Namespace" :: Namespace, "Statistic" :: Statistic, "Dimensions" :: Maybe (DimensionList) } -> { "EvaluationPeriods" :: EvaluationPeriods, "Threshold" :: Threshold, "ComparisonOperator" :: ComparisonOperator, "Period" :: Period, "MetricName" :: MetricName, "Namespace" :: Namespace, "Statistic" :: Statistic, "Dimensions" :: Maybe (DimensionList) }) -> CloudWatchAlarmConfiguration
```

Constructs CloudWatchAlarmConfiguration's fields from required parameters

#### `CloudWatchLogsLogGroupArn`

``` purescript
newtype CloudWatchLogsLogGroupArn
  = CloudWatchLogsLogGroupArn String
```

##### Instances
``` purescript
Newtype CloudWatchLogsLogGroupArn _
Generic CloudWatchLogsLogGroupArn _
Show CloudWatchLogsLogGroupArn
Decode CloudWatchLogsLogGroupArn
Encode CloudWatchLogsLogGroupArn
```

#### `CloudWatchRegion`

``` purescript
newtype CloudWatchRegion
  = CloudWatchRegion String
```

##### Instances
``` purescript
Newtype CloudWatchRegion _
Generic CloudWatchRegion _
Show CloudWatchRegion
Decode CloudWatchRegion
Encode CloudWatchRegion
```

#### `ComparisonOperator`

``` purescript
newtype ComparisonOperator
  = ComparisonOperator String
```

##### Instances
``` purescript
Newtype ComparisonOperator _
Generic ComparisonOperator _
Show ComparisonOperator
Decode ComparisonOperator
Encode ComparisonOperator
```

#### `ConcurrentModification`

``` purescript
newtype ConcurrentModification
  = ConcurrentModification { message :: Maybe (ErrorMessage) }
```

<p>Another user submitted a request to create, update, or delete the object at the same time that you did. Retry the request. </p>

##### Instances
``` purescript
Newtype ConcurrentModification _
Generic ConcurrentModification _
Show ConcurrentModification
Decode ConcurrentModification
Encode ConcurrentModification
```

#### `newConcurrentModification`

``` purescript
newConcurrentModification :: ConcurrentModification
```

Constructs ConcurrentModification from required parameters

#### `newConcurrentModification'`

``` purescript
newConcurrentModification' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> ConcurrentModification
```

Constructs ConcurrentModification's fields from required parameters

#### `ConflictingDomainExists`

``` purescript
newtype ConflictingDomainExists
  = ConflictingDomainExists { message :: Maybe (ErrorMessage) }
```

<p>The cause of this error depends on whether you're trying to create a public or a private hosted zone:</p> <ul> <li> <p> <b>Public hosted zone:</b> Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. For more information, see <a>CreateReusableDelegationSet</a>.</p> </li> <li> <p> <b>Private hosted zone:</b> You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.</p> </li> </ul>

##### Instances
``` purescript
Newtype ConflictingDomainExists _
Generic ConflictingDomainExists _
Show ConflictingDomainExists
Decode ConflictingDomainExists
Encode ConflictingDomainExists
```

#### `newConflictingDomainExists`

``` purescript
newConflictingDomainExists :: ConflictingDomainExists
```

Constructs ConflictingDomainExists from required parameters

#### `newConflictingDomainExists'`

``` purescript
newConflictingDomainExists' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> ConflictingDomainExists
```

Constructs ConflictingDomainExists's fields from required parameters

#### `ConflictingTypes`

``` purescript
newtype ConflictingTypes
  = ConflictingTypes { message :: Maybe (ErrorMessage) }
```

<p>You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the <code>CreateTrafficPolicy</code> or <code>CreateTrafficPolicyVersion</code>request. </p>

##### Instances
``` purescript
Newtype ConflictingTypes _
Generic ConflictingTypes _
Show ConflictingTypes
Decode ConflictingTypes
Encode ConflictingTypes
```

#### `newConflictingTypes`

``` purescript
newConflictingTypes :: ConflictingTypes
```

Constructs ConflictingTypes from required parameters

#### `newConflictingTypes'`

``` purescript
newConflictingTypes' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> ConflictingTypes
```

Constructs ConflictingTypes's fields from required parameters

#### `CreateHealthCheckRequest`

``` purescript
newtype CreateHealthCheckRequest
  = CreateHealthCheckRequest { "CallerReference" :: HealthCheckNonce, "HealthCheckConfig" :: HealthCheckConfig }
```

<p>A complex type that contains the health check request information.</p>

##### Instances
``` purescript
Newtype CreateHealthCheckRequest _
Generic CreateHealthCheckRequest _
Show CreateHealthCheckRequest
Decode CreateHealthCheckRequest
Encode CreateHealthCheckRequest
```

#### `newCreateHealthCheckRequest`

``` purescript
newCreateHealthCheckRequest :: HealthCheckNonce -> HealthCheckConfig -> CreateHealthCheckRequest
```

Constructs CreateHealthCheckRequest from required parameters

#### `newCreateHealthCheckRequest'`

``` purescript
newCreateHealthCheckRequest' :: HealthCheckNonce -> HealthCheckConfig -> ({ "CallerReference" :: HealthCheckNonce, "HealthCheckConfig" :: HealthCheckConfig } -> { "CallerReference" :: HealthCheckNonce, "HealthCheckConfig" :: HealthCheckConfig }) -> CreateHealthCheckRequest
```

Constructs CreateHealthCheckRequest's fields from required parameters

#### `CreateHealthCheckResponse`

``` purescript
newtype CreateHealthCheckResponse
  = CreateHealthCheckResponse { "HealthCheck" :: HealthCheck, "Location" :: ResourceURI }
```

<p>A complex type containing the response information for the new health check.</p>

##### Instances
``` purescript
Newtype CreateHealthCheckResponse _
Generic CreateHealthCheckResponse _
Show CreateHealthCheckResponse
Decode CreateHealthCheckResponse
Encode CreateHealthCheckResponse
```

#### `newCreateHealthCheckResponse`

``` purescript
newCreateHealthCheckResponse :: HealthCheck -> ResourceURI -> CreateHealthCheckResponse
```

Constructs CreateHealthCheckResponse from required parameters

#### `newCreateHealthCheckResponse'`

``` purescript
newCreateHealthCheckResponse' :: HealthCheck -> ResourceURI -> ({ "HealthCheck" :: HealthCheck, "Location" :: ResourceURI } -> { "HealthCheck" :: HealthCheck, "Location" :: ResourceURI }) -> CreateHealthCheckResponse
```

Constructs CreateHealthCheckResponse's fields from required parameters

#### `CreateHostedZoneRequest`

``` purescript
newtype CreateHostedZoneRequest
  = CreateHostedZoneRequest { "Name" :: DNSName, "VPC" :: Maybe (VPC), "CallerReference" :: Nonce, "HostedZoneConfig" :: Maybe (HostedZoneConfig), "DelegationSetId" :: Maybe (ResourceId) }
```

<p>A complex type that contains information about the request to create a hosted zone.</p>

##### Instances
``` purescript
Newtype CreateHostedZoneRequest _
Generic CreateHostedZoneRequest _
Show CreateHostedZoneRequest
Decode CreateHostedZoneRequest
Encode CreateHostedZoneRequest
```

#### `newCreateHostedZoneRequest`

``` purescript
newCreateHostedZoneRequest :: Nonce -> DNSName -> CreateHostedZoneRequest
```

Constructs CreateHostedZoneRequest from required parameters

#### `newCreateHostedZoneRequest'`

``` purescript
newCreateHostedZoneRequest' :: Nonce -> DNSName -> ({ "Name" :: DNSName, "VPC" :: Maybe (VPC), "CallerReference" :: Nonce, "HostedZoneConfig" :: Maybe (HostedZoneConfig), "DelegationSetId" :: Maybe (ResourceId) } -> { "Name" :: DNSName, "VPC" :: Maybe (VPC), "CallerReference" :: Nonce, "HostedZoneConfig" :: Maybe (HostedZoneConfig), "DelegationSetId" :: Maybe (ResourceId) }) -> CreateHostedZoneRequest
```

Constructs CreateHostedZoneRequest's fields from required parameters

#### `CreateHostedZoneResponse`

``` purescript
newtype CreateHostedZoneResponse
  = CreateHostedZoneResponse { "HostedZone" :: HostedZone, "ChangeInfo" :: ChangeInfo, "DelegationSet" :: DelegationSet, "VPC" :: Maybe (VPC), "Location" :: ResourceURI }
```

<p>A complex type containing the response information for the hosted zone.</p>

##### Instances
``` purescript
Newtype CreateHostedZoneResponse _
Generic CreateHostedZoneResponse _
Show CreateHostedZoneResponse
Decode CreateHostedZoneResponse
Encode CreateHostedZoneResponse
```

#### `newCreateHostedZoneResponse`

``` purescript
newCreateHostedZoneResponse :: ChangeInfo -> DelegationSet -> HostedZone -> ResourceURI -> CreateHostedZoneResponse
```

Constructs CreateHostedZoneResponse from required parameters

#### `newCreateHostedZoneResponse'`

``` purescript
newCreateHostedZoneResponse' :: ChangeInfo -> DelegationSet -> HostedZone -> ResourceURI -> ({ "HostedZone" :: HostedZone, "ChangeInfo" :: ChangeInfo, "DelegationSet" :: DelegationSet, "VPC" :: Maybe (VPC), "Location" :: ResourceURI } -> { "HostedZone" :: HostedZone, "ChangeInfo" :: ChangeInfo, "DelegationSet" :: DelegationSet, "VPC" :: Maybe (VPC), "Location" :: ResourceURI }) -> CreateHostedZoneResponse
```

Constructs CreateHostedZoneResponse's fields from required parameters

#### `CreateQueryLoggingConfigRequest`

``` purescript
newtype CreateQueryLoggingConfigRequest
  = CreateQueryLoggingConfigRequest { "HostedZoneId" :: ResourceId, "CloudWatchLogsLogGroupArn" :: CloudWatchLogsLogGroupArn }
```

##### Instances
``` purescript
Newtype CreateQueryLoggingConfigRequest _
Generic CreateQueryLoggingConfigRequest _
Show CreateQueryLoggingConfigRequest
Decode CreateQueryLoggingConfigRequest
Encode CreateQueryLoggingConfigRequest
```

#### `newCreateQueryLoggingConfigRequest`

``` purescript
newCreateQueryLoggingConfigRequest :: CloudWatchLogsLogGroupArn -> ResourceId -> CreateQueryLoggingConfigRequest
```

Constructs CreateQueryLoggingConfigRequest from required parameters

#### `newCreateQueryLoggingConfigRequest'`

``` purescript
newCreateQueryLoggingConfigRequest' :: CloudWatchLogsLogGroupArn -> ResourceId -> ({ "HostedZoneId" :: ResourceId, "CloudWatchLogsLogGroupArn" :: CloudWatchLogsLogGroupArn } -> { "HostedZoneId" :: ResourceId, "CloudWatchLogsLogGroupArn" :: CloudWatchLogsLogGroupArn }) -> CreateQueryLoggingConfigRequest
```

Constructs CreateQueryLoggingConfigRequest's fields from required parameters

#### `CreateQueryLoggingConfigResponse`

``` purescript
newtype CreateQueryLoggingConfigResponse
  = CreateQueryLoggingConfigResponse { "QueryLoggingConfig" :: QueryLoggingConfig, "Location" :: ResourceURI }
```

##### Instances
``` purescript
Newtype CreateQueryLoggingConfigResponse _
Generic CreateQueryLoggingConfigResponse _
Show CreateQueryLoggingConfigResponse
Decode CreateQueryLoggingConfigResponse
Encode CreateQueryLoggingConfigResponse
```

#### `newCreateQueryLoggingConfigResponse`

``` purescript
newCreateQueryLoggingConfigResponse :: ResourceURI -> QueryLoggingConfig -> CreateQueryLoggingConfigResponse
```

Constructs CreateQueryLoggingConfigResponse from required parameters

#### `newCreateQueryLoggingConfigResponse'`

``` purescript
newCreateQueryLoggingConfigResponse' :: ResourceURI -> QueryLoggingConfig -> ({ "QueryLoggingConfig" :: QueryLoggingConfig, "Location" :: ResourceURI } -> { "QueryLoggingConfig" :: QueryLoggingConfig, "Location" :: ResourceURI }) -> CreateQueryLoggingConfigResponse
```

Constructs CreateQueryLoggingConfigResponse's fields from required parameters

#### `CreateReusableDelegationSetRequest`

``` purescript
newtype CreateReusableDelegationSetRequest
  = CreateReusableDelegationSetRequest { "CallerReference" :: Nonce, "HostedZoneId" :: Maybe (ResourceId) }
```

##### Instances
``` purescript
Newtype CreateReusableDelegationSetRequest _
Generic CreateReusableDelegationSetRequest _
Show CreateReusableDelegationSetRequest
Decode CreateReusableDelegationSetRequest
Encode CreateReusableDelegationSetRequest
```

#### `newCreateReusableDelegationSetRequest`

``` purescript
newCreateReusableDelegationSetRequest :: Nonce -> CreateReusableDelegationSetRequest
```

Constructs CreateReusableDelegationSetRequest from required parameters

#### `newCreateReusableDelegationSetRequest'`

``` purescript
newCreateReusableDelegationSetRequest' :: Nonce -> ({ "CallerReference" :: Nonce, "HostedZoneId" :: Maybe (ResourceId) } -> { "CallerReference" :: Nonce, "HostedZoneId" :: Maybe (ResourceId) }) -> CreateReusableDelegationSetRequest
```

Constructs CreateReusableDelegationSetRequest's fields from required parameters

#### `CreateReusableDelegationSetResponse`

``` purescript
newtype CreateReusableDelegationSetResponse
  = CreateReusableDelegationSetResponse { "DelegationSet" :: DelegationSet, "Location" :: ResourceURI }
```

##### Instances
``` purescript
Newtype CreateReusableDelegationSetResponse _
Generic CreateReusableDelegationSetResponse _
Show CreateReusableDelegationSetResponse
Decode CreateReusableDelegationSetResponse
Encode CreateReusableDelegationSetResponse
```

#### `newCreateReusableDelegationSetResponse`

``` purescript
newCreateReusableDelegationSetResponse :: DelegationSet -> ResourceURI -> CreateReusableDelegationSetResponse
```

Constructs CreateReusableDelegationSetResponse from required parameters

#### `newCreateReusableDelegationSetResponse'`

``` purescript
newCreateReusableDelegationSetResponse' :: DelegationSet -> ResourceURI -> ({ "DelegationSet" :: DelegationSet, "Location" :: ResourceURI } -> { "DelegationSet" :: DelegationSet, "Location" :: ResourceURI }) -> CreateReusableDelegationSetResponse
```

Constructs CreateReusableDelegationSetResponse's fields from required parameters

#### `CreateTrafficPolicyInstanceRequest`

``` purescript
newtype CreateTrafficPolicyInstanceRequest
  = CreateTrafficPolicyInstanceRequest { "HostedZoneId" :: ResourceId, "Name" :: DNSName, "TTL" :: TTL, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion }
```

<p>A complex type that contains information about the resource record sets that you want to create based on a specified traffic policy.</p>

##### Instances
``` purescript
Newtype CreateTrafficPolicyInstanceRequest _
Generic CreateTrafficPolicyInstanceRequest _
Show CreateTrafficPolicyInstanceRequest
Decode CreateTrafficPolicyInstanceRequest
Encode CreateTrafficPolicyInstanceRequest
```

#### `newCreateTrafficPolicyInstanceRequest`

``` purescript
newCreateTrafficPolicyInstanceRequest :: ResourceId -> DNSName -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> CreateTrafficPolicyInstanceRequest
```

Constructs CreateTrafficPolicyInstanceRequest from required parameters

#### `newCreateTrafficPolicyInstanceRequest'`

``` purescript
newCreateTrafficPolicyInstanceRequest' :: ResourceId -> DNSName -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> ({ "HostedZoneId" :: ResourceId, "Name" :: DNSName, "TTL" :: TTL, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion } -> { "HostedZoneId" :: ResourceId, "Name" :: DNSName, "TTL" :: TTL, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion }) -> CreateTrafficPolicyInstanceRequest
```

Constructs CreateTrafficPolicyInstanceRequest's fields from required parameters

#### `CreateTrafficPolicyInstanceResponse`

``` purescript
newtype CreateTrafficPolicyInstanceResponse
  = CreateTrafficPolicyInstanceResponse { "TrafficPolicyInstance" :: TrafficPolicyInstance, "Location" :: ResourceURI }
```

<p>A complex type that contains the response information for the <code>CreateTrafficPolicyInstance</code> request.</p>

##### Instances
``` purescript
Newtype CreateTrafficPolicyInstanceResponse _
Generic CreateTrafficPolicyInstanceResponse _
Show CreateTrafficPolicyInstanceResponse
Decode CreateTrafficPolicyInstanceResponse
Encode CreateTrafficPolicyInstanceResponse
```

#### `newCreateTrafficPolicyInstanceResponse`

``` purescript
newCreateTrafficPolicyInstanceResponse :: ResourceURI -> TrafficPolicyInstance -> CreateTrafficPolicyInstanceResponse
```

Constructs CreateTrafficPolicyInstanceResponse from required parameters

#### `newCreateTrafficPolicyInstanceResponse'`

``` purescript
newCreateTrafficPolicyInstanceResponse' :: ResourceURI -> TrafficPolicyInstance -> ({ "TrafficPolicyInstance" :: TrafficPolicyInstance, "Location" :: ResourceURI } -> { "TrafficPolicyInstance" :: TrafficPolicyInstance, "Location" :: ResourceURI }) -> CreateTrafficPolicyInstanceResponse
```

Constructs CreateTrafficPolicyInstanceResponse's fields from required parameters

#### `CreateTrafficPolicyRequest`

``` purescript
newtype CreateTrafficPolicyRequest
  = CreateTrafficPolicyRequest { "Name" :: TrafficPolicyName, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) }
```

<p>A complex type that contains information about the traffic policy that you want to create.</p>

##### Instances
``` purescript
Newtype CreateTrafficPolicyRequest _
Generic CreateTrafficPolicyRequest _
Show CreateTrafficPolicyRequest
Decode CreateTrafficPolicyRequest
Encode CreateTrafficPolicyRequest
```

#### `newCreateTrafficPolicyRequest`

``` purescript
newCreateTrafficPolicyRequest :: TrafficPolicyDocument -> TrafficPolicyName -> CreateTrafficPolicyRequest
```

Constructs CreateTrafficPolicyRequest from required parameters

#### `newCreateTrafficPolicyRequest'`

``` purescript
newCreateTrafficPolicyRequest' :: TrafficPolicyDocument -> TrafficPolicyName -> ({ "Name" :: TrafficPolicyName, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) } -> { "Name" :: TrafficPolicyName, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) }) -> CreateTrafficPolicyRequest
```

Constructs CreateTrafficPolicyRequest's fields from required parameters

#### `CreateTrafficPolicyResponse`

``` purescript
newtype CreateTrafficPolicyResponse
  = CreateTrafficPolicyResponse { "TrafficPolicy" :: TrafficPolicy, "Location" :: ResourceURI }
```

<p>A complex type that contains the response information for the <code>CreateTrafficPolicy</code> request.</p>

##### Instances
``` purescript
Newtype CreateTrafficPolicyResponse _
Generic CreateTrafficPolicyResponse _
Show CreateTrafficPolicyResponse
Decode CreateTrafficPolicyResponse
Encode CreateTrafficPolicyResponse
```

#### `newCreateTrafficPolicyResponse`

``` purescript
newCreateTrafficPolicyResponse :: ResourceURI -> TrafficPolicy -> CreateTrafficPolicyResponse
```

Constructs CreateTrafficPolicyResponse from required parameters

#### `newCreateTrafficPolicyResponse'`

``` purescript
newCreateTrafficPolicyResponse' :: ResourceURI -> TrafficPolicy -> ({ "TrafficPolicy" :: TrafficPolicy, "Location" :: ResourceURI } -> { "TrafficPolicy" :: TrafficPolicy, "Location" :: ResourceURI }) -> CreateTrafficPolicyResponse
```

Constructs CreateTrafficPolicyResponse's fields from required parameters

#### `CreateTrafficPolicyVersionRequest`

``` purescript
newtype CreateTrafficPolicyVersionRequest
  = CreateTrafficPolicyVersionRequest { "Id" :: TrafficPolicyId, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) }
```

<p>A complex type that contains information about the traffic policy that you want to create a new version for.</p>

##### Instances
``` purescript
Newtype CreateTrafficPolicyVersionRequest _
Generic CreateTrafficPolicyVersionRequest _
Show CreateTrafficPolicyVersionRequest
Decode CreateTrafficPolicyVersionRequest
Encode CreateTrafficPolicyVersionRequest
```

#### `newCreateTrafficPolicyVersionRequest`

``` purescript
newCreateTrafficPolicyVersionRequest :: TrafficPolicyDocument -> TrafficPolicyId -> CreateTrafficPolicyVersionRequest
```

Constructs CreateTrafficPolicyVersionRequest from required parameters

#### `newCreateTrafficPolicyVersionRequest'`

``` purescript
newCreateTrafficPolicyVersionRequest' :: TrafficPolicyDocument -> TrafficPolicyId -> ({ "Id" :: TrafficPolicyId, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) } -> { "Id" :: TrafficPolicyId, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) }) -> CreateTrafficPolicyVersionRequest
```

Constructs CreateTrafficPolicyVersionRequest's fields from required parameters

#### `CreateTrafficPolicyVersionResponse`

``` purescript
newtype CreateTrafficPolicyVersionResponse
  = CreateTrafficPolicyVersionResponse { "TrafficPolicy" :: TrafficPolicy, "Location" :: ResourceURI }
```

<p>A complex type that contains the response information for the <code>CreateTrafficPolicyVersion</code> request.</p>

##### Instances
``` purescript
Newtype CreateTrafficPolicyVersionResponse _
Generic CreateTrafficPolicyVersionResponse _
Show CreateTrafficPolicyVersionResponse
Decode CreateTrafficPolicyVersionResponse
Encode CreateTrafficPolicyVersionResponse
```

#### `newCreateTrafficPolicyVersionResponse`

``` purescript
newCreateTrafficPolicyVersionResponse :: ResourceURI -> TrafficPolicy -> CreateTrafficPolicyVersionResponse
```

Constructs CreateTrafficPolicyVersionResponse from required parameters

#### `newCreateTrafficPolicyVersionResponse'`

``` purescript
newCreateTrafficPolicyVersionResponse' :: ResourceURI -> TrafficPolicy -> ({ "TrafficPolicy" :: TrafficPolicy, "Location" :: ResourceURI } -> { "TrafficPolicy" :: TrafficPolicy, "Location" :: ResourceURI }) -> CreateTrafficPolicyVersionResponse
```

Constructs CreateTrafficPolicyVersionResponse's fields from required parameters

#### `CreateVPCAssociationAuthorizationRequest`

``` purescript
newtype CreateVPCAssociationAuthorizationRequest
  = CreateVPCAssociationAuthorizationRequest { "HostedZoneId" :: ResourceId, "VPC" :: VPC }
```

<p>A complex type that contains information about the request to authorize associating a VPC with your private hosted zone. Authorization is only required when a private hosted zone and a VPC were created by using different accounts.</p>

##### Instances
``` purescript
Newtype CreateVPCAssociationAuthorizationRequest _
Generic CreateVPCAssociationAuthorizationRequest _
Show CreateVPCAssociationAuthorizationRequest
Decode CreateVPCAssociationAuthorizationRequest
Encode CreateVPCAssociationAuthorizationRequest
```

#### `newCreateVPCAssociationAuthorizationRequest`

``` purescript
newCreateVPCAssociationAuthorizationRequest :: ResourceId -> VPC -> CreateVPCAssociationAuthorizationRequest
```

Constructs CreateVPCAssociationAuthorizationRequest from required parameters

#### `newCreateVPCAssociationAuthorizationRequest'`

``` purescript
newCreateVPCAssociationAuthorizationRequest' :: ResourceId -> VPC -> ({ "HostedZoneId" :: ResourceId, "VPC" :: VPC } -> { "HostedZoneId" :: ResourceId, "VPC" :: VPC }) -> CreateVPCAssociationAuthorizationRequest
```

Constructs CreateVPCAssociationAuthorizationRequest's fields from required parameters

#### `CreateVPCAssociationAuthorizationResponse`

``` purescript
newtype CreateVPCAssociationAuthorizationResponse
  = CreateVPCAssociationAuthorizationResponse { "HostedZoneId" :: ResourceId, "VPC" :: VPC }
```

<p>A complex type that contains the response information from a <code>CreateVPCAssociationAuthorization</code> request.</p>

##### Instances
``` purescript
Newtype CreateVPCAssociationAuthorizationResponse _
Generic CreateVPCAssociationAuthorizationResponse _
Show CreateVPCAssociationAuthorizationResponse
Decode CreateVPCAssociationAuthorizationResponse
Encode CreateVPCAssociationAuthorizationResponse
```

#### `newCreateVPCAssociationAuthorizationResponse`

``` purescript
newCreateVPCAssociationAuthorizationResponse :: ResourceId -> VPC -> CreateVPCAssociationAuthorizationResponse
```

Constructs CreateVPCAssociationAuthorizationResponse from required parameters

#### `newCreateVPCAssociationAuthorizationResponse'`

``` purescript
newCreateVPCAssociationAuthorizationResponse' :: ResourceId -> VPC -> ({ "HostedZoneId" :: ResourceId, "VPC" :: VPC } -> { "HostedZoneId" :: ResourceId, "VPC" :: VPC }) -> CreateVPCAssociationAuthorizationResponse
```

Constructs CreateVPCAssociationAuthorizationResponse's fields from required parameters

#### `DNSName`

``` purescript
newtype DNSName
  = DNSName String
```

##### Instances
``` purescript
Newtype DNSName _
Generic DNSName _
Show DNSName
Decode DNSName
Encode DNSName
```

#### `DNSRCode`

``` purescript
newtype DNSRCode
  = DNSRCode String
```

##### Instances
``` purescript
Newtype DNSRCode _
Generic DNSRCode _
Show DNSRCode
Decode DNSRCode
Encode DNSRCode
```

#### `DelegationSet`

``` purescript
newtype DelegationSet
  = DelegationSet { "Id" :: Maybe (ResourceId), "CallerReference" :: Maybe (Nonce), "NameServers" :: DelegationSetNameServers }
```

<p>A complex type that lists the name servers in a delegation set, as well as the <code>CallerReference</code> and the <code>ID</code> for the delegation set.</p>

##### Instances
``` purescript
Newtype DelegationSet _
Generic DelegationSet _
Show DelegationSet
Decode DelegationSet
Encode DelegationSet
```

#### `newDelegationSet`

``` purescript
newDelegationSet :: DelegationSetNameServers -> DelegationSet
```

Constructs DelegationSet from required parameters

#### `newDelegationSet'`

``` purescript
newDelegationSet' :: DelegationSetNameServers -> ({ "Id" :: Maybe (ResourceId), "CallerReference" :: Maybe (Nonce), "NameServers" :: DelegationSetNameServers } -> { "Id" :: Maybe (ResourceId), "CallerReference" :: Maybe (Nonce), "NameServers" :: DelegationSetNameServers }) -> DelegationSet
```

Constructs DelegationSet's fields from required parameters

#### `DelegationSetAlreadyCreated`

``` purescript
newtype DelegationSetAlreadyCreated
  = DelegationSetAlreadyCreated { message :: Maybe (ErrorMessage) }
```

<p>A delegation set with the same owner and caller reference combination has already been created.</p>

##### Instances
``` purescript
Newtype DelegationSetAlreadyCreated _
Generic DelegationSetAlreadyCreated _
Show DelegationSetAlreadyCreated
Decode DelegationSetAlreadyCreated
Encode DelegationSetAlreadyCreated
```

#### `newDelegationSetAlreadyCreated`

``` purescript
newDelegationSetAlreadyCreated :: DelegationSetAlreadyCreated
```

Constructs DelegationSetAlreadyCreated from required parameters

#### `newDelegationSetAlreadyCreated'`

``` purescript
newDelegationSetAlreadyCreated' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DelegationSetAlreadyCreated
```

Constructs DelegationSetAlreadyCreated's fields from required parameters

#### `DelegationSetAlreadyReusable`

``` purescript
newtype DelegationSetAlreadyReusable
  = DelegationSetAlreadyReusable { message :: Maybe (ErrorMessage) }
```

<p>The specified delegation set has already been marked as reusable.</p>

##### Instances
``` purescript
Newtype DelegationSetAlreadyReusable _
Generic DelegationSetAlreadyReusable _
Show DelegationSetAlreadyReusable
Decode DelegationSetAlreadyReusable
Encode DelegationSetAlreadyReusable
```

#### `newDelegationSetAlreadyReusable`

``` purescript
newDelegationSetAlreadyReusable :: DelegationSetAlreadyReusable
```

Constructs DelegationSetAlreadyReusable from required parameters

#### `newDelegationSetAlreadyReusable'`

``` purescript
newDelegationSetAlreadyReusable' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DelegationSetAlreadyReusable
```

Constructs DelegationSetAlreadyReusable's fields from required parameters

#### `DelegationSetInUse`

``` purescript
newtype DelegationSetInUse
  = DelegationSetInUse { message :: Maybe (ErrorMessage) }
```

<p>The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.</p>

##### Instances
``` purescript
Newtype DelegationSetInUse _
Generic DelegationSetInUse _
Show DelegationSetInUse
Decode DelegationSetInUse
Encode DelegationSetInUse
```

#### `newDelegationSetInUse`

``` purescript
newDelegationSetInUse :: DelegationSetInUse
```

Constructs DelegationSetInUse from required parameters

#### `newDelegationSetInUse'`

``` purescript
newDelegationSetInUse' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DelegationSetInUse
```

Constructs DelegationSetInUse's fields from required parameters

#### `DelegationSetNameServers`

``` purescript
newtype DelegationSetNameServers
  = DelegationSetNameServers (Array DNSName)
```

##### Instances
``` purescript
Newtype DelegationSetNameServers _
Generic DelegationSetNameServers _
Show DelegationSetNameServers
Decode DelegationSetNameServers
Encode DelegationSetNameServers
```

#### `DelegationSetNotAvailable`

``` purescript
newtype DelegationSetNotAvailable
  = DelegationSetNotAvailable { message :: Maybe (ErrorMessage) }
```

<p>You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Amazon Route 53 generates this error, contact Customer Support.</p>

##### Instances
``` purescript
Newtype DelegationSetNotAvailable _
Generic DelegationSetNotAvailable _
Show DelegationSetNotAvailable
Decode DelegationSetNotAvailable
Encode DelegationSetNotAvailable
```

#### `newDelegationSetNotAvailable`

``` purescript
newDelegationSetNotAvailable :: DelegationSetNotAvailable
```

Constructs DelegationSetNotAvailable from required parameters

#### `newDelegationSetNotAvailable'`

``` purescript
newDelegationSetNotAvailable' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DelegationSetNotAvailable
```

Constructs DelegationSetNotAvailable's fields from required parameters

#### `DelegationSetNotReusable`

``` purescript
newtype DelegationSetNotReusable
  = DelegationSetNotReusable { message :: Maybe (ErrorMessage) }
```

<p>A reusable delegation set with the specified ID does not exist.</p>

##### Instances
``` purescript
Newtype DelegationSetNotReusable _
Generic DelegationSetNotReusable _
Show DelegationSetNotReusable
Decode DelegationSetNotReusable
Encode DelegationSetNotReusable
```

#### `newDelegationSetNotReusable`

``` purescript
newDelegationSetNotReusable :: DelegationSetNotReusable
```

Constructs DelegationSetNotReusable from required parameters

#### `newDelegationSetNotReusable'`

``` purescript
newDelegationSetNotReusable' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DelegationSetNotReusable
```

Constructs DelegationSetNotReusable's fields from required parameters

#### `DelegationSets`

``` purescript
newtype DelegationSets
  = DelegationSets (Array DelegationSet)
```

##### Instances
``` purescript
Newtype DelegationSets _
Generic DelegationSets _
Show DelegationSets
Decode DelegationSets
Encode DelegationSets
```

#### `DeleteHealthCheckRequest`

``` purescript
newtype DeleteHealthCheckRequest
  = DeleteHealthCheckRequest { "HealthCheckId" :: HealthCheckId }
```

<p>This action deletes a health check.</p>

##### Instances
``` purescript
Newtype DeleteHealthCheckRequest _
Generic DeleteHealthCheckRequest _
Show DeleteHealthCheckRequest
Decode DeleteHealthCheckRequest
Encode DeleteHealthCheckRequest
```

#### `newDeleteHealthCheckRequest`

``` purescript
newDeleteHealthCheckRequest :: HealthCheckId -> DeleteHealthCheckRequest
```

Constructs DeleteHealthCheckRequest from required parameters

#### `newDeleteHealthCheckRequest'`

``` purescript
newDeleteHealthCheckRequest' :: HealthCheckId -> ({ "HealthCheckId" :: HealthCheckId } -> { "HealthCheckId" :: HealthCheckId }) -> DeleteHealthCheckRequest
```

Constructs DeleteHealthCheckRequest's fields from required parameters

#### `DeleteHealthCheckResponse`

``` purescript
newtype DeleteHealthCheckResponse
  = DeleteHealthCheckResponse NoArguments
```

<p>An empty element.</p>

##### Instances
``` purescript
Newtype DeleteHealthCheckResponse _
Generic DeleteHealthCheckResponse _
Show DeleteHealthCheckResponse
Decode DeleteHealthCheckResponse
Encode DeleteHealthCheckResponse
```

#### `DeleteHostedZoneRequest`

``` purescript
newtype DeleteHostedZoneRequest
  = DeleteHostedZoneRequest { "Id" :: ResourceId }
```

<p>A request to delete a hosted zone.</p>

##### Instances
``` purescript
Newtype DeleteHostedZoneRequest _
Generic DeleteHostedZoneRequest _
Show DeleteHostedZoneRequest
Decode DeleteHostedZoneRequest
Encode DeleteHostedZoneRequest
```

#### `newDeleteHostedZoneRequest`

``` purescript
newDeleteHostedZoneRequest :: ResourceId -> DeleteHostedZoneRequest
```

Constructs DeleteHostedZoneRequest from required parameters

#### `newDeleteHostedZoneRequest'`

``` purescript
newDeleteHostedZoneRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> DeleteHostedZoneRequest
```

Constructs DeleteHostedZoneRequest's fields from required parameters

#### `DeleteHostedZoneResponse`

``` purescript
newtype DeleteHostedZoneResponse
  = DeleteHostedZoneResponse { "ChangeInfo" :: ChangeInfo }
```

<p>A complex type that contains the response to a <code>DeleteHostedZone</code> request.</p>

##### Instances
``` purescript
Newtype DeleteHostedZoneResponse _
Generic DeleteHostedZoneResponse _
Show DeleteHostedZoneResponse
Decode DeleteHostedZoneResponse
Encode DeleteHostedZoneResponse
```

#### `newDeleteHostedZoneResponse`

``` purescript
newDeleteHostedZoneResponse :: ChangeInfo -> DeleteHostedZoneResponse
```

Constructs DeleteHostedZoneResponse from required parameters

#### `newDeleteHostedZoneResponse'`

``` purescript
newDeleteHostedZoneResponse' :: ChangeInfo -> ({ "ChangeInfo" :: ChangeInfo } -> { "ChangeInfo" :: ChangeInfo }) -> DeleteHostedZoneResponse
```

Constructs DeleteHostedZoneResponse's fields from required parameters

#### `DeleteQueryLoggingConfigRequest`

``` purescript
newtype DeleteQueryLoggingConfigRequest
  = DeleteQueryLoggingConfigRequest { "Id" :: QueryLoggingConfigId }
```

##### Instances
``` purescript
Newtype DeleteQueryLoggingConfigRequest _
Generic DeleteQueryLoggingConfigRequest _
Show DeleteQueryLoggingConfigRequest
Decode DeleteQueryLoggingConfigRequest
Encode DeleteQueryLoggingConfigRequest
```

#### `newDeleteQueryLoggingConfigRequest`

``` purescript
newDeleteQueryLoggingConfigRequest :: QueryLoggingConfigId -> DeleteQueryLoggingConfigRequest
```

Constructs DeleteQueryLoggingConfigRequest from required parameters

#### `newDeleteQueryLoggingConfigRequest'`

``` purescript
newDeleteQueryLoggingConfigRequest' :: QueryLoggingConfigId -> ({ "Id" :: QueryLoggingConfigId } -> { "Id" :: QueryLoggingConfigId }) -> DeleteQueryLoggingConfigRequest
```

Constructs DeleteQueryLoggingConfigRequest's fields from required parameters

#### `DeleteQueryLoggingConfigResponse`

``` purescript
newtype DeleteQueryLoggingConfigResponse
  = DeleteQueryLoggingConfigResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteQueryLoggingConfigResponse _
Generic DeleteQueryLoggingConfigResponse _
Show DeleteQueryLoggingConfigResponse
Decode DeleteQueryLoggingConfigResponse
Encode DeleteQueryLoggingConfigResponse
```

#### `DeleteReusableDelegationSetRequest`

``` purescript
newtype DeleteReusableDelegationSetRequest
  = DeleteReusableDelegationSetRequest { "Id" :: ResourceId }
```

<p>A request to delete a reusable delegation set.</p>

##### Instances
``` purescript
Newtype DeleteReusableDelegationSetRequest _
Generic DeleteReusableDelegationSetRequest _
Show DeleteReusableDelegationSetRequest
Decode DeleteReusableDelegationSetRequest
Encode DeleteReusableDelegationSetRequest
```

#### `newDeleteReusableDelegationSetRequest`

``` purescript
newDeleteReusableDelegationSetRequest :: ResourceId -> DeleteReusableDelegationSetRequest
```

Constructs DeleteReusableDelegationSetRequest from required parameters

#### `newDeleteReusableDelegationSetRequest'`

``` purescript
newDeleteReusableDelegationSetRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> DeleteReusableDelegationSetRequest
```

Constructs DeleteReusableDelegationSetRequest's fields from required parameters

#### `DeleteReusableDelegationSetResponse`

``` purescript
newtype DeleteReusableDelegationSetResponse
  = DeleteReusableDelegationSetResponse NoArguments
```

<p>An empty element.</p>

##### Instances
``` purescript
Newtype DeleteReusableDelegationSetResponse _
Generic DeleteReusableDelegationSetResponse _
Show DeleteReusableDelegationSetResponse
Decode DeleteReusableDelegationSetResponse
Encode DeleteReusableDelegationSetResponse
```

#### `DeleteTrafficPolicyInstanceRequest`

``` purescript
newtype DeleteTrafficPolicyInstanceRequest
  = DeleteTrafficPolicyInstanceRequest { "Id" :: TrafficPolicyInstanceId }
```

<p>A request to delete a specified traffic policy instance.</p>

##### Instances
``` purescript
Newtype DeleteTrafficPolicyInstanceRequest _
Generic DeleteTrafficPolicyInstanceRequest _
Show DeleteTrafficPolicyInstanceRequest
Decode DeleteTrafficPolicyInstanceRequest
Encode DeleteTrafficPolicyInstanceRequest
```

#### `newDeleteTrafficPolicyInstanceRequest`

``` purescript
newDeleteTrafficPolicyInstanceRequest :: TrafficPolicyInstanceId -> DeleteTrafficPolicyInstanceRequest
```

Constructs DeleteTrafficPolicyInstanceRequest from required parameters

#### `newDeleteTrafficPolicyInstanceRequest'`

``` purescript
newDeleteTrafficPolicyInstanceRequest' :: TrafficPolicyInstanceId -> ({ "Id" :: TrafficPolicyInstanceId } -> { "Id" :: TrafficPolicyInstanceId }) -> DeleteTrafficPolicyInstanceRequest
```

Constructs DeleteTrafficPolicyInstanceRequest's fields from required parameters

#### `DeleteTrafficPolicyInstanceResponse`

``` purescript
newtype DeleteTrafficPolicyInstanceResponse
  = DeleteTrafficPolicyInstanceResponse NoArguments
```

<p>An empty element.</p>

##### Instances
``` purescript
Newtype DeleteTrafficPolicyInstanceResponse _
Generic DeleteTrafficPolicyInstanceResponse _
Show DeleteTrafficPolicyInstanceResponse
Decode DeleteTrafficPolicyInstanceResponse
Encode DeleteTrafficPolicyInstanceResponse
```

#### `DeleteTrafficPolicyRequest`

``` purescript
newtype DeleteTrafficPolicyRequest
  = DeleteTrafficPolicyRequest { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion }
```

<p>A request to delete a specified traffic policy version.</p>

##### Instances
``` purescript
Newtype DeleteTrafficPolicyRequest _
Generic DeleteTrafficPolicyRequest _
Show DeleteTrafficPolicyRequest
Decode DeleteTrafficPolicyRequest
Encode DeleteTrafficPolicyRequest
```

#### `newDeleteTrafficPolicyRequest`

``` purescript
newDeleteTrafficPolicyRequest :: TrafficPolicyId -> TrafficPolicyVersion -> DeleteTrafficPolicyRequest
```

Constructs DeleteTrafficPolicyRequest from required parameters

#### `newDeleteTrafficPolicyRequest'`

``` purescript
newDeleteTrafficPolicyRequest' :: TrafficPolicyId -> TrafficPolicyVersion -> ({ "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion } -> { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion }) -> DeleteTrafficPolicyRequest
```

Constructs DeleteTrafficPolicyRequest's fields from required parameters

#### `DeleteTrafficPolicyResponse`

``` purescript
newtype DeleteTrafficPolicyResponse
  = DeleteTrafficPolicyResponse NoArguments
```

<p>An empty element.</p>

##### Instances
``` purescript
Newtype DeleteTrafficPolicyResponse _
Generic DeleteTrafficPolicyResponse _
Show DeleteTrafficPolicyResponse
Decode DeleteTrafficPolicyResponse
Encode DeleteTrafficPolicyResponse
```

#### `DeleteVPCAssociationAuthorizationRequest`

``` purescript
newtype DeleteVPCAssociationAuthorizationRequest
  = DeleteVPCAssociationAuthorizationRequest { "HostedZoneId" :: ResourceId, "VPC" :: VPC }
```

<p>A complex type that contains information about the request to remove authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account. </p>

##### Instances
``` purescript
Newtype DeleteVPCAssociationAuthorizationRequest _
Generic DeleteVPCAssociationAuthorizationRequest _
Show DeleteVPCAssociationAuthorizationRequest
Decode DeleteVPCAssociationAuthorizationRequest
Encode DeleteVPCAssociationAuthorizationRequest
```

#### `newDeleteVPCAssociationAuthorizationRequest`

``` purescript
newDeleteVPCAssociationAuthorizationRequest :: ResourceId -> VPC -> DeleteVPCAssociationAuthorizationRequest
```

Constructs DeleteVPCAssociationAuthorizationRequest from required parameters

#### `newDeleteVPCAssociationAuthorizationRequest'`

``` purescript
newDeleteVPCAssociationAuthorizationRequest' :: ResourceId -> VPC -> ({ "HostedZoneId" :: ResourceId, "VPC" :: VPC } -> { "HostedZoneId" :: ResourceId, "VPC" :: VPC }) -> DeleteVPCAssociationAuthorizationRequest
```

Constructs DeleteVPCAssociationAuthorizationRequest's fields from required parameters

#### `DeleteVPCAssociationAuthorizationResponse`

``` purescript
newtype DeleteVPCAssociationAuthorizationResponse
  = DeleteVPCAssociationAuthorizationResponse NoArguments
```

<p>Empty response for the request.</p>

##### Instances
``` purescript
Newtype DeleteVPCAssociationAuthorizationResponse _
Generic DeleteVPCAssociationAuthorizationResponse _
Show DeleteVPCAssociationAuthorizationResponse
Decode DeleteVPCAssociationAuthorizationResponse
Encode DeleteVPCAssociationAuthorizationResponse
```

#### `Dimension`

``` purescript
newtype Dimension
  = Dimension { "Name" :: DimensionField, "Value" :: DimensionField }
```

<p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about one dimension.</p>

##### Instances
``` purescript
Newtype Dimension _
Generic Dimension _
Show Dimension
Decode Dimension
Encode Dimension
```

#### `newDimension`

``` purescript
newDimension :: DimensionField -> DimensionField -> Dimension
```

Constructs Dimension from required parameters

#### `newDimension'`

``` purescript
newDimension' :: DimensionField -> DimensionField -> ({ "Name" :: DimensionField, "Value" :: DimensionField } -> { "Name" :: DimensionField, "Value" :: DimensionField }) -> Dimension
```

Constructs Dimension's fields from required parameters

#### `DimensionField`

``` purescript
newtype DimensionField
  = DimensionField String
```

##### Instances
``` purescript
Newtype DimensionField _
Generic DimensionField _
Show DimensionField
Decode DimensionField
Encode DimensionField
```

#### `DimensionList`

``` purescript
newtype DimensionList
  = DimensionList (Array Dimension)
```

##### Instances
``` purescript
Newtype DimensionList _
Generic DimensionList _
Show DimensionList
Decode DimensionList
Encode DimensionList
```

#### `DisassociateVPCComment`

``` purescript
newtype DisassociateVPCComment
  = DisassociateVPCComment String
```

##### Instances
``` purescript
Newtype DisassociateVPCComment _
Generic DisassociateVPCComment _
Show DisassociateVPCComment
Decode DisassociateVPCComment
Encode DisassociateVPCComment
```

#### `DisassociateVPCFromHostedZoneRequest`

``` purescript
newtype DisassociateVPCFromHostedZoneRequest
  = DisassociateVPCFromHostedZoneRequest { "HostedZoneId" :: ResourceId, "VPC" :: VPC, "Comment" :: Maybe (DisassociateVPCComment) }
```

<p>A complex type that contains information about the VPC that you want to disassociate from a specified private hosted zone.</p>

##### Instances
``` purescript
Newtype DisassociateVPCFromHostedZoneRequest _
Generic DisassociateVPCFromHostedZoneRequest _
Show DisassociateVPCFromHostedZoneRequest
Decode DisassociateVPCFromHostedZoneRequest
Encode DisassociateVPCFromHostedZoneRequest
```

#### `newDisassociateVPCFromHostedZoneRequest`

``` purescript
newDisassociateVPCFromHostedZoneRequest :: ResourceId -> VPC -> DisassociateVPCFromHostedZoneRequest
```

Constructs DisassociateVPCFromHostedZoneRequest from required parameters

#### `newDisassociateVPCFromHostedZoneRequest'`

``` purescript
newDisassociateVPCFromHostedZoneRequest' :: ResourceId -> VPC -> ({ "HostedZoneId" :: ResourceId, "VPC" :: VPC, "Comment" :: Maybe (DisassociateVPCComment) } -> { "HostedZoneId" :: ResourceId, "VPC" :: VPC, "Comment" :: Maybe (DisassociateVPCComment) }) -> DisassociateVPCFromHostedZoneRequest
```

Constructs DisassociateVPCFromHostedZoneRequest's fields from required parameters

#### `DisassociateVPCFromHostedZoneResponse`

``` purescript
newtype DisassociateVPCFromHostedZoneResponse
  = DisassociateVPCFromHostedZoneResponse { "ChangeInfo" :: ChangeInfo }
```

<p>A complex type that contains the response information for the disassociate request.</p>

##### Instances
``` purescript
Newtype DisassociateVPCFromHostedZoneResponse _
Generic DisassociateVPCFromHostedZoneResponse _
Show DisassociateVPCFromHostedZoneResponse
Decode DisassociateVPCFromHostedZoneResponse
Encode DisassociateVPCFromHostedZoneResponse
```

#### `newDisassociateVPCFromHostedZoneResponse`

``` purescript
newDisassociateVPCFromHostedZoneResponse :: ChangeInfo -> DisassociateVPCFromHostedZoneResponse
```

Constructs DisassociateVPCFromHostedZoneResponse from required parameters

#### `newDisassociateVPCFromHostedZoneResponse'`

``` purescript
newDisassociateVPCFromHostedZoneResponse' :: ChangeInfo -> ({ "ChangeInfo" :: ChangeInfo } -> { "ChangeInfo" :: ChangeInfo }) -> DisassociateVPCFromHostedZoneResponse
```

Constructs DisassociateVPCFromHostedZoneResponse's fields from required parameters

#### `EnableSNI`

``` purescript
newtype EnableSNI
  = EnableSNI Boolean
```

##### Instances
``` purescript
Newtype EnableSNI _
Generic EnableSNI _
Show EnableSNI
Decode EnableSNI
Encode EnableSNI
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ErrorMessages`

``` purescript
newtype ErrorMessages
  = ErrorMessages (Array ErrorMessage)
```

##### Instances
``` purescript
Newtype ErrorMessages _
Generic ErrorMessages _
Show ErrorMessages
Decode ErrorMessages
Encode ErrorMessages
```

#### `EvaluationPeriods`

``` purescript
newtype EvaluationPeriods
  = EvaluationPeriods Int
```

##### Instances
``` purescript
Newtype EvaluationPeriods _
Generic EvaluationPeriods _
Show EvaluationPeriods
Decode EvaluationPeriods
Encode EvaluationPeriods
```

#### `FailureThreshold`

``` purescript
newtype FailureThreshold
  = FailureThreshold Int
```

##### Instances
``` purescript
Newtype FailureThreshold _
Generic FailureThreshold _
Show FailureThreshold
Decode FailureThreshold
Encode FailureThreshold
```

#### `FullyQualifiedDomainName`

``` purescript
newtype FullyQualifiedDomainName
  = FullyQualifiedDomainName String
```

##### Instances
``` purescript
Newtype FullyQualifiedDomainName _
Generic FullyQualifiedDomainName _
Show FullyQualifiedDomainName
Decode FullyQualifiedDomainName
Encode FullyQualifiedDomainName
```

#### `GeoLocation`

``` purescript
newtype GeoLocation
  = GeoLocation { "ContinentCode" :: Maybe (GeoLocationContinentCode), "CountryCode" :: Maybe (GeoLocationCountryCode), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) }
```

<p>A complex type that contains information about a geo location.</p>

##### Instances
``` purescript
Newtype GeoLocation _
Generic GeoLocation _
Show GeoLocation
Decode GeoLocation
Encode GeoLocation
```

#### `newGeoLocation`

``` purescript
newGeoLocation :: GeoLocation
```

Constructs GeoLocation from required parameters

#### `newGeoLocation'`

``` purescript
newGeoLocation' :: ({ "ContinentCode" :: Maybe (GeoLocationContinentCode), "CountryCode" :: Maybe (GeoLocationCountryCode), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) } -> { "ContinentCode" :: Maybe (GeoLocationContinentCode), "CountryCode" :: Maybe (GeoLocationCountryCode), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) }) -> GeoLocation
```

Constructs GeoLocation's fields from required parameters

#### `GeoLocationContinentCode`

``` purescript
newtype GeoLocationContinentCode
  = GeoLocationContinentCode String
```

##### Instances
``` purescript
Newtype GeoLocationContinentCode _
Generic GeoLocationContinentCode _
Show GeoLocationContinentCode
Decode GeoLocationContinentCode
Encode GeoLocationContinentCode
```

#### `GeoLocationContinentName`

``` purescript
newtype GeoLocationContinentName
  = GeoLocationContinentName String
```

##### Instances
``` purescript
Newtype GeoLocationContinentName _
Generic GeoLocationContinentName _
Show GeoLocationContinentName
Decode GeoLocationContinentName
Encode GeoLocationContinentName
```

#### `GeoLocationCountryCode`

``` purescript
newtype GeoLocationCountryCode
  = GeoLocationCountryCode String
```

##### Instances
``` purescript
Newtype GeoLocationCountryCode _
Generic GeoLocationCountryCode _
Show GeoLocationCountryCode
Decode GeoLocationCountryCode
Encode GeoLocationCountryCode
```

#### `GeoLocationCountryName`

``` purescript
newtype GeoLocationCountryName
  = GeoLocationCountryName String
```

##### Instances
``` purescript
Newtype GeoLocationCountryName _
Generic GeoLocationCountryName _
Show GeoLocationCountryName
Decode GeoLocationCountryName
Encode GeoLocationCountryName
```

#### `GeoLocationDetails`

``` purescript
newtype GeoLocationDetails
  = GeoLocationDetails { "ContinentCode" :: Maybe (GeoLocationContinentCode), "ContinentName" :: Maybe (GeoLocationContinentName), "CountryCode" :: Maybe (GeoLocationCountryCode), "CountryName" :: Maybe (GeoLocationCountryName), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "SubdivisionName" :: Maybe (GeoLocationSubdivisionName) }
```

<p>A complex type that contains the codes and full continent, country, and subdivision names for the specified <code>geolocation</code> code.</p>

##### Instances
``` purescript
Newtype GeoLocationDetails _
Generic GeoLocationDetails _
Show GeoLocationDetails
Decode GeoLocationDetails
Encode GeoLocationDetails
```

#### `newGeoLocationDetails`

``` purescript
newGeoLocationDetails :: GeoLocationDetails
```

Constructs GeoLocationDetails from required parameters

#### `newGeoLocationDetails'`

``` purescript
newGeoLocationDetails' :: ({ "ContinentCode" :: Maybe (GeoLocationContinentCode), "ContinentName" :: Maybe (GeoLocationContinentName), "CountryCode" :: Maybe (GeoLocationCountryCode), "CountryName" :: Maybe (GeoLocationCountryName), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "SubdivisionName" :: Maybe (GeoLocationSubdivisionName) } -> { "ContinentCode" :: Maybe (GeoLocationContinentCode), "ContinentName" :: Maybe (GeoLocationContinentName), "CountryCode" :: Maybe (GeoLocationCountryCode), "CountryName" :: Maybe (GeoLocationCountryName), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "SubdivisionName" :: Maybe (GeoLocationSubdivisionName) }) -> GeoLocationDetails
```

Constructs GeoLocationDetails's fields from required parameters

#### `GeoLocationDetailsList`

``` purescript
newtype GeoLocationDetailsList
  = GeoLocationDetailsList (Array GeoLocationDetails)
```

##### Instances
``` purescript
Newtype GeoLocationDetailsList _
Generic GeoLocationDetailsList _
Show GeoLocationDetailsList
Decode GeoLocationDetailsList
Encode GeoLocationDetailsList
```

#### `GeoLocationSubdivisionCode`

``` purescript
newtype GeoLocationSubdivisionCode
  = GeoLocationSubdivisionCode String
```

##### Instances
``` purescript
Newtype GeoLocationSubdivisionCode _
Generic GeoLocationSubdivisionCode _
Show GeoLocationSubdivisionCode
Decode GeoLocationSubdivisionCode
Encode GeoLocationSubdivisionCode
```

#### `GeoLocationSubdivisionName`

``` purescript
newtype GeoLocationSubdivisionName
  = GeoLocationSubdivisionName String
```

##### Instances
``` purescript
Newtype GeoLocationSubdivisionName _
Generic GeoLocationSubdivisionName _
Show GeoLocationSubdivisionName
Decode GeoLocationSubdivisionName
Encode GeoLocationSubdivisionName
```

#### `GetAccountLimitRequest`

``` purescript
newtype GetAccountLimitRequest
  = GetAccountLimitRequest { "Type" :: AccountLimitType }
```

<p>A complex type that contains information about the request to create a hosted zone.</p>

##### Instances
``` purescript
Newtype GetAccountLimitRequest _
Generic GetAccountLimitRequest _
Show GetAccountLimitRequest
Decode GetAccountLimitRequest
Encode GetAccountLimitRequest
```

#### `newGetAccountLimitRequest`

``` purescript
newGetAccountLimitRequest :: AccountLimitType -> GetAccountLimitRequest
```

Constructs GetAccountLimitRequest from required parameters

#### `newGetAccountLimitRequest'`

``` purescript
newGetAccountLimitRequest' :: AccountLimitType -> ({ "Type" :: AccountLimitType } -> { "Type" :: AccountLimitType }) -> GetAccountLimitRequest
```

Constructs GetAccountLimitRequest's fields from required parameters

#### `GetAccountLimitResponse`

``` purescript
newtype GetAccountLimitResponse
  = GetAccountLimitResponse { "Limit" :: AccountLimit, "Count" :: UsageCount }
```

<p>A complex type that contains the requested limit. </p>

##### Instances
``` purescript
Newtype GetAccountLimitResponse _
Generic GetAccountLimitResponse _
Show GetAccountLimitResponse
Decode GetAccountLimitResponse
Encode GetAccountLimitResponse
```

#### `newGetAccountLimitResponse`

``` purescript
newGetAccountLimitResponse :: UsageCount -> AccountLimit -> GetAccountLimitResponse
```

Constructs GetAccountLimitResponse from required parameters

#### `newGetAccountLimitResponse'`

``` purescript
newGetAccountLimitResponse' :: UsageCount -> AccountLimit -> ({ "Limit" :: AccountLimit, "Count" :: UsageCount } -> { "Limit" :: AccountLimit, "Count" :: UsageCount }) -> GetAccountLimitResponse
```

Constructs GetAccountLimitResponse's fields from required parameters

#### `GetChangeRequest`

``` purescript
newtype GetChangeRequest
  = GetChangeRequest { "Id" :: ResourceId }
```

<p>The input for a GetChange request.</p>

##### Instances
``` purescript
Newtype GetChangeRequest _
Generic GetChangeRequest _
Show GetChangeRequest
Decode GetChangeRequest
Encode GetChangeRequest
```

#### `newGetChangeRequest`

``` purescript
newGetChangeRequest :: ResourceId -> GetChangeRequest
```

Constructs GetChangeRequest from required parameters

#### `newGetChangeRequest'`

``` purescript
newGetChangeRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> GetChangeRequest
```

Constructs GetChangeRequest's fields from required parameters

#### `GetChangeResponse`

``` purescript
newtype GetChangeResponse
  = GetChangeResponse { "ChangeInfo" :: ChangeInfo }
```

<p>A complex type that contains the <code>ChangeInfo</code> element.</p>

##### Instances
``` purescript
Newtype GetChangeResponse _
Generic GetChangeResponse _
Show GetChangeResponse
Decode GetChangeResponse
Encode GetChangeResponse
```

#### `newGetChangeResponse`

``` purescript
newGetChangeResponse :: ChangeInfo -> GetChangeResponse
```

Constructs GetChangeResponse from required parameters

#### `newGetChangeResponse'`

``` purescript
newGetChangeResponse' :: ChangeInfo -> ({ "ChangeInfo" :: ChangeInfo } -> { "ChangeInfo" :: ChangeInfo }) -> GetChangeResponse
```

Constructs GetChangeResponse's fields from required parameters

#### `GetCheckerIpRangesRequest`

``` purescript
newtype GetCheckerIpRangesRequest
  = GetCheckerIpRangesRequest NoArguments
```

##### Instances
``` purescript
Newtype GetCheckerIpRangesRequest _
Generic GetCheckerIpRangesRequest _
Show GetCheckerIpRangesRequest
Decode GetCheckerIpRangesRequest
Encode GetCheckerIpRangesRequest
```

#### `GetCheckerIpRangesResponse`

``` purescript
newtype GetCheckerIpRangesResponse
  = GetCheckerIpRangesResponse { "CheckerIpRanges" :: CheckerIpRanges }
```

##### Instances
``` purescript
Newtype GetCheckerIpRangesResponse _
Generic GetCheckerIpRangesResponse _
Show GetCheckerIpRangesResponse
Decode GetCheckerIpRangesResponse
Encode GetCheckerIpRangesResponse
```

#### `newGetCheckerIpRangesResponse`

``` purescript
newGetCheckerIpRangesResponse :: CheckerIpRanges -> GetCheckerIpRangesResponse
```

Constructs GetCheckerIpRangesResponse from required parameters

#### `newGetCheckerIpRangesResponse'`

``` purescript
newGetCheckerIpRangesResponse' :: CheckerIpRanges -> ({ "CheckerIpRanges" :: CheckerIpRanges } -> { "CheckerIpRanges" :: CheckerIpRanges }) -> GetCheckerIpRangesResponse
```

Constructs GetCheckerIpRangesResponse's fields from required parameters

#### `GetGeoLocationRequest`

``` purescript
newtype GetGeoLocationRequest
  = GetGeoLocationRequest { "ContinentCode" :: Maybe (GeoLocationContinentCode), "CountryCode" :: Maybe (GeoLocationCountryCode), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) }
```

<p>A request for information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.</p>

##### Instances
``` purescript
Newtype GetGeoLocationRequest _
Generic GetGeoLocationRequest _
Show GetGeoLocationRequest
Decode GetGeoLocationRequest
Encode GetGeoLocationRequest
```

#### `newGetGeoLocationRequest`

``` purescript
newGetGeoLocationRequest :: GetGeoLocationRequest
```

Constructs GetGeoLocationRequest from required parameters

#### `newGetGeoLocationRequest'`

``` purescript
newGetGeoLocationRequest' :: ({ "ContinentCode" :: Maybe (GeoLocationContinentCode), "CountryCode" :: Maybe (GeoLocationCountryCode), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) } -> { "ContinentCode" :: Maybe (GeoLocationContinentCode), "CountryCode" :: Maybe (GeoLocationCountryCode), "SubdivisionCode" :: Maybe (GeoLocationSubdivisionCode) }) -> GetGeoLocationRequest
```

Constructs GetGeoLocationRequest's fields from required parameters

#### `GetGeoLocationResponse`

``` purescript
newtype GetGeoLocationResponse
  = GetGeoLocationResponse { "GeoLocationDetails" :: GeoLocationDetails }
```

<p>A complex type that contains the response information for the specified geolocation code.</p>

##### Instances
``` purescript
Newtype GetGeoLocationResponse _
Generic GetGeoLocationResponse _
Show GetGeoLocationResponse
Decode GetGeoLocationResponse
Encode GetGeoLocationResponse
```

#### `newGetGeoLocationResponse`

``` purescript
newGetGeoLocationResponse :: GeoLocationDetails -> GetGeoLocationResponse
```

Constructs GetGeoLocationResponse from required parameters

#### `newGetGeoLocationResponse'`

``` purescript
newGetGeoLocationResponse' :: GeoLocationDetails -> ({ "GeoLocationDetails" :: GeoLocationDetails } -> { "GeoLocationDetails" :: GeoLocationDetails }) -> GetGeoLocationResponse
```

Constructs GetGeoLocationResponse's fields from required parameters

#### `GetHealthCheckCountRequest`

``` purescript
newtype GetHealthCheckCountRequest
  = GetHealthCheckCountRequest NoArguments
```

<p>A request for the number of health checks that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype GetHealthCheckCountRequest _
Generic GetHealthCheckCountRequest _
Show GetHealthCheckCountRequest
Decode GetHealthCheckCountRequest
Encode GetHealthCheckCountRequest
```

#### `GetHealthCheckCountResponse`

``` purescript
newtype GetHealthCheckCountResponse
  = GetHealthCheckCountResponse { "HealthCheckCount" :: HealthCheckCount }
```

<p>A complex type that contains the response to a <code>GetHealthCheckCount</code> request.</p>

##### Instances
``` purescript
Newtype GetHealthCheckCountResponse _
Generic GetHealthCheckCountResponse _
Show GetHealthCheckCountResponse
Decode GetHealthCheckCountResponse
Encode GetHealthCheckCountResponse
```

#### `newGetHealthCheckCountResponse`

``` purescript
newGetHealthCheckCountResponse :: HealthCheckCount -> GetHealthCheckCountResponse
```

Constructs GetHealthCheckCountResponse from required parameters

#### `newGetHealthCheckCountResponse'`

``` purescript
newGetHealthCheckCountResponse' :: HealthCheckCount -> ({ "HealthCheckCount" :: HealthCheckCount } -> { "HealthCheckCount" :: HealthCheckCount }) -> GetHealthCheckCountResponse
```

Constructs GetHealthCheckCountResponse's fields from required parameters

#### `GetHealthCheckLastFailureReasonRequest`

``` purescript
newtype GetHealthCheckLastFailureReasonRequest
  = GetHealthCheckLastFailureReasonRequest { "HealthCheckId" :: HealthCheckId }
```

<p>A request for the reason that a health check failed most recently.</p>

##### Instances
``` purescript
Newtype GetHealthCheckLastFailureReasonRequest _
Generic GetHealthCheckLastFailureReasonRequest _
Show GetHealthCheckLastFailureReasonRequest
Decode GetHealthCheckLastFailureReasonRequest
Encode GetHealthCheckLastFailureReasonRequest
```

#### `newGetHealthCheckLastFailureReasonRequest`

``` purescript
newGetHealthCheckLastFailureReasonRequest :: HealthCheckId -> GetHealthCheckLastFailureReasonRequest
```

Constructs GetHealthCheckLastFailureReasonRequest from required parameters

#### `newGetHealthCheckLastFailureReasonRequest'`

``` purescript
newGetHealthCheckLastFailureReasonRequest' :: HealthCheckId -> ({ "HealthCheckId" :: HealthCheckId } -> { "HealthCheckId" :: HealthCheckId }) -> GetHealthCheckLastFailureReasonRequest
```

Constructs GetHealthCheckLastFailureReasonRequest's fields from required parameters

#### `GetHealthCheckLastFailureReasonResponse`

``` purescript
newtype GetHealthCheckLastFailureReasonResponse
  = GetHealthCheckLastFailureReasonResponse { "HealthCheckObservations" :: HealthCheckObservations }
```

<p>A complex type that contains the response to a <code>GetHealthCheckLastFailureReason</code> request.</p>

##### Instances
``` purescript
Newtype GetHealthCheckLastFailureReasonResponse _
Generic GetHealthCheckLastFailureReasonResponse _
Show GetHealthCheckLastFailureReasonResponse
Decode GetHealthCheckLastFailureReasonResponse
Encode GetHealthCheckLastFailureReasonResponse
```

#### `newGetHealthCheckLastFailureReasonResponse`

``` purescript
newGetHealthCheckLastFailureReasonResponse :: HealthCheckObservations -> GetHealthCheckLastFailureReasonResponse
```

Constructs GetHealthCheckLastFailureReasonResponse from required parameters

#### `newGetHealthCheckLastFailureReasonResponse'`

``` purescript
newGetHealthCheckLastFailureReasonResponse' :: HealthCheckObservations -> ({ "HealthCheckObservations" :: HealthCheckObservations } -> { "HealthCheckObservations" :: HealthCheckObservations }) -> GetHealthCheckLastFailureReasonResponse
```

Constructs GetHealthCheckLastFailureReasonResponse's fields from required parameters

#### `GetHealthCheckRequest`

``` purescript
newtype GetHealthCheckRequest
  = GetHealthCheckRequest { "HealthCheckId" :: HealthCheckId }
```

<p>A request to get information about a specified health check. </p>

##### Instances
``` purescript
Newtype GetHealthCheckRequest _
Generic GetHealthCheckRequest _
Show GetHealthCheckRequest
Decode GetHealthCheckRequest
Encode GetHealthCheckRequest
```

#### `newGetHealthCheckRequest`

``` purescript
newGetHealthCheckRequest :: HealthCheckId -> GetHealthCheckRequest
```

Constructs GetHealthCheckRequest from required parameters

#### `newGetHealthCheckRequest'`

``` purescript
newGetHealthCheckRequest' :: HealthCheckId -> ({ "HealthCheckId" :: HealthCheckId } -> { "HealthCheckId" :: HealthCheckId }) -> GetHealthCheckRequest
```

Constructs GetHealthCheckRequest's fields from required parameters

#### `GetHealthCheckResponse`

``` purescript
newtype GetHealthCheckResponse
  = GetHealthCheckResponse { "HealthCheck" :: HealthCheck }
```

<p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>

##### Instances
``` purescript
Newtype GetHealthCheckResponse _
Generic GetHealthCheckResponse _
Show GetHealthCheckResponse
Decode GetHealthCheckResponse
Encode GetHealthCheckResponse
```

#### `newGetHealthCheckResponse`

``` purescript
newGetHealthCheckResponse :: HealthCheck -> GetHealthCheckResponse
```

Constructs GetHealthCheckResponse from required parameters

#### `newGetHealthCheckResponse'`

``` purescript
newGetHealthCheckResponse' :: HealthCheck -> ({ "HealthCheck" :: HealthCheck } -> { "HealthCheck" :: HealthCheck }) -> GetHealthCheckResponse
```

Constructs GetHealthCheckResponse's fields from required parameters

#### `GetHealthCheckStatusRequest`

``` purescript
newtype GetHealthCheckStatusRequest
  = GetHealthCheckStatusRequest { "HealthCheckId" :: HealthCheckId }
```

<p>A request to get the status for a health check.</p>

##### Instances
``` purescript
Newtype GetHealthCheckStatusRequest _
Generic GetHealthCheckStatusRequest _
Show GetHealthCheckStatusRequest
Decode GetHealthCheckStatusRequest
Encode GetHealthCheckStatusRequest
```

#### `newGetHealthCheckStatusRequest`

``` purescript
newGetHealthCheckStatusRequest :: HealthCheckId -> GetHealthCheckStatusRequest
```

Constructs GetHealthCheckStatusRequest from required parameters

#### `newGetHealthCheckStatusRequest'`

``` purescript
newGetHealthCheckStatusRequest' :: HealthCheckId -> ({ "HealthCheckId" :: HealthCheckId } -> { "HealthCheckId" :: HealthCheckId }) -> GetHealthCheckStatusRequest
```

Constructs GetHealthCheckStatusRequest's fields from required parameters

#### `GetHealthCheckStatusResponse`

``` purescript
newtype GetHealthCheckStatusResponse
  = GetHealthCheckStatusResponse { "HealthCheckObservations" :: HealthCheckObservations }
```

<p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>

##### Instances
``` purescript
Newtype GetHealthCheckStatusResponse _
Generic GetHealthCheckStatusResponse _
Show GetHealthCheckStatusResponse
Decode GetHealthCheckStatusResponse
Encode GetHealthCheckStatusResponse
```

#### `newGetHealthCheckStatusResponse`

``` purescript
newGetHealthCheckStatusResponse :: HealthCheckObservations -> GetHealthCheckStatusResponse
```

Constructs GetHealthCheckStatusResponse from required parameters

#### `newGetHealthCheckStatusResponse'`

``` purescript
newGetHealthCheckStatusResponse' :: HealthCheckObservations -> ({ "HealthCheckObservations" :: HealthCheckObservations } -> { "HealthCheckObservations" :: HealthCheckObservations }) -> GetHealthCheckStatusResponse
```

Constructs GetHealthCheckStatusResponse's fields from required parameters

#### `GetHostedZoneCountRequest`

``` purescript
newtype GetHostedZoneCountRequest
  = GetHostedZoneCountRequest NoArguments
```

<p>A request to retrieve a count of all the hosted zones that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype GetHostedZoneCountRequest _
Generic GetHostedZoneCountRequest _
Show GetHostedZoneCountRequest
Decode GetHostedZoneCountRequest
Encode GetHostedZoneCountRequest
```

#### `GetHostedZoneCountResponse`

``` purescript
newtype GetHostedZoneCountResponse
  = GetHostedZoneCountResponse { "HostedZoneCount" :: HostedZoneCount }
```

<p>A complex type that contains the response to a <code>GetHostedZoneCount</code> request.</p>

##### Instances
``` purescript
Newtype GetHostedZoneCountResponse _
Generic GetHostedZoneCountResponse _
Show GetHostedZoneCountResponse
Decode GetHostedZoneCountResponse
Encode GetHostedZoneCountResponse
```

#### `newGetHostedZoneCountResponse`

``` purescript
newGetHostedZoneCountResponse :: HostedZoneCount -> GetHostedZoneCountResponse
```

Constructs GetHostedZoneCountResponse from required parameters

#### `newGetHostedZoneCountResponse'`

``` purescript
newGetHostedZoneCountResponse' :: HostedZoneCount -> ({ "HostedZoneCount" :: HostedZoneCount } -> { "HostedZoneCount" :: HostedZoneCount }) -> GetHostedZoneCountResponse
```

Constructs GetHostedZoneCountResponse's fields from required parameters

#### `GetHostedZoneLimitRequest`

``` purescript
newtype GetHostedZoneLimitRequest
  = GetHostedZoneLimitRequest { "Type" :: HostedZoneLimitType, "HostedZoneId" :: ResourceId }
```

<p>A complex type that contains information about the request to create a hosted zone.</p>

##### Instances
``` purescript
Newtype GetHostedZoneLimitRequest _
Generic GetHostedZoneLimitRequest _
Show GetHostedZoneLimitRequest
Decode GetHostedZoneLimitRequest
Encode GetHostedZoneLimitRequest
```

#### `newGetHostedZoneLimitRequest`

``` purescript
newGetHostedZoneLimitRequest :: ResourceId -> HostedZoneLimitType -> GetHostedZoneLimitRequest
```

Constructs GetHostedZoneLimitRequest from required parameters

#### `newGetHostedZoneLimitRequest'`

``` purescript
newGetHostedZoneLimitRequest' :: ResourceId -> HostedZoneLimitType -> ({ "Type" :: HostedZoneLimitType, "HostedZoneId" :: ResourceId } -> { "Type" :: HostedZoneLimitType, "HostedZoneId" :: ResourceId }) -> GetHostedZoneLimitRequest
```

Constructs GetHostedZoneLimitRequest's fields from required parameters

#### `GetHostedZoneLimitResponse`

``` purescript
newtype GetHostedZoneLimitResponse
  = GetHostedZoneLimitResponse { "Limit" :: HostedZoneLimit, "Count" :: UsageCount }
```

<p>A complex type that contains the requested limit. </p>

##### Instances
``` purescript
Newtype GetHostedZoneLimitResponse _
Generic GetHostedZoneLimitResponse _
Show GetHostedZoneLimitResponse
Decode GetHostedZoneLimitResponse
Encode GetHostedZoneLimitResponse
```

#### `newGetHostedZoneLimitResponse`

``` purescript
newGetHostedZoneLimitResponse :: UsageCount -> HostedZoneLimit -> GetHostedZoneLimitResponse
```

Constructs GetHostedZoneLimitResponse from required parameters

#### `newGetHostedZoneLimitResponse'`

``` purescript
newGetHostedZoneLimitResponse' :: UsageCount -> HostedZoneLimit -> ({ "Limit" :: HostedZoneLimit, "Count" :: UsageCount } -> { "Limit" :: HostedZoneLimit, "Count" :: UsageCount }) -> GetHostedZoneLimitResponse
```

Constructs GetHostedZoneLimitResponse's fields from required parameters

#### `GetHostedZoneRequest`

``` purescript
newtype GetHostedZoneRequest
  = GetHostedZoneRequest { "Id" :: ResourceId }
```

<p>A request to get information about a specified hosted zone. </p>

##### Instances
``` purescript
Newtype GetHostedZoneRequest _
Generic GetHostedZoneRequest _
Show GetHostedZoneRequest
Decode GetHostedZoneRequest
Encode GetHostedZoneRequest
```

#### `newGetHostedZoneRequest`

``` purescript
newGetHostedZoneRequest :: ResourceId -> GetHostedZoneRequest
```

Constructs GetHostedZoneRequest from required parameters

#### `newGetHostedZoneRequest'`

``` purescript
newGetHostedZoneRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> GetHostedZoneRequest
```

Constructs GetHostedZoneRequest's fields from required parameters

#### `GetHostedZoneResponse`

``` purescript
newtype GetHostedZoneResponse
  = GetHostedZoneResponse { "HostedZone" :: HostedZone, "DelegationSet" :: Maybe (DelegationSet), "VPCs" :: Maybe (VPCs) }
```

<p>A complex type that contain the response to a <code>GetHostedZone</code> request.</p>

##### Instances
``` purescript
Newtype GetHostedZoneResponse _
Generic GetHostedZoneResponse _
Show GetHostedZoneResponse
Decode GetHostedZoneResponse
Encode GetHostedZoneResponse
```

#### `newGetHostedZoneResponse`

``` purescript
newGetHostedZoneResponse :: HostedZone -> GetHostedZoneResponse
```

Constructs GetHostedZoneResponse from required parameters

#### `newGetHostedZoneResponse'`

``` purescript
newGetHostedZoneResponse' :: HostedZone -> ({ "HostedZone" :: HostedZone, "DelegationSet" :: Maybe (DelegationSet), "VPCs" :: Maybe (VPCs) } -> { "HostedZone" :: HostedZone, "DelegationSet" :: Maybe (DelegationSet), "VPCs" :: Maybe (VPCs) }) -> GetHostedZoneResponse
```

Constructs GetHostedZoneResponse's fields from required parameters

#### `GetQueryLoggingConfigRequest`

``` purescript
newtype GetQueryLoggingConfigRequest
  = GetQueryLoggingConfigRequest { "Id" :: QueryLoggingConfigId }
```

##### Instances
``` purescript
Newtype GetQueryLoggingConfigRequest _
Generic GetQueryLoggingConfigRequest _
Show GetQueryLoggingConfigRequest
Decode GetQueryLoggingConfigRequest
Encode GetQueryLoggingConfigRequest
```

#### `newGetQueryLoggingConfigRequest`

``` purescript
newGetQueryLoggingConfigRequest :: QueryLoggingConfigId -> GetQueryLoggingConfigRequest
```

Constructs GetQueryLoggingConfigRequest from required parameters

#### `newGetQueryLoggingConfigRequest'`

``` purescript
newGetQueryLoggingConfigRequest' :: QueryLoggingConfigId -> ({ "Id" :: QueryLoggingConfigId } -> { "Id" :: QueryLoggingConfigId }) -> GetQueryLoggingConfigRequest
```

Constructs GetQueryLoggingConfigRequest's fields from required parameters

#### `GetQueryLoggingConfigResponse`

``` purescript
newtype GetQueryLoggingConfigResponse
  = GetQueryLoggingConfigResponse { "QueryLoggingConfig" :: QueryLoggingConfig }
```

##### Instances
``` purescript
Newtype GetQueryLoggingConfigResponse _
Generic GetQueryLoggingConfigResponse _
Show GetQueryLoggingConfigResponse
Decode GetQueryLoggingConfigResponse
Encode GetQueryLoggingConfigResponse
```

#### `newGetQueryLoggingConfigResponse`

``` purescript
newGetQueryLoggingConfigResponse :: QueryLoggingConfig -> GetQueryLoggingConfigResponse
```

Constructs GetQueryLoggingConfigResponse from required parameters

#### `newGetQueryLoggingConfigResponse'`

``` purescript
newGetQueryLoggingConfigResponse' :: QueryLoggingConfig -> ({ "QueryLoggingConfig" :: QueryLoggingConfig } -> { "QueryLoggingConfig" :: QueryLoggingConfig }) -> GetQueryLoggingConfigResponse
```

Constructs GetQueryLoggingConfigResponse's fields from required parameters

#### `GetReusableDelegationSetLimitRequest`

``` purescript
newtype GetReusableDelegationSetLimitRequest
  = GetReusableDelegationSetLimitRequest { "Type" :: ReusableDelegationSetLimitType, "DelegationSetId" :: ResourceId }
```

<p>A complex type that contains information about the request to create a hosted zone.</p>

##### Instances
``` purescript
Newtype GetReusableDelegationSetLimitRequest _
Generic GetReusableDelegationSetLimitRequest _
Show GetReusableDelegationSetLimitRequest
Decode GetReusableDelegationSetLimitRequest
Encode GetReusableDelegationSetLimitRequest
```

#### `newGetReusableDelegationSetLimitRequest`

``` purescript
newGetReusableDelegationSetLimitRequest :: ResourceId -> ReusableDelegationSetLimitType -> GetReusableDelegationSetLimitRequest
```

Constructs GetReusableDelegationSetLimitRequest from required parameters

#### `newGetReusableDelegationSetLimitRequest'`

``` purescript
newGetReusableDelegationSetLimitRequest' :: ResourceId -> ReusableDelegationSetLimitType -> ({ "Type" :: ReusableDelegationSetLimitType, "DelegationSetId" :: ResourceId } -> { "Type" :: ReusableDelegationSetLimitType, "DelegationSetId" :: ResourceId }) -> GetReusableDelegationSetLimitRequest
```

Constructs GetReusableDelegationSetLimitRequest's fields from required parameters

#### `GetReusableDelegationSetLimitResponse`

``` purescript
newtype GetReusableDelegationSetLimitResponse
  = GetReusableDelegationSetLimitResponse { "Limit" :: ReusableDelegationSetLimit, "Count" :: UsageCount }
```

<p>A complex type that contains the requested limit. </p>

##### Instances
``` purescript
Newtype GetReusableDelegationSetLimitResponse _
Generic GetReusableDelegationSetLimitResponse _
Show GetReusableDelegationSetLimitResponse
Decode GetReusableDelegationSetLimitResponse
Encode GetReusableDelegationSetLimitResponse
```

#### `newGetReusableDelegationSetLimitResponse`

``` purescript
newGetReusableDelegationSetLimitResponse :: UsageCount -> ReusableDelegationSetLimit -> GetReusableDelegationSetLimitResponse
```

Constructs GetReusableDelegationSetLimitResponse from required parameters

#### `newGetReusableDelegationSetLimitResponse'`

``` purescript
newGetReusableDelegationSetLimitResponse' :: UsageCount -> ReusableDelegationSetLimit -> ({ "Limit" :: ReusableDelegationSetLimit, "Count" :: UsageCount } -> { "Limit" :: ReusableDelegationSetLimit, "Count" :: UsageCount }) -> GetReusableDelegationSetLimitResponse
```

Constructs GetReusableDelegationSetLimitResponse's fields from required parameters

#### `GetReusableDelegationSetRequest`

``` purescript
newtype GetReusableDelegationSetRequest
  = GetReusableDelegationSetRequest { "Id" :: ResourceId }
```

<p>A request to get information about a specified reusable delegation set.</p>

##### Instances
``` purescript
Newtype GetReusableDelegationSetRequest _
Generic GetReusableDelegationSetRequest _
Show GetReusableDelegationSetRequest
Decode GetReusableDelegationSetRequest
Encode GetReusableDelegationSetRequest
```

#### `newGetReusableDelegationSetRequest`

``` purescript
newGetReusableDelegationSetRequest :: ResourceId -> GetReusableDelegationSetRequest
```

Constructs GetReusableDelegationSetRequest from required parameters

#### `newGetReusableDelegationSetRequest'`

``` purescript
newGetReusableDelegationSetRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> GetReusableDelegationSetRequest
```

Constructs GetReusableDelegationSetRequest's fields from required parameters

#### `GetReusableDelegationSetResponse`

``` purescript
newtype GetReusableDelegationSetResponse
  = GetReusableDelegationSetResponse { "DelegationSet" :: DelegationSet }
```

<p>A complex type that contains the response to the <code>GetReusableDelegationSet</code> request.</p>

##### Instances
``` purescript
Newtype GetReusableDelegationSetResponse _
Generic GetReusableDelegationSetResponse _
Show GetReusableDelegationSetResponse
Decode GetReusableDelegationSetResponse
Encode GetReusableDelegationSetResponse
```

#### `newGetReusableDelegationSetResponse`

``` purescript
newGetReusableDelegationSetResponse :: DelegationSet -> GetReusableDelegationSetResponse
```

Constructs GetReusableDelegationSetResponse from required parameters

#### `newGetReusableDelegationSetResponse'`

``` purescript
newGetReusableDelegationSetResponse' :: DelegationSet -> ({ "DelegationSet" :: DelegationSet } -> { "DelegationSet" :: DelegationSet }) -> GetReusableDelegationSetResponse
```

Constructs GetReusableDelegationSetResponse's fields from required parameters

#### `GetTrafficPolicyInstanceCountRequest`

``` purescript
newtype GetTrafficPolicyInstanceCountRequest
  = GetTrafficPolicyInstanceCountRequest NoArguments
```

<p>Request to get the number of traffic policy instances that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype GetTrafficPolicyInstanceCountRequest _
Generic GetTrafficPolicyInstanceCountRequest _
Show GetTrafficPolicyInstanceCountRequest
Decode GetTrafficPolicyInstanceCountRequest
Encode GetTrafficPolicyInstanceCountRequest
```

#### `GetTrafficPolicyInstanceCountResponse`

``` purescript
newtype GetTrafficPolicyInstanceCountResponse
  = GetTrafficPolicyInstanceCountResponse { "TrafficPolicyInstanceCount" :: TrafficPolicyInstanceCount }
```

<p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>

##### Instances
``` purescript
Newtype GetTrafficPolicyInstanceCountResponse _
Generic GetTrafficPolicyInstanceCountResponse _
Show GetTrafficPolicyInstanceCountResponse
Decode GetTrafficPolicyInstanceCountResponse
Encode GetTrafficPolicyInstanceCountResponse
```

#### `newGetTrafficPolicyInstanceCountResponse`

``` purescript
newGetTrafficPolicyInstanceCountResponse :: TrafficPolicyInstanceCount -> GetTrafficPolicyInstanceCountResponse
```

Constructs GetTrafficPolicyInstanceCountResponse from required parameters

#### `newGetTrafficPolicyInstanceCountResponse'`

``` purescript
newGetTrafficPolicyInstanceCountResponse' :: TrafficPolicyInstanceCount -> ({ "TrafficPolicyInstanceCount" :: TrafficPolicyInstanceCount } -> { "TrafficPolicyInstanceCount" :: TrafficPolicyInstanceCount }) -> GetTrafficPolicyInstanceCountResponse
```

Constructs GetTrafficPolicyInstanceCountResponse's fields from required parameters

#### `GetTrafficPolicyInstanceRequest`

``` purescript
newtype GetTrafficPolicyInstanceRequest
  = GetTrafficPolicyInstanceRequest { "Id" :: TrafficPolicyInstanceId }
```

<p>Gets information about a specified traffic policy instance.</p>

##### Instances
``` purescript
Newtype GetTrafficPolicyInstanceRequest _
Generic GetTrafficPolicyInstanceRequest _
Show GetTrafficPolicyInstanceRequest
Decode GetTrafficPolicyInstanceRequest
Encode GetTrafficPolicyInstanceRequest
```

#### `newGetTrafficPolicyInstanceRequest`

``` purescript
newGetTrafficPolicyInstanceRequest :: TrafficPolicyInstanceId -> GetTrafficPolicyInstanceRequest
```

Constructs GetTrafficPolicyInstanceRequest from required parameters

#### `newGetTrafficPolicyInstanceRequest'`

``` purescript
newGetTrafficPolicyInstanceRequest' :: TrafficPolicyInstanceId -> ({ "Id" :: TrafficPolicyInstanceId } -> { "Id" :: TrafficPolicyInstanceId }) -> GetTrafficPolicyInstanceRequest
```

Constructs GetTrafficPolicyInstanceRequest's fields from required parameters

#### `GetTrafficPolicyInstanceResponse`

``` purescript
newtype GetTrafficPolicyInstanceResponse
  = GetTrafficPolicyInstanceResponse { "TrafficPolicyInstance" :: TrafficPolicyInstance }
```

<p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>

##### Instances
``` purescript
Newtype GetTrafficPolicyInstanceResponse _
Generic GetTrafficPolicyInstanceResponse _
Show GetTrafficPolicyInstanceResponse
Decode GetTrafficPolicyInstanceResponse
Encode GetTrafficPolicyInstanceResponse
```

#### `newGetTrafficPolicyInstanceResponse`

``` purescript
newGetTrafficPolicyInstanceResponse :: TrafficPolicyInstance -> GetTrafficPolicyInstanceResponse
```

Constructs GetTrafficPolicyInstanceResponse from required parameters

#### `newGetTrafficPolicyInstanceResponse'`

``` purescript
newGetTrafficPolicyInstanceResponse' :: TrafficPolicyInstance -> ({ "TrafficPolicyInstance" :: TrafficPolicyInstance } -> { "TrafficPolicyInstance" :: TrafficPolicyInstance }) -> GetTrafficPolicyInstanceResponse
```

Constructs GetTrafficPolicyInstanceResponse's fields from required parameters

#### `GetTrafficPolicyRequest`

``` purescript
newtype GetTrafficPolicyRequest
  = GetTrafficPolicyRequest { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion }
```

<p>Gets information about a specific traffic policy version.</p>

##### Instances
``` purescript
Newtype GetTrafficPolicyRequest _
Generic GetTrafficPolicyRequest _
Show GetTrafficPolicyRequest
Decode GetTrafficPolicyRequest
Encode GetTrafficPolicyRequest
```

#### `newGetTrafficPolicyRequest`

``` purescript
newGetTrafficPolicyRequest :: TrafficPolicyId -> TrafficPolicyVersion -> GetTrafficPolicyRequest
```

Constructs GetTrafficPolicyRequest from required parameters

#### `newGetTrafficPolicyRequest'`

``` purescript
newGetTrafficPolicyRequest' :: TrafficPolicyId -> TrafficPolicyVersion -> ({ "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion } -> { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion }) -> GetTrafficPolicyRequest
```

Constructs GetTrafficPolicyRequest's fields from required parameters

#### `GetTrafficPolicyResponse`

``` purescript
newtype GetTrafficPolicyResponse
  = GetTrafficPolicyResponse { "TrafficPolicy" :: TrafficPolicy }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype GetTrafficPolicyResponse _
Generic GetTrafficPolicyResponse _
Show GetTrafficPolicyResponse
Decode GetTrafficPolicyResponse
Encode GetTrafficPolicyResponse
```

#### `newGetTrafficPolicyResponse`

``` purescript
newGetTrafficPolicyResponse :: TrafficPolicy -> GetTrafficPolicyResponse
```

Constructs GetTrafficPolicyResponse from required parameters

#### `newGetTrafficPolicyResponse'`

``` purescript
newGetTrafficPolicyResponse' :: TrafficPolicy -> ({ "TrafficPolicy" :: TrafficPolicy } -> { "TrafficPolicy" :: TrafficPolicy }) -> GetTrafficPolicyResponse
```

Constructs GetTrafficPolicyResponse's fields from required parameters

#### `HealthCheck`

``` purescript
newtype HealthCheck
  = HealthCheck { "Id" :: HealthCheckId, "CallerReference" :: HealthCheckNonce, "LinkedService" :: Maybe (LinkedService), "HealthCheckConfig" :: HealthCheckConfig, "HealthCheckVersion" :: HealthCheckVersion, "CloudWatchAlarmConfiguration" :: Maybe (CloudWatchAlarmConfiguration) }
```

<p>A complex type that contains information about one health check that is associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype HealthCheck _
Generic HealthCheck _
Show HealthCheck
Decode HealthCheck
Encode HealthCheck
```

#### `newHealthCheck`

``` purescript
newHealthCheck :: HealthCheckNonce -> HealthCheckConfig -> HealthCheckVersion -> HealthCheckId -> HealthCheck
```

Constructs HealthCheck from required parameters

#### `newHealthCheck'`

``` purescript
newHealthCheck' :: HealthCheckNonce -> HealthCheckConfig -> HealthCheckVersion -> HealthCheckId -> ({ "Id" :: HealthCheckId, "CallerReference" :: HealthCheckNonce, "LinkedService" :: Maybe (LinkedService), "HealthCheckConfig" :: HealthCheckConfig, "HealthCheckVersion" :: HealthCheckVersion, "CloudWatchAlarmConfiguration" :: Maybe (CloudWatchAlarmConfiguration) } -> { "Id" :: HealthCheckId, "CallerReference" :: HealthCheckNonce, "LinkedService" :: Maybe (LinkedService), "HealthCheckConfig" :: HealthCheckConfig, "HealthCheckVersion" :: HealthCheckVersion, "CloudWatchAlarmConfiguration" :: Maybe (CloudWatchAlarmConfiguration) }) -> HealthCheck
```

Constructs HealthCheck's fields from required parameters

#### `HealthCheckAlreadyExists`

``` purescript
newtype HealthCheckAlreadyExists
  = HealthCheckAlreadyExists { message :: Maybe (ErrorMessage) }
```

<p> The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that has the following values:</p> <ul> <li> <p>The same value for <code>CallerReference</code> as an existing health check, and one or more values that differ from the existing health check that has the same caller reference.</p> </li> <li> <p>The same value for <code>CallerReference</code> as a health check that you created and later deleted, regardless of the other settings in the request.</p> </li> </ul>

##### Instances
``` purescript
Newtype HealthCheckAlreadyExists _
Generic HealthCheckAlreadyExists _
Show HealthCheckAlreadyExists
Decode HealthCheckAlreadyExists
Encode HealthCheckAlreadyExists
```

#### `newHealthCheckAlreadyExists`

``` purescript
newHealthCheckAlreadyExists :: HealthCheckAlreadyExists
```

Constructs HealthCheckAlreadyExists from required parameters

#### `newHealthCheckAlreadyExists'`

``` purescript
newHealthCheckAlreadyExists' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HealthCheckAlreadyExists
```

Constructs HealthCheckAlreadyExists's fields from required parameters

#### `HealthCheckConfig`

``` purescript
newtype HealthCheckConfig
  = HealthCheckConfig { "IPAddress" :: Maybe (IPAddress), "Port" :: Maybe (Port), "Type" :: HealthCheckType, "ResourcePath" :: Maybe (ResourcePath), "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName), "SearchString" :: Maybe (SearchString), "RequestInterval" :: Maybe (RequestInterval), "FailureThreshold" :: Maybe (FailureThreshold), "MeasureLatency" :: Maybe (MeasureLatency), "Inverted" :: Maybe (Inverted), "HealthThreshold" :: Maybe (HealthThreshold), "ChildHealthChecks" :: Maybe (ChildHealthCheckList), "EnableSNI" :: Maybe (EnableSNI), "Regions" :: Maybe (HealthCheckRegionList), "AlarmIdentifier" :: Maybe (AlarmIdentifier), "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) }
```

<p>A complex type that contains information about the health check.</p>

##### Instances
``` purescript
Newtype HealthCheckConfig _
Generic HealthCheckConfig _
Show HealthCheckConfig
Decode HealthCheckConfig
Encode HealthCheckConfig
```

#### `newHealthCheckConfig`

``` purescript
newHealthCheckConfig :: HealthCheckType -> HealthCheckConfig
```

Constructs HealthCheckConfig from required parameters

#### `newHealthCheckConfig'`

``` purescript
newHealthCheckConfig' :: HealthCheckType -> ({ "IPAddress" :: Maybe (IPAddress), "Port" :: Maybe (Port), "Type" :: HealthCheckType, "ResourcePath" :: Maybe (ResourcePath), "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName), "SearchString" :: Maybe (SearchString), "RequestInterval" :: Maybe (RequestInterval), "FailureThreshold" :: Maybe (FailureThreshold), "MeasureLatency" :: Maybe (MeasureLatency), "Inverted" :: Maybe (Inverted), "HealthThreshold" :: Maybe (HealthThreshold), "ChildHealthChecks" :: Maybe (ChildHealthCheckList), "EnableSNI" :: Maybe (EnableSNI), "Regions" :: Maybe (HealthCheckRegionList), "AlarmIdentifier" :: Maybe (AlarmIdentifier), "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) } -> { "IPAddress" :: Maybe (IPAddress), "Port" :: Maybe (Port), "Type" :: HealthCheckType, "ResourcePath" :: Maybe (ResourcePath), "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName), "SearchString" :: Maybe (SearchString), "RequestInterval" :: Maybe (RequestInterval), "FailureThreshold" :: Maybe (FailureThreshold), "MeasureLatency" :: Maybe (MeasureLatency), "Inverted" :: Maybe (Inverted), "HealthThreshold" :: Maybe (HealthThreshold), "ChildHealthChecks" :: Maybe (ChildHealthCheckList), "EnableSNI" :: Maybe (EnableSNI), "Regions" :: Maybe (HealthCheckRegionList), "AlarmIdentifier" :: Maybe (AlarmIdentifier), "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus) }) -> HealthCheckConfig
```

Constructs HealthCheckConfig's fields from required parameters

#### `HealthCheckCount`

``` purescript
newtype HealthCheckCount
  = HealthCheckCount Number
```

##### Instances
``` purescript
Newtype HealthCheckCount _
Generic HealthCheckCount _
Show HealthCheckCount
Decode HealthCheckCount
Encode HealthCheckCount
```

#### `HealthCheckId`

``` purescript
newtype HealthCheckId
  = HealthCheckId String
```

##### Instances
``` purescript
Newtype HealthCheckId _
Generic HealthCheckId _
Show HealthCheckId
Decode HealthCheckId
Encode HealthCheckId
```

#### `HealthCheckInUse`

``` purescript
newtype HealthCheckInUse
  = HealthCheckInUse { message :: Maybe (ErrorMessage) }
```

<p>This error code is not in use.</p>

##### Instances
``` purescript
Newtype HealthCheckInUse _
Generic HealthCheckInUse _
Show HealthCheckInUse
Decode HealthCheckInUse
Encode HealthCheckInUse
```

#### `newHealthCheckInUse`

``` purescript
newHealthCheckInUse :: HealthCheckInUse
```

Constructs HealthCheckInUse from required parameters

#### `newHealthCheckInUse'`

``` purescript
newHealthCheckInUse' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HealthCheckInUse
```

Constructs HealthCheckInUse's fields from required parameters

#### `HealthCheckNonce`

``` purescript
newtype HealthCheckNonce
  = HealthCheckNonce String
```

##### Instances
``` purescript
Newtype HealthCheckNonce _
Generic HealthCheckNonce _
Show HealthCheckNonce
Decode HealthCheckNonce
Encode HealthCheckNonce
```

#### `HealthCheckObservation`

``` purescript
newtype HealthCheckObservation
  = HealthCheckObservation { "Region" :: Maybe (HealthCheckRegion), "IPAddress" :: Maybe (IPAddress), "StatusReport" :: Maybe (StatusReport) }
```

<p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker.</p>

##### Instances
``` purescript
Newtype HealthCheckObservation _
Generic HealthCheckObservation _
Show HealthCheckObservation
Decode HealthCheckObservation
Encode HealthCheckObservation
```

#### `newHealthCheckObservation`

``` purescript
newHealthCheckObservation :: HealthCheckObservation
```

Constructs HealthCheckObservation from required parameters

#### `newHealthCheckObservation'`

``` purescript
newHealthCheckObservation' :: ({ "Region" :: Maybe (HealthCheckRegion), "IPAddress" :: Maybe (IPAddress), "StatusReport" :: Maybe (StatusReport) } -> { "Region" :: Maybe (HealthCheckRegion), "IPAddress" :: Maybe (IPAddress), "StatusReport" :: Maybe (StatusReport) }) -> HealthCheckObservation
```

Constructs HealthCheckObservation's fields from required parameters

#### `HealthCheckObservations`

``` purescript
newtype HealthCheckObservations
  = HealthCheckObservations (Array HealthCheckObservation)
```

##### Instances
``` purescript
Newtype HealthCheckObservations _
Generic HealthCheckObservations _
Show HealthCheckObservations
Decode HealthCheckObservations
Encode HealthCheckObservations
```

#### `HealthCheckRegion`

``` purescript
newtype HealthCheckRegion
  = HealthCheckRegion String
```

##### Instances
``` purescript
Newtype HealthCheckRegion _
Generic HealthCheckRegion _
Show HealthCheckRegion
Decode HealthCheckRegion
Encode HealthCheckRegion
```

#### `HealthCheckRegionList`

``` purescript
newtype HealthCheckRegionList
  = HealthCheckRegionList (Array HealthCheckRegion)
```

##### Instances
``` purescript
Newtype HealthCheckRegionList _
Generic HealthCheckRegionList _
Show HealthCheckRegionList
Decode HealthCheckRegionList
Encode HealthCheckRegionList
```

#### `HealthCheckType`

``` purescript
newtype HealthCheckType
  = HealthCheckType String
```

##### Instances
``` purescript
Newtype HealthCheckType _
Generic HealthCheckType _
Show HealthCheckType
Decode HealthCheckType
Encode HealthCheckType
```

#### `HealthCheckVersion`

``` purescript
newtype HealthCheckVersion
  = HealthCheckVersion Number
```

##### Instances
``` purescript
Newtype HealthCheckVersion _
Generic HealthCheckVersion _
Show HealthCheckVersion
Decode HealthCheckVersion
Encode HealthCheckVersion
```

#### `HealthCheckVersionMismatch`

``` purescript
newtype HealthCheckVersionMismatch
  = HealthCheckVersionMismatch { message :: Maybe (ErrorMessage) }
```

<p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of <code>HealthCheckVersion</code> in the health check.</p>

##### Instances
``` purescript
Newtype HealthCheckVersionMismatch _
Generic HealthCheckVersionMismatch _
Show HealthCheckVersionMismatch
Decode HealthCheckVersionMismatch
Encode HealthCheckVersionMismatch
```

#### `newHealthCheckVersionMismatch`

``` purescript
newHealthCheckVersionMismatch :: HealthCheckVersionMismatch
```

Constructs HealthCheckVersionMismatch from required parameters

#### `newHealthCheckVersionMismatch'`

``` purescript
newHealthCheckVersionMismatch' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HealthCheckVersionMismatch
```

Constructs HealthCheckVersionMismatch's fields from required parameters

#### `HealthChecks`

``` purescript
newtype HealthChecks
  = HealthChecks (Array HealthCheck)
```

##### Instances
``` purescript
Newtype HealthChecks _
Generic HealthChecks _
Show HealthChecks
Decode HealthChecks
Encode HealthChecks
```

#### `HealthThreshold`

``` purescript
newtype HealthThreshold
  = HealthThreshold Int
```

##### Instances
``` purescript
Newtype HealthThreshold _
Generic HealthThreshold _
Show HealthThreshold
Decode HealthThreshold
Encode HealthThreshold
```

#### `HostedZone`

``` purescript
newtype HostedZone
  = HostedZone { "Id" :: ResourceId, "Name" :: DNSName, "CallerReference" :: Nonce, "Config" :: Maybe (HostedZoneConfig), "ResourceRecordSetCount" :: Maybe (HostedZoneRRSetCount), "LinkedService" :: Maybe (LinkedService) }
```

<p>A complex type that contains general information about the hosted zone.</p>

##### Instances
``` purescript
Newtype HostedZone _
Generic HostedZone _
Show HostedZone
Decode HostedZone
Encode HostedZone
```

#### `newHostedZone`

``` purescript
newHostedZone :: Nonce -> ResourceId -> DNSName -> HostedZone
```

Constructs HostedZone from required parameters

#### `newHostedZone'`

``` purescript
newHostedZone' :: Nonce -> ResourceId -> DNSName -> ({ "Id" :: ResourceId, "Name" :: DNSName, "CallerReference" :: Nonce, "Config" :: Maybe (HostedZoneConfig), "ResourceRecordSetCount" :: Maybe (HostedZoneRRSetCount), "LinkedService" :: Maybe (LinkedService) } -> { "Id" :: ResourceId, "Name" :: DNSName, "CallerReference" :: Nonce, "Config" :: Maybe (HostedZoneConfig), "ResourceRecordSetCount" :: Maybe (HostedZoneRRSetCount), "LinkedService" :: Maybe (LinkedService) }) -> HostedZone
```

Constructs HostedZone's fields from required parameters

#### `HostedZoneAlreadyExists`

``` purescript
newtype HostedZoneAlreadyExists
  = HostedZoneAlreadyExists { message :: Maybe (ErrorMessage) }
```

<p>The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified <code>CallerReference</code>.</p>

##### Instances
``` purescript
Newtype HostedZoneAlreadyExists _
Generic HostedZoneAlreadyExists _
Show HostedZoneAlreadyExists
Decode HostedZoneAlreadyExists
Encode HostedZoneAlreadyExists
```

#### `newHostedZoneAlreadyExists`

``` purescript
newHostedZoneAlreadyExists :: HostedZoneAlreadyExists
```

Constructs HostedZoneAlreadyExists from required parameters

#### `newHostedZoneAlreadyExists'`

``` purescript
newHostedZoneAlreadyExists' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HostedZoneAlreadyExists
```

Constructs HostedZoneAlreadyExists's fields from required parameters

#### `HostedZoneConfig`

``` purescript
newtype HostedZoneConfig
  = HostedZoneConfig { "Comment" :: Maybe (ResourceDescription), "PrivateZone" :: Maybe (IsPrivateZone) }
```

<p>A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the <code>HostedZoneConfig</code> and <code>Comment</code> elements.</p>

##### Instances
``` purescript
Newtype HostedZoneConfig _
Generic HostedZoneConfig _
Show HostedZoneConfig
Decode HostedZoneConfig
Encode HostedZoneConfig
```

#### `newHostedZoneConfig`

``` purescript
newHostedZoneConfig :: HostedZoneConfig
```

Constructs HostedZoneConfig from required parameters

#### `newHostedZoneConfig'`

``` purescript
newHostedZoneConfig' :: ({ "Comment" :: Maybe (ResourceDescription), "PrivateZone" :: Maybe (IsPrivateZone) } -> { "Comment" :: Maybe (ResourceDescription), "PrivateZone" :: Maybe (IsPrivateZone) }) -> HostedZoneConfig
```

Constructs HostedZoneConfig's fields from required parameters

#### `HostedZoneCount`

``` purescript
newtype HostedZoneCount
  = HostedZoneCount Number
```

##### Instances
``` purescript
Newtype HostedZoneCount _
Generic HostedZoneCount _
Show HostedZoneCount
Decode HostedZoneCount
Encode HostedZoneCount
```

#### `HostedZoneLimit`

``` purescript
newtype HostedZoneLimit
  = HostedZoneLimit { "Type" :: HostedZoneLimitType, "Value" :: LimitValue }
```

<p>A complex type that contains the type of limit that you specified in the request and the current value for that limit.</p>

##### Instances
``` purescript
Newtype HostedZoneLimit _
Generic HostedZoneLimit _
Show HostedZoneLimit
Decode HostedZoneLimit
Encode HostedZoneLimit
```

#### `newHostedZoneLimit`

``` purescript
newHostedZoneLimit :: HostedZoneLimitType -> LimitValue -> HostedZoneLimit
```

Constructs HostedZoneLimit from required parameters

#### `newHostedZoneLimit'`

``` purescript
newHostedZoneLimit' :: HostedZoneLimitType -> LimitValue -> ({ "Type" :: HostedZoneLimitType, "Value" :: LimitValue } -> { "Type" :: HostedZoneLimitType, "Value" :: LimitValue }) -> HostedZoneLimit
```

Constructs HostedZoneLimit's fields from required parameters

#### `HostedZoneLimitType`

``` purescript
newtype HostedZoneLimitType
  = HostedZoneLimitType String
```

##### Instances
``` purescript
Newtype HostedZoneLimitType _
Generic HostedZoneLimitType _
Show HostedZoneLimitType
Decode HostedZoneLimitType
Encode HostedZoneLimitType
```

#### `HostedZoneNotEmpty`

``` purescript
newtype HostedZoneNotEmpty
  = HostedZoneNotEmpty { message :: Maybe (ErrorMessage) }
```

<p>The hosted zone contains resource records that are not SOA or NS records.</p>

##### Instances
``` purescript
Newtype HostedZoneNotEmpty _
Generic HostedZoneNotEmpty _
Show HostedZoneNotEmpty
Decode HostedZoneNotEmpty
Encode HostedZoneNotEmpty
```

#### `newHostedZoneNotEmpty`

``` purescript
newHostedZoneNotEmpty :: HostedZoneNotEmpty
```

Constructs HostedZoneNotEmpty from required parameters

#### `newHostedZoneNotEmpty'`

``` purescript
newHostedZoneNotEmpty' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HostedZoneNotEmpty
```

Constructs HostedZoneNotEmpty's fields from required parameters

#### `HostedZoneNotFound`

``` purescript
newtype HostedZoneNotFound
  = HostedZoneNotFound { message :: Maybe (ErrorMessage) }
```

<p>The specified HostedZone can't be found.</p>

##### Instances
``` purescript
Newtype HostedZoneNotFound _
Generic HostedZoneNotFound _
Show HostedZoneNotFound
Decode HostedZoneNotFound
Encode HostedZoneNotFound
```

#### `newHostedZoneNotFound`

``` purescript
newHostedZoneNotFound :: HostedZoneNotFound
```

Constructs HostedZoneNotFound from required parameters

#### `newHostedZoneNotFound'`

``` purescript
newHostedZoneNotFound' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HostedZoneNotFound
```

Constructs HostedZoneNotFound's fields from required parameters

#### `HostedZoneNotPrivate`

``` purescript
newtype HostedZoneNotPrivate
  = HostedZoneNotPrivate { message :: Maybe (ErrorMessage) }
```

<p>The specified hosted zone is a public hosted zone, not a private hosted zone.</p>

##### Instances
``` purescript
Newtype HostedZoneNotPrivate _
Generic HostedZoneNotPrivate _
Show HostedZoneNotPrivate
Decode HostedZoneNotPrivate
Encode HostedZoneNotPrivate
```

#### `newHostedZoneNotPrivate`

``` purescript
newHostedZoneNotPrivate :: HostedZoneNotPrivate
```

Constructs HostedZoneNotPrivate from required parameters

#### `newHostedZoneNotPrivate'`

``` purescript
newHostedZoneNotPrivate' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> HostedZoneNotPrivate
```

Constructs HostedZoneNotPrivate's fields from required parameters

#### `HostedZoneRRSetCount`

``` purescript
newtype HostedZoneRRSetCount
  = HostedZoneRRSetCount Number
```

##### Instances
``` purescript
Newtype HostedZoneRRSetCount _
Generic HostedZoneRRSetCount _
Show HostedZoneRRSetCount
Decode HostedZoneRRSetCount
Encode HostedZoneRRSetCount
```

#### `HostedZones`

``` purescript
newtype HostedZones
  = HostedZones (Array HostedZone)
```

##### Instances
``` purescript
Newtype HostedZones _
Generic HostedZones _
Show HostedZones
Decode HostedZones
Encode HostedZones
```

#### `IPAddress`

``` purescript
newtype IPAddress
  = IPAddress String
```

##### Instances
``` purescript
Newtype IPAddress _
Generic IPAddress _
Show IPAddress
Decode IPAddress
Encode IPAddress
```

#### `IPAddressCidr`

``` purescript
newtype IPAddressCidr
  = IPAddressCidr String
```

##### Instances
``` purescript
Newtype IPAddressCidr _
Generic IPAddressCidr _
Show IPAddressCidr
Decode IPAddressCidr
Encode IPAddressCidr
```

#### `IncompatibleVersion`

``` purescript
newtype IncompatibleVersion
  = IncompatibleVersion { message :: Maybe (ErrorMessage) }
```

<p>The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.</p>

##### Instances
``` purescript
Newtype IncompatibleVersion _
Generic IncompatibleVersion _
Show IncompatibleVersion
Decode IncompatibleVersion
Encode IncompatibleVersion
```

#### `newIncompatibleVersion`

``` purescript
newIncompatibleVersion :: IncompatibleVersion
```

Constructs IncompatibleVersion from required parameters

#### `newIncompatibleVersion'`

``` purescript
newIncompatibleVersion' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> IncompatibleVersion
```

Constructs IncompatibleVersion's fields from required parameters

#### `InsufficientCloudWatchLogsResourcePolicy`

``` purescript
newtype InsufficientCloudWatchLogsResourcePolicy
  = InsufficientCloudWatchLogsResourcePolicy { message :: Maybe (ErrorMessage) }
```

<p>Amazon Route 53 doesn't have the permissions required to create log streams and send query logs to log streams. Possible causes include the following:</p> <ul> <li> <p>There is no resource policy that specifies the log group ARN in the value for <code>Resource</code>.</p> </li> <li> <p>The resource policy that includes the log group ARN in the value for <code>Resource</code> doesn't have the necessary permissions.</p> </li> <li> <p>The resource policy hasn't finished propagating yet.</p> </li> </ul>

##### Instances
``` purescript
Newtype InsufficientCloudWatchLogsResourcePolicy _
Generic InsufficientCloudWatchLogsResourcePolicy _
Show InsufficientCloudWatchLogsResourcePolicy
Decode InsufficientCloudWatchLogsResourcePolicy
Encode InsufficientCloudWatchLogsResourcePolicy
```

#### `newInsufficientCloudWatchLogsResourcePolicy`

``` purescript
newInsufficientCloudWatchLogsResourcePolicy :: InsufficientCloudWatchLogsResourcePolicy
```

Constructs InsufficientCloudWatchLogsResourcePolicy from required parameters

#### `newInsufficientCloudWatchLogsResourcePolicy'`

``` purescript
newInsufficientCloudWatchLogsResourcePolicy' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InsufficientCloudWatchLogsResourcePolicy
```

Constructs InsufficientCloudWatchLogsResourcePolicy's fields from required parameters

#### `InsufficientDataHealthStatus`

``` purescript
newtype InsufficientDataHealthStatus
  = InsufficientDataHealthStatus String
```

##### Instances
``` purescript
Newtype InsufficientDataHealthStatus _
Generic InsufficientDataHealthStatus _
Show InsufficientDataHealthStatus
Decode InsufficientDataHealthStatus
Encode InsufficientDataHealthStatus
```

#### `InvalidArgument`

``` purescript
newtype InvalidArgument
  = InvalidArgument { message :: Maybe (ErrorMessage) }
```

<p>Parameter name is invalid.</p>

##### Instances
``` purescript
Newtype InvalidArgument _
Generic InvalidArgument _
Show InvalidArgument
Decode InvalidArgument
Encode InvalidArgument
```

#### `newInvalidArgument`

``` purescript
newInvalidArgument :: InvalidArgument
```

Constructs InvalidArgument from required parameters

#### `newInvalidArgument'`

``` purescript
newInvalidArgument' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidArgument
```

Constructs InvalidArgument's fields from required parameters

#### `InvalidChangeBatch`

``` purescript
newtype InvalidChangeBatch
  = InvalidChangeBatch { messages :: Maybe (ErrorMessages), message :: Maybe (ErrorMessage) }
```

<p>This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.</p>

##### Instances
``` purescript
Newtype InvalidChangeBatch _
Generic InvalidChangeBatch _
Show InvalidChangeBatch
Decode InvalidChangeBatch
Encode InvalidChangeBatch
```

#### `newInvalidChangeBatch`

``` purescript
newInvalidChangeBatch :: InvalidChangeBatch
```

Constructs InvalidChangeBatch from required parameters

#### `newInvalidChangeBatch'`

``` purescript
newInvalidChangeBatch' :: ({ messages :: Maybe (ErrorMessages), message :: Maybe (ErrorMessage) } -> { messages :: Maybe (ErrorMessages), message :: Maybe (ErrorMessage) }) -> InvalidChangeBatch
```

Constructs InvalidChangeBatch's fields from required parameters

#### `InvalidDomainName`

``` purescript
newtype InvalidDomainName
  = InvalidDomainName { message :: Maybe (ErrorMessage) }
```

<p>The specified domain name is not valid.</p>

##### Instances
``` purescript
Newtype InvalidDomainName _
Generic InvalidDomainName _
Show InvalidDomainName
Decode InvalidDomainName
Encode InvalidDomainName
```

#### `newInvalidDomainName`

``` purescript
newInvalidDomainName :: InvalidDomainName
```

Constructs InvalidDomainName from required parameters

#### `newInvalidDomainName'`

``` purescript
newInvalidDomainName' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidDomainName
```

Constructs InvalidDomainName's fields from required parameters

#### `InvalidInput`

``` purescript
newtype InvalidInput
  = InvalidInput { message :: Maybe (ErrorMessage) }
```

<p>The input is not valid.</p>

##### Instances
``` purescript
Newtype InvalidInput _
Generic InvalidInput _
Show InvalidInput
Decode InvalidInput
Encode InvalidInput
```

#### `newInvalidInput`

``` purescript
newInvalidInput :: InvalidInput
```

Constructs InvalidInput from required parameters

#### `newInvalidInput'`

``` purescript
newInvalidInput' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidInput
```

Constructs InvalidInput's fields from required parameters

#### `InvalidPaginationToken`

``` purescript
newtype InvalidPaginationToken
  = InvalidPaginationToken { message :: Maybe (ErrorMessage) }
```

<p>The value that you specified to get the second or subsequent page of results is invalid.</p>

##### Instances
``` purescript
Newtype InvalidPaginationToken _
Generic InvalidPaginationToken _
Show InvalidPaginationToken
Decode InvalidPaginationToken
Encode InvalidPaginationToken
```

#### `newInvalidPaginationToken`

``` purescript
newInvalidPaginationToken :: InvalidPaginationToken
```

Constructs InvalidPaginationToken from required parameters

#### `newInvalidPaginationToken'`

``` purescript
newInvalidPaginationToken' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidPaginationToken
```

Constructs InvalidPaginationToken's fields from required parameters

#### `InvalidTrafficPolicyDocument`

``` purescript
newtype InvalidTrafficPolicyDocument
  = InvalidTrafficPolicyDocument { message :: Maybe (ErrorMessage) }
```

<p>The format of the traffic policy document that you specified in the <code>Document</code> element is invalid.</p>

##### Instances
``` purescript
Newtype InvalidTrafficPolicyDocument _
Generic InvalidTrafficPolicyDocument _
Show InvalidTrafficPolicyDocument
Decode InvalidTrafficPolicyDocument
Encode InvalidTrafficPolicyDocument
```

#### `newInvalidTrafficPolicyDocument`

``` purescript
newInvalidTrafficPolicyDocument :: InvalidTrafficPolicyDocument
```

Constructs InvalidTrafficPolicyDocument from required parameters

#### `newInvalidTrafficPolicyDocument'`

``` purescript
newInvalidTrafficPolicyDocument' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidTrafficPolicyDocument
```

Constructs InvalidTrafficPolicyDocument's fields from required parameters

#### `InvalidVPCId`

``` purescript
newtype InvalidVPCId
  = InvalidVPCId { message :: Maybe (ErrorMessage) }
```

<p>The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.</p>

##### Instances
``` purescript
Newtype InvalidVPCId _
Generic InvalidVPCId _
Show InvalidVPCId
Decode InvalidVPCId
Encode InvalidVPCId
```

#### `newInvalidVPCId`

``` purescript
newInvalidVPCId :: InvalidVPCId
```

Constructs InvalidVPCId from required parameters

#### `newInvalidVPCId'`

``` purescript
newInvalidVPCId' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidVPCId
```

Constructs InvalidVPCId's fields from required parameters

#### `Inverted`

``` purescript
newtype Inverted
  = Inverted Boolean
```

##### Instances
``` purescript
Newtype Inverted _
Generic Inverted _
Show Inverted
Decode Inverted
Encode Inverted
```

#### `IsPrivateZone`

``` purescript
newtype IsPrivateZone
  = IsPrivateZone Boolean
```

##### Instances
``` purescript
Newtype IsPrivateZone _
Generic IsPrivateZone _
Show IsPrivateZone
Decode IsPrivateZone
Encode IsPrivateZone
```

#### `LastVPCAssociation`

``` purescript
newtype LastVPCAssociation
  = LastVPCAssociation { message :: Maybe (ErrorMessage) }
```

<p>The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.</p>

##### Instances
``` purescript
Newtype LastVPCAssociation _
Generic LastVPCAssociation _
Show LastVPCAssociation
Decode LastVPCAssociation
Encode LastVPCAssociation
```

#### `newLastVPCAssociation`

``` purescript
newLastVPCAssociation :: LastVPCAssociation
```

Constructs LastVPCAssociation from required parameters

#### `newLastVPCAssociation'`

``` purescript
newLastVPCAssociation' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> LastVPCAssociation
```

Constructs LastVPCAssociation's fields from required parameters

#### `LimitValue`

``` purescript
newtype LimitValue
  = LimitValue Number
```

##### Instances
``` purescript
Newtype LimitValue _
Generic LimitValue _
Show LimitValue
Decode LimitValue
Encode LimitValue
```

#### `LimitsExceeded`

``` purescript
newtype LimitsExceeded
  = LimitsExceeded { message :: Maybe (ErrorMessage) }
```

<p>This operation can't be completed either because the current account has reached the limit on reusable delegation sets that it can create or because you've reached the limit on the number of Amazon VPCs that you can associate with a private hosted zone. To get the current limit on the number of reusable delegation sets, see <a>GetAccountLimit</a>. To get the current limit on the number of Amazon VPCs that you can associate with a private hosted zone, see <a>GetHostedZoneLimit</a>. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>

##### Instances
``` purescript
Newtype LimitsExceeded _
Generic LimitsExceeded _
Show LimitsExceeded
Decode LimitsExceeded
Encode LimitsExceeded
```

#### `newLimitsExceeded`

``` purescript
newLimitsExceeded :: LimitsExceeded
```

Constructs LimitsExceeded from required parameters

#### `newLimitsExceeded'`

``` purescript
newLimitsExceeded' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> LimitsExceeded
```

Constructs LimitsExceeded's fields from required parameters

#### `LinkedService`

``` purescript
newtype LinkedService
  = LinkedService { "ServicePrincipal" :: Maybe (ServicePrincipal), "Description" :: Maybe (ResourceDescription) }
```

<p>If a health check or hosted zone was created by another service, <code>LinkedService</code> is a complex type that describes the service that created the resource. When a resource is created by another service, you can't edit or delete it using Amazon Route 53. </p>

##### Instances
``` purescript
Newtype LinkedService _
Generic LinkedService _
Show LinkedService
Decode LinkedService
Encode LinkedService
```

#### `newLinkedService`

``` purescript
newLinkedService :: LinkedService
```

Constructs LinkedService from required parameters

#### `newLinkedService'`

``` purescript
newLinkedService' :: ({ "ServicePrincipal" :: Maybe (ServicePrincipal), "Description" :: Maybe (ResourceDescription) } -> { "ServicePrincipal" :: Maybe (ServicePrincipal), "Description" :: Maybe (ResourceDescription) }) -> LinkedService
```

Constructs LinkedService's fields from required parameters

#### `ListGeoLocationsRequest`

``` purescript
newtype ListGeoLocationsRequest
  = ListGeoLocationsRequest { "StartContinentCode" :: Maybe (GeoLocationContinentCode), "StartCountryCode" :: Maybe (GeoLocationCountryCode), "StartSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A request to get a list of geographic locations that Amazon Route 53 supports for geolocation resource record sets. </p>

##### Instances
``` purescript
Newtype ListGeoLocationsRequest _
Generic ListGeoLocationsRequest _
Show ListGeoLocationsRequest
Decode ListGeoLocationsRequest
Encode ListGeoLocationsRequest
```

#### `newListGeoLocationsRequest`

``` purescript
newListGeoLocationsRequest :: ListGeoLocationsRequest
```

Constructs ListGeoLocationsRequest from required parameters

#### `newListGeoLocationsRequest'`

``` purescript
newListGeoLocationsRequest' :: ({ "StartContinentCode" :: Maybe (GeoLocationContinentCode), "StartCountryCode" :: Maybe (GeoLocationCountryCode), "StartSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "MaxItems" :: Maybe (PageMaxItems) } -> { "StartContinentCode" :: Maybe (GeoLocationContinentCode), "StartCountryCode" :: Maybe (GeoLocationCountryCode), "StartSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "MaxItems" :: Maybe (PageMaxItems) }) -> ListGeoLocationsRequest
```

Constructs ListGeoLocationsRequest's fields from required parameters

#### `ListGeoLocationsResponse`

``` purescript
newtype ListGeoLocationsResponse
  = ListGeoLocationsResponse { "GeoLocationDetailsList" :: GeoLocationDetailsList, "IsTruncated" :: PageTruncated, "NextContinentCode" :: Maybe (GeoLocationContinentCode), "NextCountryCode" :: Maybe (GeoLocationCountryCode), "NextSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "MaxItems" :: PageMaxItems }
```

<p>A complex type containing the response information for the request.</p>

##### Instances
``` purescript
Newtype ListGeoLocationsResponse _
Generic ListGeoLocationsResponse _
Show ListGeoLocationsResponse
Decode ListGeoLocationsResponse
Encode ListGeoLocationsResponse
```

#### `newListGeoLocationsResponse`

``` purescript
newListGeoLocationsResponse :: GeoLocationDetailsList -> PageTruncated -> PageMaxItems -> ListGeoLocationsResponse
```

Constructs ListGeoLocationsResponse from required parameters

#### `newListGeoLocationsResponse'`

``` purescript
newListGeoLocationsResponse' :: GeoLocationDetailsList -> PageTruncated -> PageMaxItems -> ({ "GeoLocationDetailsList" :: GeoLocationDetailsList, "IsTruncated" :: PageTruncated, "NextContinentCode" :: Maybe (GeoLocationContinentCode), "NextCountryCode" :: Maybe (GeoLocationCountryCode), "NextSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "MaxItems" :: PageMaxItems } -> { "GeoLocationDetailsList" :: GeoLocationDetailsList, "IsTruncated" :: PageTruncated, "NextContinentCode" :: Maybe (GeoLocationContinentCode), "NextCountryCode" :: Maybe (GeoLocationCountryCode), "NextSubdivisionCode" :: Maybe (GeoLocationSubdivisionCode), "MaxItems" :: PageMaxItems }) -> ListGeoLocationsResponse
```

Constructs ListGeoLocationsResponse's fields from required parameters

#### `ListHealthChecksRequest`

``` purescript
newtype ListHealthChecksRequest
  = ListHealthChecksRequest { "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A request to retrieve a list of the health checks that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype ListHealthChecksRequest _
Generic ListHealthChecksRequest _
Show ListHealthChecksRequest
Decode ListHealthChecksRequest
Encode ListHealthChecksRequest
```

#### `newListHealthChecksRequest`

``` purescript
newListHealthChecksRequest :: ListHealthChecksRequest
```

Constructs ListHealthChecksRequest from required parameters

#### `newListHealthChecksRequest'`

``` purescript
newListHealthChecksRequest' :: ({ "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems) } -> { "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems) }) -> ListHealthChecksRequest
```

Constructs ListHealthChecksRequest's fields from required parameters

#### `ListHealthChecksResponse`

``` purescript
newtype ListHealthChecksResponse
  = ListHealthChecksResponse { "HealthChecks" :: HealthChecks, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response to a <code>ListHealthChecks</code> request.</p>

##### Instances
``` purescript
Newtype ListHealthChecksResponse _
Generic ListHealthChecksResponse _
Show ListHealthChecksResponse
Decode ListHealthChecksResponse
Encode ListHealthChecksResponse
```

#### `newListHealthChecksResponse`

``` purescript
newListHealthChecksResponse :: HealthChecks -> PageTruncated -> PageMarker -> PageMaxItems -> ListHealthChecksResponse
```

Constructs ListHealthChecksResponse from required parameters

#### `newListHealthChecksResponse'`

``` purescript
newListHealthChecksResponse' :: HealthChecks -> PageTruncated -> PageMarker -> PageMaxItems -> ({ "HealthChecks" :: HealthChecks, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems } -> { "HealthChecks" :: HealthChecks, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems }) -> ListHealthChecksResponse
```

Constructs ListHealthChecksResponse's fields from required parameters

#### `ListHostedZonesByNameRequest`

``` purescript
newtype ListHostedZonesByNameRequest
  = ListHostedZonesByNameRequest { "DNSName" :: Maybe (DNSName), "HostedZoneId" :: Maybe (ResourceId), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>Retrieves a list of the public and private hosted zones that are associated with the current AWS account in ASCII order by domain name. </p>

##### Instances
``` purescript
Newtype ListHostedZonesByNameRequest _
Generic ListHostedZonesByNameRequest _
Show ListHostedZonesByNameRequest
Decode ListHostedZonesByNameRequest
Encode ListHostedZonesByNameRequest
```

#### `newListHostedZonesByNameRequest`

``` purescript
newListHostedZonesByNameRequest :: ListHostedZonesByNameRequest
```

Constructs ListHostedZonesByNameRequest from required parameters

#### `newListHostedZonesByNameRequest'`

``` purescript
newListHostedZonesByNameRequest' :: ({ "DNSName" :: Maybe (DNSName), "HostedZoneId" :: Maybe (ResourceId), "MaxItems" :: Maybe (PageMaxItems) } -> { "DNSName" :: Maybe (DNSName), "HostedZoneId" :: Maybe (ResourceId), "MaxItems" :: Maybe (PageMaxItems) }) -> ListHostedZonesByNameRequest
```

Constructs ListHostedZonesByNameRequest's fields from required parameters

#### `ListHostedZonesByNameResponse`

``` purescript
newtype ListHostedZonesByNameResponse
  = ListHostedZonesByNameResponse { "HostedZones" :: HostedZones, "DNSName" :: Maybe (DNSName), "HostedZoneId" :: Maybe (ResourceId), "IsTruncated" :: PageTruncated, "NextDNSName" :: Maybe (DNSName), "NextHostedZoneId" :: Maybe (ResourceId), "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListHostedZonesByNameResponse _
Generic ListHostedZonesByNameResponse _
Show ListHostedZonesByNameResponse
Decode ListHostedZonesByNameResponse
Encode ListHostedZonesByNameResponse
```

#### `newListHostedZonesByNameResponse`

``` purescript
newListHostedZonesByNameResponse :: HostedZones -> PageTruncated -> PageMaxItems -> ListHostedZonesByNameResponse
```

Constructs ListHostedZonesByNameResponse from required parameters

#### `newListHostedZonesByNameResponse'`

``` purescript
newListHostedZonesByNameResponse' :: HostedZones -> PageTruncated -> PageMaxItems -> ({ "HostedZones" :: HostedZones, "DNSName" :: Maybe (DNSName), "HostedZoneId" :: Maybe (ResourceId), "IsTruncated" :: PageTruncated, "NextDNSName" :: Maybe (DNSName), "NextHostedZoneId" :: Maybe (ResourceId), "MaxItems" :: PageMaxItems } -> { "HostedZones" :: HostedZones, "DNSName" :: Maybe (DNSName), "HostedZoneId" :: Maybe (ResourceId), "IsTruncated" :: PageTruncated, "NextDNSName" :: Maybe (DNSName), "NextHostedZoneId" :: Maybe (ResourceId), "MaxItems" :: PageMaxItems }) -> ListHostedZonesByNameResponse
```

Constructs ListHostedZonesByNameResponse's fields from required parameters

#### `ListHostedZonesRequest`

``` purescript
newtype ListHostedZonesRequest
  = ListHostedZonesRequest { "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems), "DelegationSetId" :: Maybe (ResourceId) }
```

<p>A request to retrieve a list of the public and private hosted zones that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype ListHostedZonesRequest _
Generic ListHostedZonesRequest _
Show ListHostedZonesRequest
Decode ListHostedZonesRequest
Encode ListHostedZonesRequest
```

#### `newListHostedZonesRequest`

``` purescript
newListHostedZonesRequest :: ListHostedZonesRequest
```

Constructs ListHostedZonesRequest from required parameters

#### `newListHostedZonesRequest'`

``` purescript
newListHostedZonesRequest' :: ({ "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems), "DelegationSetId" :: Maybe (ResourceId) } -> { "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems), "DelegationSetId" :: Maybe (ResourceId) }) -> ListHostedZonesRequest
```

Constructs ListHostedZonesRequest's fields from required parameters

#### `ListHostedZonesResponse`

``` purescript
newtype ListHostedZonesResponse
  = ListHostedZonesResponse { "HostedZones" :: HostedZones, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems }
```

##### Instances
``` purescript
Newtype ListHostedZonesResponse _
Generic ListHostedZonesResponse _
Show ListHostedZonesResponse
Decode ListHostedZonesResponse
Encode ListHostedZonesResponse
```

#### `newListHostedZonesResponse`

``` purescript
newListHostedZonesResponse :: HostedZones -> PageTruncated -> PageMarker -> PageMaxItems -> ListHostedZonesResponse
```

Constructs ListHostedZonesResponse from required parameters

#### `newListHostedZonesResponse'`

``` purescript
newListHostedZonesResponse' :: HostedZones -> PageTruncated -> PageMarker -> PageMaxItems -> ({ "HostedZones" :: HostedZones, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems } -> { "HostedZones" :: HostedZones, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems }) -> ListHostedZonesResponse
```

Constructs ListHostedZonesResponse's fields from required parameters

#### `ListQueryLoggingConfigsRequest`

``` purescript
newtype ListQueryLoggingConfigsRequest
  = ListQueryLoggingConfigsRequest { "HostedZoneId" :: Maybe (ResourceId), "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListQueryLoggingConfigsRequest _
Generic ListQueryLoggingConfigsRequest _
Show ListQueryLoggingConfigsRequest
Decode ListQueryLoggingConfigsRequest
Encode ListQueryLoggingConfigsRequest
```

#### `newListQueryLoggingConfigsRequest`

``` purescript
newListQueryLoggingConfigsRequest :: ListQueryLoggingConfigsRequest
```

Constructs ListQueryLoggingConfigsRequest from required parameters

#### `newListQueryLoggingConfigsRequest'`

``` purescript
newListQueryLoggingConfigsRequest' :: ({ "HostedZoneId" :: Maybe (ResourceId), "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) } -> { "HostedZoneId" :: Maybe (ResourceId), "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) }) -> ListQueryLoggingConfigsRequest
```

Constructs ListQueryLoggingConfigsRequest's fields from required parameters

#### `ListQueryLoggingConfigsResponse`

``` purescript
newtype ListQueryLoggingConfigsResponse
  = ListQueryLoggingConfigsResponse { "QueryLoggingConfigs" :: QueryLoggingConfigs, "NextToken" :: Maybe (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListQueryLoggingConfigsResponse _
Generic ListQueryLoggingConfigsResponse _
Show ListQueryLoggingConfigsResponse
Decode ListQueryLoggingConfigsResponse
Encode ListQueryLoggingConfigsResponse
```

#### `newListQueryLoggingConfigsResponse`

``` purescript
newListQueryLoggingConfigsResponse :: QueryLoggingConfigs -> ListQueryLoggingConfigsResponse
```

Constructs ListQueryLoggingConfigsResponse from required parameters

#### `newListQueryLoggingConfigsResponse'`

``` purescript
newListQueryLoggingConfigsResponse' :: QueryLoggingConfigs -> ({ "QueryLoggingConfigs" :: QueryLoggingConfigs, "NextToken" :: Maybe (PaginationToken) } -> { "QueryLoggingConfigs" :: QueryLoggingConfigs, "NextToken" :: Maybe (PaginationToken) }) -> ListQueryLoggingConfigsResponse
```

Constructs ListQueryLoggingConfigsResponse's fields from required parameters

#### `ListResourceRecordSetsRequest`

``` purescript
newtype ListResourceRecordSetsRequest
  = ListResourceRecordSetsRequest { "HostedZoneId" :: ResourceId, "StartRecordName" :: Maybe (DNSName), "StartRecordType" :: Maybe (RRType), "StartRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A request for the resource record sets that are associated with a specified hosted zone.</p>

##### Instances
``` purescript
Newtype ListResourceRecordSetsRequest _
Generic ListResourceRecordSetsRequest _
Show ListResourceRecordSetsRequest
Decode ListResourceRecordSetsRequest
Encode ListResourceRecordSetsRequest
```

#### `newListResourceRecordSetsRequest`

``` purescript
newListResourceRecordSetsRequest :: ResourceId -> ListResourceRecordSetsRequest
```

Constructs ListResourceRecordSetsRequest from required parameters

#### `newListResourceRecordSetsRequest'`

``` purescript
newListResourceRecordSetsRequest' :: ResourceId -> ({ "HostedZoneId" :: ResourceId, "StartRecordName" :: Maybe (DNSName), "StartRecordType" :: Maybe (RRType), "StartRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier), "MaxItems" :: Maybe (PageMaxItems) } -> { "HostedZoneId" :: ResourceId, "StartRecordName" :: Maybe (DNSName), "StartRecordType" :: Maybe (RRType), "StartRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier), "MaxItems" :: Maybe (PageMaxItems) }) -> ListResourceRecordSetsRequest
```

Constructs ListResourceRecordSetsRequest's fields from required parameters

#### `ListResourceRecordSetsResponse`

``` purescript
newtype ListResourceRecordSetsResponse
  = ListResourceRecordSetsResponse { "ResourceRecordSets" :: ResourceRecordSets, "IsTruncated" :: PageTruncated, "NextRecordName" :: Maybe (DNSName), "NextRecordType" :: Maybe (RRType), "NextRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier), "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains list information for the resource record set.</p>

##### Instances
``` purescript
Newtype ListResourceRecordSetsResponse _
Generic ListResourceRecordSetsResponse _
Show ListResourceRecordSetsResponse
Decode ListResourceRecordSetsResponse
Encode ListResourceRecordSetsResponse
```

#### `newListResourceRecordSetsResponse`

``` purescript
newListResourceRecordSetsResponse :: PageTruncated -> PageMaxItems -> ResourceRecordSets -> ListResourceRecordSetsResponse
```

Constructs ListResourceRecordSetsResponse from required parameters

#### `newListResourceRecordSetsResponse'`

``` purescript
newListResourceRecordSetsResponse' :: PageTruncated -> PageMaxItems -> ResourceRecordSets -> ({ "ResourceRecordSets" :: ResourceRecordSets, "IsTruncated" :: PageTruncated, "NextRecordName" :: Maybe (DNSName), "NextRecordType" :: Maybe (RRType), "NextRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier), "MaxItems" :: PageMaxItems } -> { "ResourceRecordSets" :: ResourceRecordSets, "IsTruncated" :: PageTruncated, "NextRecordName" :: Maybe (DNSName), "NextRecordType" :: Maybe (RRType), "NextRecordIdentifier" :: Maybe (ResourceRecordSetIdentifier), "MaxItems" :: PageMaxItems }) -> ListResourceRecordSetsResponse
```

Constructs ListResourceRecordSetsResponse's fields from required parameters

#### `ListReusableDelegationSetsRequest`

``` purescript
newtype ListReusableDelegationSetsRequest
  = ListReusableDelegationSetsRequest { "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A request to get a list of the reusable delegation sets that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype ListReusableDelegationSetsRequest _
Generic ListReusableDelegationSetsRequest _
Show ListReusableDelegationSetsRequest
Decode ListReusableDelegationSetsRequest
Encode ListReusableDelegationSetsRequest
```

#### `newListReusableDelegationSetsRequest`

``` purescript
newListReusableDelegationSetsRequest :: ListReusableDelegationSetsRequest
```

Constructs ListReusableDelegationSetsRequest from required parameters

#### `newListReusableDelegationSetsRequest'`

``` purescript
newListReusableDelegationSetsRequest' :: ({ "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems) } -> { "Marker" :: Maybe (PageMarker), "MaxItems" :: Maybe (PageMaxItems) }) -> ListReusableDelegationSetsRequest
```

Constructs ListReusableDelegationSetsRequest's fields from required parameters

#### `ListReusableDelegationSetsResponse`

``` purescript
newtype ListReusableDelegationSetsResponse
  = ListReusableDelegationSetsResponse { "DelegationSets" :: DelegationSets, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains information about the reusable delegation sets that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype ListReusableDelegationSetsResponse _
Generic ListReusableDelegationSetsResponse _
Show ListReusableDelegationSetsResponse
Decode ListReusableDelegationSetsResponse
Encode ListReusableDelegationSetsResponse
```

#### `newListReusableDelegationSetsResponse`

``` purescript
newListReusableDelegationSetsResponse :: DelegationSets -> PageTruncated -> PageMarker -> PageMaxItems -> ListReusableDelegationSetsResponse
```

Constructs ListReusableDelegationSetsResponse from required parameters

#### `newListReusableDelegationSetsResponse'`

``` purescript
newListReusableDelegationSetsResponse' :: DelegationSets -> PageTruncated -> PageMarker -> PageMaxItems -> ({ "DelegationSets" :: DelegationSets, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems } -> { "DelegationSets" :: DelegationSets, "Marker" :: PageMarker, "IsTruncated" :: PageTruncated, "NextMarker" :: Maybe (PageMarker), "MaxItems" :: PageMaxItems }) -> ListReusableDelegationSetsResponse
```

Constructs ListReusableDelegationSetsResponse's fields from required parameters

#### `ListTagsForResourceRequest`

``` purescript
newtype ListTagsForResourceRequest
  = ListTagsForResourceRequest { "ResourceType" :: TagResourceType, "ResourceId" :: TagResourceId }
```

<p>A complex type containing information about a request for a list of the tags that are associated with an individual resource.</p>

##### Instances
``` purescript
Newtype ListTagsForResourceRequest _
Generic ListTagsForResourceRequest _
Show ListTagsForResourceRequest
Decode ListTagsForResourceRequest
Encode ListTagsForResourceRequest
```

#### `newListTagsForResourceRequest`

``` purescript
newListTagsForResourceRequest :: TagResourceId -> TagResourceType -> ListTagsForResourceRequest
```

Constructs ListTagsForResourceRequest from required parameters

#### `newListTagsForResourceRequest'`

``` purescript
newListTagsForResourceRequest' :: TagResourceId -> TagResourceType -> ({ "ResourceType" :: TagResourceType, "ResourceId" :: TagResourceId } -> { "ResourceType" :: TagResourceType, "ResourceId" :: TagResourceId }) -> ListTagsForResourceRequest
```

Constructs ListTagsForResourceRequest's fields from required parameters

#### `ListTagsForResourceResponse`

``` purescript
newtype ListTagsForResourceResponse
  = ListTagsForResourceResponse { "ResourceTagSet" :: ResourceTagSet }
```

<p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>

##### Instances
``` purescript
Newtype ListTagsForResourceResponse _
Generic ListTagsForResourceResponse _
Show ListTagsForResourceResponse
Decode ListTagsForResourceResponse
Encode ListTagsForResourceResponse
```

#### `newListTagsForResourceResponse`

``` purescript
newListTagsForResourceResponse :: ResourceTagSet -> ListTagsForResourceResponse
```

Constructs ListTagsForResourceResponse from required parameters

#### `newListTagsForResourceResponse'`

``` purescript
newListTagsForResourceResponse' :: ResourceTagSet -> ({ "ResourceTagSet" :: ResourceTagSet } -> { "ResourceTagSet" :: ResourceTagSet }) -> ListTagsForResourceResponse
```

Constructs ListTagsForResourceResponse's fields from required parameters

#### `ListTagsForResourcesRequest`

``` purescript
newtype ListTagsForResourcesRequest
  = ListTagsForResourcesRequest { "ResourceType" :: TagResourceType, "ResourceIds" :: TagResourceIdList }
```

<p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>

##### Instances
``` purescript
Newtype ListTagsForResourcesRequest _
Generic ListTagsForResourcesRequest _
Show ListTagsForResourcesRequest
Decode ListTagsForResourcesRequest
Encode ListTagsForResourcesRequest
```

#### `newListTagsForResourcesRequest`

``` purescript
newListTagsForResourcesRequest :: TagResourceIdList -> TagResourceType -> ListTagsForResourcesRequest
```

Constructs ListTagsForResourcesRequest from required parameters

#### `newListTagsForResourcesRequest'`

``` purescript
newListTagsForResourcesRequest' :: TagResourceIdList -> TagResourceType -> ({ "ResourceType" :: TagResourceType, "ResourceIds" :: TagResourceIdList } -> { "ResourceType" :: TagResourceType, "ResourceIds" :: TagResourceIdList }) -> ListTagsForResourcesRequest
```

Constructs ListTagsForResourcesRequest's fields from required parameters

#### `ListTagsForResourcesResponse`

``` purescript
newtype ListTagsForResourcesResponse
  = ListTagsForResourcesResponse { "ResourceTagSets" :: ResourceTagSetList }
```

<p>A complex type containing tags for the specified resources.</p>

##### Instances
``` purescript
Newtype ListTagsForResourcesResponse _
Generic ListTagsForResourcesResponse _
Show ListTagsForResourcesResponse
Decode ListTagsForResourcesResponse
Encode ListTagsForResourcesResponse
```

#### `newListTagsForResourcesResponse`

``` purescript
newListTagsForResourcesResponse :: ResourceTagSetList -> ListTagsForResourcesResponse
```

Constructs ListTagsForResourcesResponse from required parameters

#### `newListTagsForResourcesResponse'`

``` purescript
newListTagsForResourcesResponse' :: ResourceTagSetList -> ({ "ResourceTagSets" :: ResourceTagSetList } -> { "ResourceTagSets" :: ResourceTagSetList }) -> ListTagsForResourcesResponse
```

Constructs ListTagsForResourcesResponse's fields from required parameters

#### `ListTrafficPoliciesRequest`

``` purescript
newtype ListTrafficPoliciesRequest
  = ListTrafficPoliciesRequest { "TrafficPolicyIdMarker" :: Maybe (TrafficPolicyId), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A complex type that contains the information about the request to list the traffic policies that are associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype ListTrafficPoliciesRequest _
Generic ListTrafficPoliciesRequest _
Show ListTrafficPoliciesRequest
Decode ListTrafficPoliciesRequest
Encode ListTrafficPoliciesRequest
```

#### `newListTrafficPoliciesRequest`

``` purescript
newListTrafficPoliciesRequest :: ListTrafficPoliciesRequest
```

Constructs ListTrafficPoliciesRequest from required parameters

#### `newListTrafficPoliciesRequest'`

``` purescript
newListTrafficPoliciesRequest' :: ({ "TrafficPolicyIdMarker" :: Maybe (TrafficPolicyId), "MaxItems" :: Maybe (PageMaxItems) } -> { "TrafficPolicyIdMarker" :: Maybe (TrafficPolicyId), "MaxItems" :: Maybe (PageMaxItems) }) -> ListTrafficPoliciesRequest
```

Constructs ListTrafficPoliciesRequest's fields from required parameters

#### `ListTrafficPoliciesResponse`

``` purescript
newtype ListTrafficPoliciesResponse
  = ListTrafficPoliciesResponse { "TrafficPolicySummaries" :: TrafficPolicySummaries, "IsTruncated" :: PageTruncated, "TrafficPolicyIdMarker" :: TrafficPolicyId, "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListTrafficPoliciesResponse _
Generic ListTrafficPoliciesResponse _
Show ListTrafficPoliciesResponse
Decode ListTrafficPoliciesResponse
Encode ListTrafficPoliciesResponse
```

#### `newListTrafficPoliciesResponse`

``` purescript
newListTrafficPoliciesResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyId -> TrafficPolicySummaries -> ListTrafficPoliciesResponse
```

Constructs ListTrafficPoliciesResponse from required parameters

#### `newListTrafficPoliciesResponse'`

``` purescript
newListTrafficPoliciesResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyId -> TrafficPolicySummaries -> ({ "TrafficPolicySummaries" :: TrafficPolicySummaries, "IsTruncated" :: PageTruncated, "TrafficPolicyIdMarker" :: TrafficPolicyId, "MaxItems" :: PageMaxItems } -> { "TrafficPolicySummaries" :: TrafficPolicySummaries, "IsTruncated" :: PageTruncated, "TrafficPolicyIdMarker" :: TrafficPolicyId, "MaxItems" :: PageMaxItems }) -> ListTrafficPoliciesResponse
```

Constructs ListTrafficPoliciesResponse's fields from required parameters

#### `ListTrafficPolicyInstancesByHostedZoneRequest`

``` purescript
newtype ListTrafficPolicyInstancesByHostedZoneRequest
  = ListTrafficPolicyInstancesByHostedZoneRequest { "HostedZoneId" :: ResourceId, "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A request for the traffic policy instances that you created in a specified hosted zone.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyInstancesByHostedZoneRequest _
Generic ListTrafficPolicyInstancesByHostedZoneRequest _
Show ListTrafficPolicyInstancesByHostedZoneRequest
Decode ListTrafficPolicyInstancesByHostedZoneRequest
Encode ListTrafficPolicyInstancesByHostedZoneRequest
```

#### `newListTrafficPolicyInstancesByHostedZoneRequest`

``` purescript
newListTrafficPolicyInstancesByHostedZoneRequest :: ResourceId -> ListTrafficPolicyInstancesByHostedZoneRequest
```

Constructs ListTrafficPolicyInstancesByHostedZoneRequest from required parameters

#### `newListTrafficPolicyInstancesByHostedZoneRequest'`

``` purescript
newListTrafficPolicyInstancesByHostedZoneRequest' :: ResourceId -> ({ "HostedZoneId" :: ResourceId, "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) } -> { "HostedZoneId" :: ResourceId, "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) }) -> ListTrafficPolicyInstancesByHostedZoneRequest
```

Constructs ListTrafficPolicyInstancesByHostedZoneRequest's fields from required parameters

#### `ListTrafficPolicyInstancesByHostedZoneResponse`

``` purescript
newtype ListTrafficPolicyInstancesByHostedZoneResponse
  = ListTrafficPolicyInstancesByHostedZoneResponse { "TrafficPolicyInstances" :: TrafficPolicyInstances, "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyInstancesByHostedZoneResponse _
Generic ListTrafficPolicyInstancesByHostedZoneResponse _
Show ListTrafficPolicyInstancesByHostedZoneResponse
Decode ListTrafficPolicyInstancesByHostedZoneResponse
Encode ListTrafficPolicyInstancesByHostedZoneResponse
```

#### `newListTrafficPolicyInstancesByHostedZoneResponse`

``` purescript
newListTrafficPolicyInstancesByHostedZoneResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ListTrafficPolicyInstancesByHostedZoneResponse
```

Constructs ListTrafficPolicyInstancesByHostedZoneResponse from required parameters

#### `newListTrafficPolicyInstancesByHostedZoneResponse'`

``` purescript
newListTrafficPolicyInstancesByHostedZoneResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ({ "TrafficPolicyInstances" :: TrafficPolicyInstances, "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems } -> { "TrafficPolicyInstances" :: TrafficPolicyInstances, "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems }) -> ListTrafficPolicyInstancesByHostedZoneResponse
```

Constructs ListTrafficPolicyInstancesByHostedZoneResponse's fields from required parameters

#### `ListTrafficPolicyInstancesByPolicyRequest`

``` purescript
newtype ListTrafficPolicyInstancesByPolicyRequest
  = ListTrafficPolicyInstancesByPolicyRequest { "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A complex type that contains the information about the request to list your traffic policy instances.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyInstancesByPolicyRequest _
Generic ListTrafficPolicyInstancesByPolicyRequest _
Show ListTrafficPolicyInstancesByPolicyRequest
Decode ListTrafficPolicyInstancesByPolicyRequest
Encode ListTrafficPolicyInstancesByPolicyRequest
```

#### `newListTrafficPolicyInstancesByPolicyRequest`

``` purescript
newListTrafficPolicyInstancesByPolicyRequest :: TrafficPolicyId -> TrafficPolicyVersion -> ListTrafficPolicyInstancesByPolicyRequest
```

Constructs ListTrafficPolicyInstancesByPolicyRequest from required parameters

#### `newListTrafficPolicyInstancesByPolicyRequest'`

``` purescript
newListTrafficPolicyInstancesByPolicyRequest' :: TrafficPolicyId -> TrafficPolicyVersion -> ({ "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) } -> { "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) }) -> ListTrafficPolicyInstancesByPolicyRequest
```

Constructs ListTrafficPolicyInstancesByPolicyRequest's fields from required parameters

#### `ListTrafficPolicyInstancesByPolicyResponse`

``` purescript
newtype ListTrafficPolicyInstancesByPolicyResponse
  = ListTrafficPolicyInstancesByPolicyResponse { "TrafficPolicyInstances" :: TrafficPolicyInstances, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyInstancesByPolicyResponse _
Generic ListTrafficPolicyInstancesByPolicyResponse _
Show ListTrafficPolicyInstancesByPolicyResponse
Decode ListTrafficPolicyInstancesByPolicyResponse
Encode ListTrafficPolicyInstancesByPolicyResponse
```

#### `newListTrafficPolicyInstancesByPolicyResponse`

``` purescript
newListTrafficPolicyInstancesByPolicyResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ListTrafficPolicyInstancesByPolicyResponse
```

Constructs ListTrafficPolicyInstancesByPolicyResponse from required parameters

#### `newListTrafficPolicyInstancesByPolicyResponse'`

``` purescript
newListTrafficPolicyInstancesByPolicyResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ({ "TrafficPolicyInstances" :: TrafficPolicyInstances, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems } -> { "TrafficPolicyInstances" :: TrafficPolicyInstances, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems }) -> ListTrafficPolicyInstancesByPolicyResponse
```

Constructs ListTrafficPolicyInstancesByPolicyResponse's fields from required parameters

#### `ListTrafficPolicyInstancesRequest`

``` purescript
newtype ListTrafficPolicyInstancesRequest
  = ListTrafficPolicyInstancesRequest { "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A request to get information about the traffic policy instances that you created by using the current AWS account.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyInstancesRequest _
Generic ListTrafficPolicyInstancesRequest _
Show ListTrafficPolicyInstancesRequest
Decode ListTrafficPolicyInstancesRequest
Encode ListTrafficPolicyInstancesRequest
```

#### `newListTrafficPolicyInstancesRequest`

``` purescript
newListTrafficPolicyInstancesRequest :: ListTrafficPolicyInstancesRequest
```

Constructs ListTrafficPolicyInstancesRequest from required parameters

#### `newListTrafficPolicyInstancesRequest'`

``` purescript
newListTrafficPolicyInstancesRequest' :: ({ "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) } -> { "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "MaxItems" :: Maybe (PageMaxItems) }) -> ListTrafficPolicyInstancesRequest
```

Constructs ListTrafficPolicyInstancesRequest's fields from required parameters

#### `ListTrafficPolicyInstancesResponse`

``` purescript
newtype ListTrafficPolicyInstancesResponse
  = ListTrafficPolicyInstancesResponse { "TrafficPolicyInstances" :: TrafficPolicyInstances, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyInstancesResponse _
Generic ListTrafficPolicyInstancesResponse _
Show ListTrafficPolicyInstancesResponse
Decode ListTrafficPolicyInstancesResponse
Encode ListTrafficPolicyInstancesResponse
```

#### `newListTrafficPolicyInstancesResponse`

``` purescript
newListTrafficPolicyInstancesResponse :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ListTrafficPolicyInstancesResponse
```

Constructs ListTrafficPolicyInstancesResponse from required parameters

#### `newListTrafficPolicyInstancesResponse'`

``` purescript
newListTrafficPolicyInstancesResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicyInstances -> ({ "TrafficPolicyInstances" :: TrafficPolicyInstances, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems } -> { "TrafficPolicyInstances" :: TrafficPolicyInstances, "HostedZoneIdMarker" :: Maybe (ResourceId), "TrafficPolicyInstanceNameMarker" :: Maybe (DNSName), "TrafficPolicyInstanceTypeMarker" :: Maybe (RRType), "IsTruncated" :: PageTruncated, "MaxItems" :: PageMaxItems }) -> ListTrafficPolicyInstancesResponse
```

Constructs ListTrafficPolicyInstancesResponse's fields from required parameters

#### `ListTrafficPolicyVersionsRequest`

``` purescript
newtype ListTrafficPolicyVersionsRequest
  = ListTrafficPolicyVersionsRequest { "Id" :: TrafficPolicyId, "TrafficPolicyVersionMarker" :: Maybe (TrafficPolicyVersionMarker), "MaxItems" :: Maybe (PageMaxItems) }
```

<p>A complex type that contains the information about the request to list your traffic policies.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyVersionsRequest _
Generic ListTrafficPolicyVersionsRequest _
Show ListTrafficPolicyVersionsRequest
Decode ListTrafficPolicyVersionsRequest
Encode ListTrafficPolicyVersionsRequest
```

#### `newListTrafficPolicyVersionsRequest`

``` purescript
newListTrafficPolicyVersionsRequest :: TrafficPolicyId -> ListTrafficPolicyVersionsRequest
```

Constructs ListTrafficPolicyVersionsRequest from required parameters

#### `newListTrafficPolicyVersionsRequest'`

``` purescript
newListTrafficPolicyVersionsRequest' :: TrafficPolicyId -> ({ "Id" :: TrafficPolicyId, "TrafficPolicyVersionMarker" :: Maybe (TrafficPolicyVersionMarker), "MaxItems" :: Maybe (PageMaxItems) } -> { "Id" :: TrafficPolicyId, "TrafficPolicyVersionMarker" :: Maybe (TrafficPolicyVersionMarker), "MaxItems" :: Maybe (PageMaxItems) }) -> ListTrafficPolicyVersionsRequest
```

Constructs ListTrafficPolicyVersionsRequest's fields from required parameters

#### `ListTrafficPolicyVersionsResponse`

``` purescript
newtype ListTrafficPolicyVersionsResponse
  = ListTrafficPolicyVersionsResponse { "TrafficPolicies" :: TrafficPolicies, "IsTruncated" :: PageTruncated, "TrafficPolicyVersionMarker" :: TrafficPolicyVersionMarker, "MaxItems" :: PageMaxItems }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListTrafficPolicyVersionsResponse _
Generic ListTrafficPolicyVersionsResponse _
Show ListTrafficPolicyVersionsResponse
Decode ListTrafficPolicyVersionsResponse
Encode ListTrafficPolicyVersionsResponse
```

#### `newListTrafficPolicyVersionsResponse`

``` purescript
newListTrafficPolicyVersionsResponse :: PageTruncated -> PageMaxItems -> TrafficPolicies -> TrafficPolicyVersionMarker -> ListTrafficPolicyVersionsResponse
```

Constructs ListTrafficPolicyVersionsResponse from required parameters

#### `newListTrafficPolicyVersionsResponse'`

``` purescript
newListTrafficPolicyVersionsResponse' :: PageTruncated -> PageMaxItems -> TrafficPolicies -> TrafficPolicyVersionMarker -> ({ "TrafficPolicies" :: TrafficPolicies, "IsTruncated" :: PageTruncated, "TrafficPolicyVersionMarker" :: TrafficPolicyVersionMarker, "MaxItems" :: PageMaxItems } -> { "TrafficPolicies" :: TrafficPolicies, "IsTruncated" :: PageTruncated, "TrafficPolicyVersionMarker" :: TrafficPolicyVersionMarker, "MaxItems" :: PageMaxItems }) -> ListTrafficPolicyVersionsResponse
```

Constructs ListTrafficPolicyVersionsResponse's fields from required parameters

#### `ListVPCAssociationAuthorizationsRequest`

``` purescript
newtype ListVPCAssociationAuthorizationsRequest
  = ListVPCAssociationAuthorizationsRequest { "HostedZoneId" :: ResourceId, "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) }
```

<p>A complex type that contains information about that can be associated with your hosted zone.</p>

##### Instances
``` purescript
Newtype ListVPCAssociationAuthorizationsRequest _
Generic ListVPCAssociationAuthorizationsRequest _
Show ListVPCAssociationAuthorizationsRequest
Decode ListVPCAssociationAuthorizationsRequest
Encode ListVPCAssociationAuthorizationsRequest
```

#### `newListVPCAssociationAuthorizationsRequest`

``` purescript
newListVPCAssociationAuthorizationsRequest :: ResourceId -> ListVPCAssociationAuthorizationsRequest
```

Constructs ListVPCAssociationAuthorizationsRequest from required parameters

#### `newListVPCAssociationAuthorizationsRequest'`

``` purescript
newListVPCAssociationAuthorizationsRequest' :: ResourceId -> ({ "HostedZoneId" :: ResourceId, "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) } -> { "HostedZoneId" :: ResourceId, "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) }) -> ListVPCAssociationAuthorizationsRequest
```

Constructs ListVPCAssociationAuthorizationsRequest's fields from required parameters

#### `ListVPCAssociationAuthorizationsResponse`

``` purescript
newtype ListVPCAssociationAuthorizationsResponse
  = ListVPCAssociationAuthorizationsResponse { "HostedZoneId" :: ResourceId, "NextToken" :: Maybe (PaginationToken), "VPCs" :: VPCs }
```

<p>A complex type that contains the response information for the request.</p>

##### Instances
``` purescript
Newtype ListVPCAssociationAuthorizationsResponse _
Generic ListVPCAssociationAuthorizationsResponse _
Show ListVPCAssociationAuthorizationsResponse
Decode ListVPCAssociationAuthorizationsResponse
Encode ListVPCAssociationAuthorizationsResponse
```

#### `newListVPCAssociationAuthorizationsResponse`

``` purescript
newListVPCAssociationAuthorizationsResponse :: ResourceId -> VPCs -> ListVPCAssociationAuthorizationsResponse
```

Constructs ListVPCAssociationAuthorizationsResponse from required parameters

#### `newListVPCAssociationAuthorizationsResponse'`

``` purescript
newListVPCAssociationAuthorizationsResponse' :: ResourceId -> VPCs -> ({ "HostedZoneId" :: ResourceId, "NextToken" :: Maybe (PaginationToken), "VPCs" :: VPCs } -> { "HostedZoneId" :: ResourceId, "NextToken" :: Maybe (PaginationToken), "VPCs" :: VPCs }) -> ListVPCAssociationAuthorizationsResponse
```

Constructs ListVPCAssociationAuthorizationsResponse's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults String
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MeasureLatency`

``` purescript
newtype MeasureLatency
  = MeasureLatency Boolean
```

##### Instances
``` purescript
Newtype MeasureLatency _
Generic MeasureLatency _
Show MeasureLatency
Decode MeasureLatency
Encode MeasureLatency
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `Nameserver`

``` purescript
newtype Nameserver
  = Nameserver String
```

##### Instances
``` purescript
Newtype Nameserver _
Generic Nameserver _
Show Nameserver
Decode Nameserver
Encode Nameserver
```

#### `Namespace`

``` purescript
newtype Namespace
  = Namespace String
```

##### Instances
``` purescript
Newtype Namespace _
Generic Namespace _
Show Namespace
Decode Namespace
Encode Namespace
```

#### `NoSuchChange`

``` purescript
newtype NoSuchChange
  = NoSuchChange { message :: Maybe (ErrorMessage) }
```

<p>A change with the specified change ID does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchChange _
Generic NoSuchChange _
Show NoSuchChange
Decode NoSuchChange
Encode NoSuchChange
```

#### `newNoSuchChange`

``` purescript
newNoSuchChange :: NoSuchChange
```

Constructs NoSuchChange from required parameters

#### `newNoSuchChange'`

``` purescript
newNoSuchChange' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchChange
```

Constructs NoSuchChange's fields from required parameters

#### `NoSuchCloudWatchLogsLogGroup`

``` purescript
newtype NoSuchCloudWatchLogsLogGroup
  = NoSuchCloudWatchLogsLogGroup { message :: Maybe (ErrorMessage) }
```

<p>There is no CloudWatch Logs log group with the specified ARN.</p>

##### Instances
``` purescript
Newtype NoSuchCloudWatchLogsLogGroup _
Generic NoSuchCloudWatchLogsLogGroup _
Show NoSuchCloudWatchLogsLogGroup
Decode NoSuchCloudWatchLogsLogGroup
Encode NoSuchCloudWatchLogsLogGroup
```

#### `newNoSuchCloudWatchLogsLogGroup`

``` purescript
newNoSuchCloudWatchLogsLogGroup :: NoSuchCloudWatchLogsLogGroup
```

Constructs NoSuchCloudWatchLogsLogGroup from required parameters

#### `newNoSuchCloudWatchLogsLogGroup'`

``` purescript
newNoSuchCloudWatchLogsLogGroup' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchCloudWatchLogsLogGroup
```

Constructs NoSuchCloudWatchLogsLogGroup's fields from required parameters

#### `NoSuchDelegationSet`

``` purescript
newtype NoSuchDelegationSet
  = NoSuchDelegationSet { message :: Maybe (ErrorMessage) }
```

<p>A reusable delegation set with the specified ID does not exist.</p>

##### Instances
``` purescript
Newtype NoSuchDelegationSet _
Generic NoSuchDelegationSet _
Show NoSuchDelegationSet
Decode NoSuchDelegationSet
Encode NoSuchDelegationSet
```

#### `newNoSuchDelegationSet`

``` purescript
newNoSuchDelegationSet :: NoSuchDelegationSet
```

Constructs NoSuchDelegationSet from required parameters

#### `newNoSuchDelegationSet'`

``` purescript
newNoSuchDelegationSet' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchDelegationSet
```

Constructs NoSuchDelegationSet's fields from required parameters

#### `NoSuchGeoLocation`

``` purescript
newtype NoSuchGeoLocation
  = NoSuchGeoLocation { message :: Maybe (ErrorMessage) }
```

<p>Amazon Route 53 doesn't support the specified geolocation.</p>

##### Instances
``` purescript
Newtype NoSuchGeoLocation _
Generic NoSuchGeoLocation _
Show NoSuchGeoLocation
Decode NoSuchGeoLocation
Encode NoSuchGeoLocation
```

#### `newNoSuchGeoLocation`

``` purescript
newNoSuchGeoLocation :: NoSuchGeoLocation
```

Constructs NoSuchGeoLocation from required parameters

#### `newNoSuchGeoLocation'`

``` purescript
newNoSuchGeoLocation' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchGeoLocation
```

Constructs NoSuchGeoLocation's fields from required parameters

#### `NoSuchHealthCheck`

``` purescript
newtype NoSuchHealthCheck
  = NoSuchHealthCheck { message :: Maybe (ErrorMessage) }
```

<p>No health check exists with the ID that you specified in the <code>DeleteHealthCheck</code> request.</p>

##### Instances
``` purescript
Newtype NoSuchHealthCheck _
Generic NoSuchHealthCheck _
Show NoSuchHealthCheck
Decode NoSuchHealthCheck
Encode NoSuchHealthCheck
```

#### `newNoSuchHealthCheck`

``` purescript
newNoSuchHealthCheck :: NoSuchHealthCheck
```

Constructs NoSuchHealthCheck from required parameters

#### `newNoSuchHealthCheck'`

``` purescript
newNoSuchHealthCheck' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchHealthCheck
```

Constructs NoSuchHealthCheck's fields from required parameters

#### `NoSuchHostedZone`

``` purescript
newtype NoSuchHostedZone
  = NoSuchHostedZone { message :: Maybe (ErrorMessage) }
```

<p>No hosted zone exists with the ID that you specified.</p>

##### Instances
``` purescript
Newtype NoSuchHostedZone _
Generic NoSuchHostedZone _
Show NoSuchHostedZone
Decode NoSuchHostedZone
Encode NoSuchHostedZone
```

#### `newNoSuchHostedZone`

``` purescript
newNoSuchHostedZone :: NoSuchHostedZone
```

Constructs NoSuchHostedZone from required parameters

#### `newNoSuchHostedZone'`

``` purescript
newNoSuchHostedZone' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchHostedZone
```

Constructs NoSuchHostedZone's fields from required parameters

#### `NoSuchQueryLoggingConfig`

``` purescript
newtype NoSuchQueryLoggingConfig
  = NoSuchQueryLoggingConfig { message :: Maybe (ErrorMessage) }
```

<p>There is no DNS query logging configuration with the specified ID.</p>

##### Instances
``` purescript
Newtype NoSuchQueryLoggingConfig _
Generic NoSuchQueryLoggingConfig _
Show NoSuchQueryLoggingConfig
Decode NoSuchQueryLoggingConfig
Encode NoSuchQueryLoggingConfig
```

#### `newNoSuchQueryLoggingConfig`

``` purescript
newNoSuchQueryLoggingConfig :: NoSuchQueryLoggingConfig
```

Constructs NoSuchQueryLoggingConfig from required parameters

#### `newNoSuchQueryLoggingConfig'`

``` purescript
newNoSuchQueryLoggingConfig' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchQueryLoggingConfig
```

Constructs NoSuchQueryLoggingConfig's fields from required parameters

#### `NoSuchTrafficPolicy`

``` purescript
newtype NoSuchTrafficPolicy
  = NoSuchTrafficPolicy { message :: Maybe (ErrorMessage) }
```

<p>No traffic policy exists with the specified ID.</p>

##### Instances
``` purescript
Newtype NoSuchTrafficPolicy _
Generic NoSuchTrafficPolicy _
Show NoSuchTrafficPolicy
Decode NoSuchTrafficPolicy
Encode NoSuchTrafficPolicy
```

#### `newNoSuchTrafficPolicy`

``` purescript
newNoSuchTrafficPolicy :: NoSuchTrafficPolicy
```

Constructs NoSuchTrafficPolicy from required parameters

#### `newNoSuchTrafficPolicy'`

``` purescript
newNoSuchTrafficPolicy' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchTrafficPolicy
```

Constructs NoSuchTrafficPolicy's fields from required parameters

#### `NoSuchTrafficPolicyInstance`

``` purescript
newtype NoSuchTrafficPolicyInstance
  = NoSuchTrafficPolicyInstance { message :: Maybe (ErrorMessage) }
```

<p>No traffic policy instance exists with the specified ID.</p>

##### Instances
``` purescript
Newtype NoSuchTrafficPolicyInstance _
Generic NoSuchTrafficPolicyInstance _
Show NoSuchTrafficPolicyInstance
Decode NoSuchTrafficPolicyInstance
Encode NoSuchTrafficPolicyInstance
```

#### `newNoSuchTrafficPolicyInstance`

``` purescript
newNoSuchTrafficPolicyInstance :: NoSuchTrafficPolicyInstance
```

Constructs NoSuchTrafficPolicyInstance from required parameters

#### `newNoSuchTrafficPolicyInstance'`

``` purescript
newNoSuchTrafficPolicyInstance' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchTrafficPolicyInstance
```

Constructs NoSuchTrafficPolicyInstance's fields from required parameters

#### `Nonce`

``` purescript
newtype Nonce
  = Nonce String
```

##### Instances
``` purescript
Newtype Nonce _
Generic Nonce _
Show Nonce
Decode Nonce
Encode Nonce
```

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { message :: Maybe (ErrorMessage) }
```

<p>Associating the specified VPC with the specified hosted zone has not been authorized.</p>

##### Instances
``` purescript
Newtype NotAuthorizedException _
Generic NotAuthorizedException _
Show NotAuthorizedException
Decode NotAuthorizedException
Encode NotAuthorizedException
```

#### `newNotAuthorizedException`

``` purescript
newNotAuthorizedException :: NotAuthorizedException
```

Constructs NotAuthorizedException from required parameters

#### `newNotAuthorizedException'`

``` purescript
newNotAuthorizedException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NotAuthorizedException
```

Constructs NotAuthorizedException's fields from required parameters

#### `PageMarker`

``` purescript
newtype PageMarker
  = PageMarker String
```

##### Instances
``` purescript
Newtype PageMarker _
Generic PageMarker _
Show PageMarker
Decode PageMarker
Encode PageMarker
```

#### `PageMaxItems`

``` purescript
newtype PageMaxItems
  = PageMaxItems String
```

##### Instances
``` purescript
Newtype PageMaxItems _
Generic PageMaxItems _
Show PageMaxItems
Decode PageMaxItems
Encode PageMaxItems
```

#### `PageTruncated`

``` purescript
newtype PageTruncated
  = PageTruncated Boolean
```

##### Instances
``` purescript
Newtype PageTruncated _
Generic PageTruncated _
Show PageTruncated
Decode PageTruncated
Encode PageTruncated
```

#### `PaginationToken`

``` purescript
newtype PaginationToken
  = PaginationToken String
```

##### Instances
``` purescript
Newtype PaginationToken _
Generic PaginationToken _
Show PaginationToken
Decode PaginationToken
Encode PaginationToken
```

#### `Period`

``` purescript
newtype Period
  = Period Int
```

##### Instances
``` purescript
Newtype Period _
Generic Period _
Show Period
Decode Period
Encode Period
```

#### `Port`

``` purescript
newtype Port
  = Port Int
```

##### Instances
``` purescript
Newtype Port _
Generic Port _
Show Port
Decode Port
Encode Port
```

#### `PriorRequestNotComplete`

``` purescript
newtype PriorRequestNotComplete
  = PriorRequestNotComplete { message :: Maybe (ErrorMessage) }
```

<p>If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code> (<code>Bad request</code>). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.</p>

##### Instances
``` purescript
Newtype PriorRequestNotComplete _
Generic PriorRequestNotComplete _
Show PriorRequestNotComplete
Decode PriorRequestNotComplete
Encode PriorRequestNotComplete
```

#### `newPriorRequestNotComplete`

``` purescript
newPriorRequestNotComplete :: PriorRequestNotComplete
```

Constructs PriorRequestNotComplete from required parameters

#### `newPriorRequestNotComplete'`

``` purescript
newPriorRequestNotComplete' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> PriorRequestNotComplete
```

Constructs PriorRequestNotComplete's fields from required parameters

#### `PublicZoneVPCAssociation`

``` purescript
newtype PublicZoneVPCAssociation
  = PublicZoneVPCAssociation { message :: Maybe (ErrorMessage) }
```

<p>You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.</p>

##### Instances
``` purescript
Newtype PublicZoneVPCAssociation _
Generic PublicZoneVPCAssociation _
Show PublicZoneVPCAssociation
Decode PublicZoneVPCAssociation
Encode PublicZoneVPCAssociation
```

#### `newPublicZoneVPCAssociation`

``` purescript
newPublicZoneVPCAssociation :: PublicZoneVPCAssociation
```

Constructs PublicZoneVPCAssociation from required parameters

#### `newPublicZoneVPCAssociation'`

``` purescript
newPublicZoneVPCAssociation' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> PublicZoneVPCAssociation
```

Constructs PublicZoneVPCAssociation's fields from required parameters

#### `QueryLoggingConfig`

``` purescript
newtype QueryLoggingConfig
  = QueryLoggingConfig { "Id" :: QueryLoggingConfigId, "HostedZoneId" :: ResourceId, "CloudWatchLogsLogGroupArn" :: CloudWatchLogsLogGroupArn }
```

<p>A complex type that contains information about a configuration for DNS query logging.</p>

##### Instances
``` purescript
Newtype QueryLoggingConfig _
Generic QueryLoggingConfig _
Show QueryLoggingConfig
Decode QueryLoggingConfig
Encode QueryLoggingConfig
```

#### `newQueryLoggingConfig`

``` purescript
newQueryLoggingConfig :: CloudWatchLogsLogGroupArn -> ResourceId -> QueryLoggingConfigId -> QueryLoggingConfig
```

Constructs QueryLoggingConfig from required parameters

#### `newQueryLoggingConfig'`

``` purescript
newQueryLoggingConfig' :: CloudWatchLogsLogGroupArn -> ResourceId -> QueryLoggingConfigId -> ({ "Id" :: QueryLoggingConfigId, "HostedZoneId" :: ResourceId, "CloudWatchLogsLogGroupArn" :: CloudWatchLogsLogGroupArn } -> { "Id" :: QueryLoggingConfigId, "HostedZoneId" :: ResourceId, "CloudWatchLogsLogGroupArn" :: CloudWatchLogsLogGroupArn }) -> QueryLoggingConfig
```

Constructs QueryLoggingConfig's fields from required parameters

#### `QueryLoggingConfigAlreadyExists`

``` purescript
newtype QueryLoggingConfigAlreadyExists
  = QueryLoggingConfigAlreadyExists { message :: Maybe (ErrorMessage) }
```

<p>You can create only one query logging configuration for a hosted zone, and a query logging configuration already exists for this hosted zone.</p>

##### Instances
``` purescript
Newtype QueryLoggingConfigAlreadyExists _
Generic QueryLoggingConfigAlreadyExists _
Show QueryLoggingConfigAlreadyExists
Decode QueryLoggingConfigAlreadyExists
Encode QueryLoggingConfigAlreadyExists
```

#### `newQueryLoggingConfigAlreadyExists`

``` purescript
newQueryLoggingConfigAlreadyExists :: QueryLoggingConfigAlreadyExists
```

Constructs QueryLoggingConfigAlreadyExists from required parameters

#### `newQueryLoggingConfigAlreadyExists'`

``` purescript
newQueryLoggingConfigAlreadyExists' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> QueryLoggingConfigAlreadyExists
```

Constructs QueryLoggingConfigAlreadyExists's fields from required parameters

#### `QueryLoggingConfigId`

``` purescript
newtype QueryLoggingConfigId
  = QueryLoggingConfigId String
```

##### Instances
``` purescript
Newtype QueryLoggingConfigId _
Generic QueryLoggingConfigId _
Show QueryLoggingConfigId
Decode QueryLoggingConfigId
Encode QueryLoggingConfigId
```

#### `QueryLoggingConfigs`

``` purescript
newtype QueryLoggingConfigs
  = QueryLoggingConfigs (Array QueryLoggingConfig)
```

##### Instances
``` purescript
Newtype QueryLoggingConfigs _
Generic QueryLoggingConfigs _
Show QueryLoggingConfigs
Decode QueryLoggingConfigs
Encode QueryLoggingConfigs
```

#### `RData`

``` purescript
newtype RData
  = RData String
```

##### Instances
``` purescript
Newtype RData _
Generic RData _
Show RData
Decode RData
Encode RData
```

#### `RRType`

``` purescript
newtype RRType
  = RRType String
```

##### Instances
``` purescript
Newtype RRType _
Generic RRType _
Show RRType
Decode RRType
Encode RRType
```

#### `RecordData`

``` purescript
newtype RecordData
  = RecordData (Array RecordDataEntry)
```

##### Instances
``` purescript
Newtype RecordData _
Generic RecordData _
Show RecordData
Decode RecordData
Encode RecordData
```

#### `RecordDataEntry`

``` purescript
newtype RecordDataEntry
  = RecordDataEntry String
```

<p>A value that Amazon Route 53 returned for this resource record set. A <code>RecordDataEntry</code> element is one of the following:</p> <ul> <li> <p>For non-alias resource record sets, a <code>RecordDataEntry</code> element contains one value in the resource record set. If the resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> <li> <p>For multiple resource record sets that have the same name and type, which includes weighted, latency, geolocation, and failover, a <code>RecordDataEntry</code> element contains the value from the appropriate resource record set based on the request.</p> </li> <li> <p>For alias resource record sets that refer to AWS resources other than another resource record set, the <code>RecordDataEntry</code> element contains an IP address or a domain name for the AWS resource, depending on the type of resource.</p> </li> <li> <p>For alias resource record sets that refer to other resource record sets, a <code>RecordDataEntry</code> element contains one value from the referenced resource record set. If the referenced resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> </ul>

##### Instances
``` purescript
Newtype RecordDataEntry _
Generic RecordDataEntry _
Show RecordDataEntry
Decode RecordDataEntry
Encode RecordDataEntry
```

#### `RequestInterval`

``` purescript
newtype RequestInterval
  = RequestInterval Int
```

##### Instances
``` purescript
Newtype RequestInterval _
Generic RequestInterval _
Show RequestInterval
Decode RequestInterval
Encode RequestInterval
```

#### `ResettableElementName`

``` purescript
newtype ResettableElementName
  = ResettableElementName String
```

##### Instances
``` purescript
Newtype ResettableElementName _
Generic ResettableElementName _
Show ResettableElementName
Decode ResettableElementName
Encode ResettableElementName
```

#### `ResettableElementNameList`

``` purescript
newtype ResettableElementNameList
  = ResettableElementNameList (Array ResettableElementName)
```

##### Instances
``` purescript
Newtype ResettableElementNameList _
Generic ResettableElementNameList _
Show ResettableElementNameList
Decode ResettableElementNameList
Encode ResettableElementNameList
```

#### `ResourceDescription`

``` purescript
newtype ResourceDescription
  = ResourceDescription String
```

##### Instances
``` purescript
Newtype ResourceDescription _
Generic ResourceDescription _
Show ResourceDescription
Decode ResourceDescription
Encode ResourceDescription
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `ResourcePath`

``` purescript
newtype ResourcePath
  = ResourcePath String
```

##### Instances
``` purescript
Newtype ResourcePath _
Generic ResourcePath _
Show ResourcePath
Decode ResourcePath
Encode ResourcePath
```

#### `ResourceRecord`

``` purescript
newtype ResourceRecord
  = ResourceRecord { "Value" :: RData }
```

<p>Information specific to the resource record.</p> <note> <p>If you're creating an alias resource record set, omit <code>ResourceRecord</code>.</p> </note>

##### Instances
``` purescript
Newtype ResourceRecord _
Generic ResourceRecord _
Show ResourceRecord
Decode ResourceRecord
Encode ResourceRecord
```

#### `newResourceRecord`

``` purescript
newResourceRecord :: RData -> ResourceRecord
```

Constructs ResourceRecord from required parameters

#### `newResourceRecord'`

``` purescript
newResourceRecord' :: RData -> ({ "Value" :: RData } -> { "Value" :: RData }) -> ResourceRecord
```

Constructs ResourceRecord's fields from required parameters

#### `ResourceRecordSet`

``` purescript
newtype ResourceRecordSet
  = ResourceRecordSet { "Name" :: DNSName, "Type" :: RRType, "SetIdentifier" :: Maybe (ResourceRecordSetIdentifier), "Weight" :: Maybe (ResourceRecordSetWeight), "Region" :: Maybe (ResourceRecordSetRegion), "GeoLocation" :: Maybe (GeoLocation), "Failover" :: Maybe (ResourceRecordSetFailover), "MultiValueAnswer" :: Maybe (ResourceRecordSetMultiValueAnswer), "TTL" :: Maybe (TTL), "ResourceRecords" :: Maybe (ResourceRecords), "AliasTarget" :: Maybe (AliasTarget), "HealthCheckId" :: Maybe (HealthCheckId), "TrafficPolicyInstanceId" :: Maybe (TrafficPolicyInstanceId) }
```

<p>Information about the resource record set to create or delete.</p>

##### Instances
``` purescript
Newtype ResourceRecordSet _
Generic ResourceRecordSet _
Show ResourceRecordSet
Decode ResourceRecordSet
Encode ResourceRecordSet
```

#### `newResourceRecordSet`

``` purescript
newResourceRecordSet :: DNSName -> RRType -> ResourceRecordSet
```

Constructs ResourceRecordSet from required parameters

#### `newResourceRecordSet'`

``` purescript
newResourceRecordSet' :: DNSName -> RRType -> ({ "Name" :: DNSName, "Type" :: RRType, "SetIdentifier" :: Maybe (ResourceRecordSetIdentifier), "Weight" :: Maybe (ResourceRecordSetWeight), "Region" :: Maybe (ResourceRecordSetRegion), "GeoLocation" :: Maybe (GeoLocation), "Failover" :: Maybe (ResourceRecordSetFailover), "MultiValueAnswer" :: Maybe (ResourceRecordSetMultiValueAnswer), "TTL" :: Maybe (TTL), "ResourceRecords" :: Maybe (ResourceRecords), "AliasTarget" :: Maybe (AliasTarget), "HealthCheckId" :: Maybe (HealthCheckId), "TrafficPolicyInstanceId" :: Maybe (TrafficPolicyInstanceId) } -> { "Name" :: DNSName, "Type" :: RRType, "SetIdentifier" :: Maybe (ResourceRecordSetIdentifier), "Weight" :: Maybe (ResourceRecordSetWeight), "Region" :: Maybe (ResourceRecordSetRegion), "GeoLocation" :: Maybe (GeoLocation), "Failover" :: Maybe (ResourceRecordSetFailover), "MultiValueAnswer" :: Maybe (ResourceRecordSetMultiValueAnswer), "TTL" :: Maybe (TTL), "ResourceRecords" :: Maybe (ResourceRecords), "AliasTarget" :: Maybe (AliasTarget), "HealthCheckId" :: Maybe (HealthCheckId), "TrafficPolicyInstanceId" :: Maybe (TrafficPolicyInstanceId) }) -> ResourceRecordSet
```

Constructs ResourceRecordSet's fields from required parameters

#### `ResourceRecordSetFailover`

``` purescript
newtype ResourceRecordSetFailover
  = ResourceRecordSetFailover String
```

##### Instances
``` purescript
Newtype ResourceRecordSetFailover _
Generic ResourceRecordSetFailover _
Show ResourceRecordSetFailover
Decode ResourceRecordSetFailover
Encode ResourceRecordSetFailover
```

#### `ResourceRecordSetIdentifier`

``` purescript
newtype ResourceRecordSetIdentifier
  = ResourceRecordSetIdentifier String
```

##### Instances
``` purescript
Newtype ResourceRecordSetIdentifier _
Generic ResourceRecordSetIdentifier _
Show ResourceRecordSetIdentifier
Decode ResourceRecordSetIdentifier
Encode ResourceRecordSetIdentifier
```

#### `ResourceRecordSetMultiValueAnswer`

``` purescript
newtype ResourceRecordSetMultiValueAnswer
  = ResourceRecordSetMultiValueAnswer Boolean
```

##### Instances
``` purescript
Newtype ResourceRecordSetMultiValueAnswer _
Generic ResourceRecordSetMultiValueAnswer _
Show ResourceRecordSetMultiValueAnswer
Decode ResourceRecordSetMultiValueAnswer
Encode ResourceRecordSetMultiValueAnswer
```

#### `ResourceRecordSetRegion`

``` purescript
newtype ResourceRecordSetRegion
  = ResourceRecordSetRegion String
```

##### Instances
``` purescript
Newtype ResourceRecordSetRegion _
Generic ResourceRecordSetRegion _
Show ResourceRecordSetRegion
Decode ResourceRecordSetRegion
Encode ResourceRecordSetRegion
```

#### `ResourceRecordSetWeight`

``` purescript
newtype ResourceRecordSetWeight
  = ResourceRecordSetWeight Number
```

##### Instances
``` purescript
Newtype ResourceRecordSetWeight _
Generic ResourceRecordSetWeight _
Show ResourceRecordSetWeight
Decode ResourceRecordSetWeight
Encode ResourceRecordSetWeight
```

#### `ResourceRecordSets`

``` purescript
newtype ResourceRecordSets
  = ResourceRecordSets (Array ResourceRecordSet)
```

##### Instances
``` purescript
Newtype ResourceRecordSets _
Generic ResourceRecordSets _
Show ResourceRecordSets
Decode ResourceRecordSets
Encode ResourceRecordSets
```

#### `ResourceRecords`

``` purescript
newtype ResourceRecords
  = ResourceRecords (Array ResourceRecord)
```

##### Instances
``` purescript
Newtype ResourceRecords _
Generic ResourceRecords _
Show ResourceRecords
Decode ResourceRecords
Encode ResourceRecords
```

#### `ResourceTagSet`

``` purescript
newtype ResourceTagSet
  = ResourceTagSet { "ResourceType" :: Maybe (TagResourceType), "ResourceId" :: Maybe (TagResourceId), "Tags" :: Maybe (TagList) }
```

<p>A complex type containing a resource and its associated tags.</p>

##### Instances
``` purescript
Newtype ResourceTagSet _
Generic ResourceTagSet _
Show ResourceTagSet
Decode ResourceTagSet
Encode ResourceTagSet
```

#### `newResourceTagSet`

``` purescript
newResourceTagSet :: ResourceTagSet
```

Constructs ResourceTagSet from required parameters

#### `newResourceTagSet'`

``` purescript
newResourceTagSet' :: ({ "ResourceType" :: Maybe (TagResourceType), "ResourceId" :: Maybe (TagResourceId), "Tags" :: Maybe (TagList) } -> { "ResourceType" :: Maybe (TagResourceType), "ResourceId" :: Maybe (TagResourceId), "Tags" :: Maybe (TagList) }) -> ResourceTagSet
```

Constructs ResourceTagSet's fields from required parameters

#### `ResourceTagSetList`

``` purescript
newtype ResourceTagSetList
  = ResourceTagSetList (Array ResourceTagSet)
```

##### Instances
``` purescript
Newtype ResourceTagSetList _
Generic ResourceTagSetList _
Show ResourceTagSetList
Decode ResourceTagSetList
Encode ResourceTagSetList
```

#### `ResourceURI`

``` purescript
newtype ResourceURI
  = ResourceURI String
```

##### Instances
``` purescript
Newtype ResourceURI _
Generic ResourceURI _
Show ResourceURI
Decode ResourceURI
Encode ResourceURI
```

#### `ReusableDelegationSetLimit`

``` purescript
newtype ReusableDelegationSetLimit
  = ReusableDelegationSetLimit { "Type" :: ReusableDelegationSetLimitType, "Value" :: LimitValue }
```

<p>A complex type that contains the type of limit that you specified in the request and the current value for that limit.</p>

##### Instances
``` purescript
Newtype ReusableDelegationSetLimit _
Generic ReusableDelegationSetLimit _
Show ReusableDelegationSetLimit
Decode ReusableDelegationSetLimit
Encode ReusableDelegationSetLimit
```

#### `newReusableDelegationSetLimit`

``` purescript
newReusableDelegationSetLimit :: ReusableDelegationSetLimitType -> LimitValue -> ReusableDelegationSetLimit
```

Constructs ReusableDelegationSetLimit from required parameters

#### `newReusableDelegationSetLimit'`

``` purescript
newReusableDelegationSetLimit' :: ReusableDelegationSetLimitType -> LimitValue -> ({ "Type" :: ReusableDelegationSetLimitType, "Value" :: LimitValue } -> { "Type" :: ReusableDelegationSetLimitType, "Value" :: LimitValue }) -> ReusableDelegationSetLimit
```

Constructs ReusableDelegationSetLimit's fields from required parameters

#### `ReusableDelegationSetLimitType`

``` purescript
newtype ReusableDelegationSetLimitType
  = ReusableDelegationSetLimitType String
```

##### Instances
``` purescript
Newtype ReusableDelegationSetLimitType _
Generic ReusableDelegationSetLimitType _
Show ReusableDelegationSetLimitType
Decode ReusableDelegationSetLimitType
Encode ReusableDelegationSetLimitType
```

#### `SearchString`

``` purescript
newtype SearchString
  = SearchString String
```

##### Instances
``` purescript
Newtype SearchString _
Generic SearchString _
Show SearchString
Decode SearchString
Encode SearchString
```

#### `ServicePrincipal`

``` purescript
newtype ServicePrincipal
  = ServicePrincipal String
```

##### Instances
``` purescript
Newtype ServicePrincipal _
Generic ServicePrincipal _
Show ServicePrincipal
Decode ServicePrincipal
Encode ServicePrincipal
```

#### `Statistic`

``` purescript
newtype Statistic
  = Statistic String
```

##### Instances
``` purescript
Newtype Statistic _
Generic Statistic _
Show Statistic
Decode Statistic
Encode Statistic
```

#### `Status`

``` purescript
newtype Status
  = Status String
```

##### Instances
``` purescript
Newtype Status _
Generic Status _
Show Status
Decode Status
Encode Status
```

#### `StatusReport`

``` purescript
newtype StatusReport
  = StatusReport { "Status" :: Maybe (Status), "CheckedTime" :: Maybe (TimeStamp) }
```

<p>A complex type that contains the status that one Amazon Route 53 health checker reports and the time of the health check.</p>

##### Instances
``` purescript
Newtype StatusReport _
Generic StatusReport _
Show StatusReport
Decode StatusReport
Encode StatusReport
```

#### `newStatusReport`

``` purescript
newStatusReport :: StatusReport
```

Constructs StatusReport from required parameters

#### `newStatusReport'`

``` purescript
newStatusReport' :: ({ "Status" :: Maybe (Status), "CheckedTime" :: Maybe (TimeStamp) } -> { "Status" :: Maybe (Status), "CheckedTime" :: Maybe (TimeStamp) }) -> StatusReport
```

Constructs StatusReport's fields from required parameters

#### `SubnetMask`

``` purescript
newtype SubnetMask
  = SubnetMask String
```

##### Instances
``` purescript
Newtype SubnetMask _
Generic SubnetMask _
Show SubnetMask
Decode SubnetMask
Encode SubnetMask
```

#### `TTL`

``` purescript
newtype TTL
  = TTL Number
```

##### Instances
``` purescript
Newtype TTL _
Generic TTL _
Show TTL
Decode TTL
Encode TTL
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: Maybe (TagKey), "Value" :: Maybe (TagValue) }
```

<p>A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: Maybe (TagKey), "Value" :: Maybe (TagValue) } -> { "Key" :: Maybe (TagKey), "Value" :: Maybe (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagResourceId`

``` purescript
newtype TagResourceId
  = TagResourceId String
```

##### Instances
``` purescript
Newtype TagResourceId _
Generic TagResourceId _
Show TagResourceId
Decode TagResourceId
Encode TagResourceId
```

#### `TagResourceIdList`

``` purescript
newtype TagResourceIdList
  = TagResourceIdList (Array TagResourceId)
```

##### Instances
``` purescript
Newtype TagResourceIdList _
Generic TagResourceIdList _
Show TagResourceIdList
Decode TagResourceIdList
Encode TagResourceIdList
```

#### `TagResourceType`

``` purescript
newtype TagResourceType
  = TagResourceType String
```

##### Instances
``` purescript
Newtype TagResourceType _
Generic TagResourceType _
Show TagResourceType
Decode TagResourceType
Encode TagResourceType
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TestDNSAnswerRequest`

``` purescript
newtype TestDNSAnswerRequest
  = TestDNSAnswerRequest { "HostedZoneId" :: ResourceId, "RecordName" :: DNSName, "RecordType" :: RRType, "ResolverIP" :: Maybe (IPAddress), "EDNS0ClientSubnetIP" :: Maybe (IPAddress), "EDNS0ClientSubnetMask" :: Maybe (SubnetMask) }
```

<p>Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>

##### Instances
``` purescript
Newtype TestDNSAnswerRequest _
Generic TestDNSAnswerRequest _
Show TestDNSAnswerRequest
Decode TestDNSAnswerRequest
Encode TestDNSAnswerRequest
```

#### `newTestDNSAnswerRequest`

``` purescript
newTestDNSAnswerRequest :: ResourceId -> DNSName -> RRType -> TestDNSAnswerRequest
```

Constructs TestDNSAnswerRequest from required parameters

#### `newTestDNSAnswerRequest'`

``` purescript
newTestDNSAnswerRequest' :: ResourceId -> DNSName -> RRType -> ({ "HostedZoneId" :: ResourceId, "RecordName" :: DNSName, "RecordType" :: RRType, "ResolverIP" :: Maybe (IPAddress), "EDNS0ClientSubnetIP" :: Maybe (IPAddress), "EDNS0ClientSubnetMask" :: Maybe (SubnetMask) } -> { "HostedZoneId" :: ResourceId, "RecordName" :: DNSName, "RecordType" :: RRType, "ResolverIP" :: Maybe (IPAddress), "EDNS0ClientSubnetIP" :: Maybe (IPAddress), "EDNS0ClientSubnetMask" :: Maybe (SubnetMask) }) -> TestDNSAnswerRequest
```

Constructs TestDNSAnswerRequest's fields from required parameters

#### `TestDNSAnswerResponse`

``` purescript
newtype TestDNSAnswerResponse
  = TestDNSAnswerResponse { "Nameserver" :: Nameserver, "RecordName" :: DNSName, "RecordType" :: RRType, "RecordData" :: RecordData, "ResponseCode" :: DNSRCode, "Protocol" :: TransportProtocol }
```

<p>A complex type that contains the response to a <code>TestDNSAnswer</code> request. </p>

##### Instances
``` purescript
Newtype TestDNSAnswerResponse _
Generic TestDNSAnswerResponse _
Show TestDNSAnswerResponse
Decode TestDNSAnswerResponse
Encode TestDNSAnswerResponse
```

#### `newTestDNSAnswerResponse`

``` purescript
newTestDNSAnswerResponse :: Nameserver -> TransportProtocol -> RecordData -> DNSName -> RRType -> DNSRCode -> TestDNSAnswerResponse
```

Constructs TestDNSAnswerResponse from required parameters

#### `newTestDNSAnswerResponse'`

``` purescript
newTestDNSAnswerResponse' :: Nameserver -> TransportProtocol -> RecordData -> DNSName -> RRType -> DNSRCode -> ({ "Nameserver" :: Nameserver, "RecordName" :: DNSName, "RecordType" :: RRType, "RecordData" :: RecordData, "ResponseCode" :: DNSRCode, "Protocol" :: TransportProtocol } -> { "Nameserver" :: Nameserver, "RecordName" :: DNSName, "RecordType" :: RRType, "RecordData" :: RecordData, "ResponseCode" :: DNSRCode, "Protocol" :: TransportProtocol }) -> TestDNSAnswerResponse
```

Constructs TestDNSAnswerResponse's fields from required parameters

#### `Threshold`

``` purescript
newtype Threshold
  = Threshold Number
```

##### Instances
``` purescript
Newtype Threshold _
Generic Threshold _
Show Threshold
Decode Threshold
Encode Threshold
```

#### `ThrottlingException`

``` purescript
newtype ThrottlingException
  = ThrottlingException { message :: Maybe (ErrorMessage) }
```

<p>The limit on the number of requests per second was exceeded.</p>

##### Instances
``` purescript
Newtype ThrottlingException _
Generic ThrottlingException _
Show ThrottlingException
Decode ThrottlingException
Encode ThrottlingException
```

#### `newThrottlingException`

``` purescript
newThrottlingException :: ThrottlingException
```

Constructs ThrottlingException from required parameters

#### `newThrottlingException'`

``` purescript
newThrottlingException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> ThrottlingException
```

Constructs ThrottlingException's fields from required parameters

#### `TimeStamp`

``` purescript
newtype TimeStamp
  = TimeStamp Timestamp
```

##### Instances
``` purescript
Newtype TimeStamp _
Generic TimeStamp _
Show TimeStamp
Decode TimeStamp
Encode TimeStamp
```

#### `TooManyHealthChecks`

``` purescript
newtype TooManyHealthChecks
  = TooManyHealthChecks { message :: Maybe (ErrorMessage) }
```

<p>This health check can't be created because the current account has reached the limit on the number of active health checks.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>For information about how to get the current limit for an account, see <a>GetAccountLimit</a>. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p> <p>You have reached the maximum number of active health checks for an AWS account. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>

##### Instances
``` purescript
Newtype TooManyHealthChecks _
Generic TooManyHealthChecks _
Show TooManyHealthChecks
Decode TooManyHealthChecks
Encode TooManyHealthChecks
```

#### `newTooManyHealthChecks`

``` purescript
newTooManyHealthChecks :: TooManyHealthChecks
```

Constructs TooManyHealthChecks from required parameters

#### `newTooManyHealthChecks'`

``` purescript
newTooManyHealthChecks' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TooManyHealthChecks
```

Constructs TooManyHealthChecks's fields from required parameters

#### `TooManyHostedZones`

``` purescript
newtype TooManyHostedZones
  = TooManyHostedZones { message :: Maybe (ErrorMessage) }
```

<p>This operation can't be completed either because the current account has reached the limit on the number of hosted zones or because you've reached the limit on the number of hosted zones that can be associated with a reusable delegation set.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>To get the current limit on hosted zones that can be created by an account, see <a>GetAccountLimit</a>.</p> <p>To get the current limit on hosted zones that can be associated with a reusable delegation set, see <a>GetReusableDelegationSetLimit</a>.</p> <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>

##### Instances
``` purescript
Newtype TooManyHostedZones _
Generic TooManyHostedZones _
Show TooManyHostedZones
Decode TooManyHostedZones
Encode TooManyHostedZones
```

#### `newTooManyHostedZones`

``` purescript
newTooManyHostedZones :: TooManyHostedZones
```

Constructs TooManyHostedZones from required parameters

#### `newTooManyHostedZones'`

``` purescript
newTooManyHostedZones' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TooManyHostedZones
```

Constructs TooManyHostedZones's fields from required parameters

#### `TooManyTrafficPolicies`

``` purescript
newtype TooManyTrafficPolicies
  = TooManyTrafficPolicies { message :: Maybe (ErrorMessage) }
```

<p>This traffic policy can't be created because the current account has reached the limit on the number of traffic policies.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>To get the current limit for an account, see <a>GetAccountLimit</a>. </p> <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>

##### Instances
``` purescript
Newtype TooManyTrafficPolicies _
Generic TooManyTrafficPolicies _
Show TooManyTrafficPolicies
Decode TooManyTrafficPolicies
Encode TooManyTrafficPolicies
```

#### `newTooManyTrafficPolicies`

``` purescript
newTooManyTrafficPolicies :: TooManyTrafficPolicies
```

Constructs TooManyTrafficPolicies from required parameters

#### `newTooManyTrafficPolicies'`

``` purescript
newTooManyTrafficPolicies' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TooManyTrafficPolicies
```

Constructs TooManyTrafficPolicies's fields from required parameters

#### `TooManyTrafficPolicyInstances`

``` purescript
newtype TooManyTrafficPolicyInstances
  = TooManyTrafficPolicyInstances { message :: Maybe (ErrorMessage) }
```

<p>This traffic policy instance can't be created because the current account has reached the limit on the number of traffic policy instances.</p> <p>For information about default limits, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>For information about how to get the current limit for an account, see <a>GetAccountLimit</a>.</p> <p>To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>

##### Instances
``` purescript
Newtype TooManyTrafficPolicyInstances _
Generic TooManyTrafficPolicyInstances _
Show TooManyTrafficPolicyInstances
Decode TooManyTrafficPolicyInstances
Encode TooManyTrafficPolicyInstances
```

#### `newTooManyTrafficPolicyInstances`

``` purescript
newTooManyTrafficPolicyInstances :: TooManyTrafficPolicyInstances
```

Constructs TooManyTrafficPolicyInstances from required parameters

#### `newTooManyTrafficPolicyInstances'`

``` purescript
newTooManyTrafficPolicyInstances' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TooManyTrafficPolicyInstances
```

Constructs TooManyTrafficPolicyInstances's fields from required parameters

#### `TooManyTrafficPolicyVersionsForCurrentPolicy`

``` purescript
newtype TooManyTrafficPolicyVersionsForCurrentPolicy
  = TooManyTrafficPolicyVersionsForCurrentPolicy { message :: Maybe (ErrorMessage) }
```

<p>This traffic policy version can't be created because you've reached the limit of 1000 on the number of versions that you can create for the current traffic policy.</p> <p>To create more traffic policy versions, you can use <a>GetTrafficPolicy</a> to get the traffic policy document for a specified traffic policy version, and then use <a>CreateTrafficPolicy</a> to create a new traffic policy using the traffic policy document.</p>

##### Instances
``` purescript
Newtype TooManyTrafficPolicyVersionsForCurrentPolicy _
Generic TooManyTrafficPolicyVersionsForCurrentPolicy _
Show TooManyTrafficPolicyVersionsForCurrentPolicy
Decode TooManyTrafficPolicyVersionsForCurrentPolicy
Encode TooManyTrafficPolicyVersionsForCurrentPolicy
```

#### `newTooManyTrafficPolicyVersionsForCurrentPolicy`

``` purescript
newTooManyTrafficPolicyVersionsForCurrentPolicy :: TooManyTrafficPolicyVersionsForCurrentPolicy
```

Constructs TooManyTrafficPolicyVersionsForCurrentPolicy from required parameters

#### `newTooManyTrafficPolicyVersionsForCurrentPolicy'`

``` purescript
newTooManyTrafficPolicyVersionsForCurrentPolicy' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TooManyTrafficPolicyVersionsForCurrentPolicy
```

Constructs TooManyTrafficPolicyVersionsForCurrentPolicy's fields from required parameters

#### `TooManyVPCAssociationAuthorizations`

``` purescript
newtype TooManyVPCAssociationAuthorizations
  = TooManyVPCAssociationAuthorizations { message :: Maybe (ErrorMessage) }
```

<p>You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a <code>DeleteVPCAssociationAuthorization</code> request to remove an existing authorization. To get a list of existing authorizations, submit a <code>ListVPCAssociationAuthorizations</code> request.</p>

##### Instances
``` purescript
Newtype TooManyVPCAssociationAuthorizations _
Generic TooManyVPCAssociationAuthorizations _
Show TooManyVPCAssociationAuthorizations
Decode TooManyVPCAssociationAuthorizations
Encode TooManyVPCAssociationAuthorizations
```

#### `newTooManyVPCAssociationAuthorizations`

``` purescript
newTooManyVPCAssociationAuthorizations :: TooManyVPCAssociationAuthorizations
```

Constructs TooManyVPCAssociationAuthorizations from required parameters

#### `newTooManyVPCAssociationAuthorizations'`

``` purescript
newTooManyVPCAssociationAuthorizations' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TooManyVPCAssociationAuthorizations
```

Constructs TooManyVPCAssociationAuthorizations's fields from required parameters

#### `TrafficPolicies`

``` purescript
newtype TrafficPolicies
  = TrafficPolicies (Array TrafficPolicy)
```

##### Instances
``` purescript
Newtype TrafficPolicies _
Generic TrafficPolicies _
Show TrafficPolicies
Decode TrafficPolicies
Encode TrafficPolicies
```

#### `TrafficPolicy`

``` purescript
newtype TrafficPolicy
  = TrafficPolicy { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion, "Name" :: TrafficPolicyName, "Type" :: RRType, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) }
```

<p>A complex type that contains settings for a traffic policy.</p>

##### Instances
``` purescript
Newtype TrafficPolicy _
Generic TrafficPolicy _
Show TrafficPolicy
Decode TrafficPolicy
Encode TrafficPolicy
```

#### `newTrafficPolicy`

``` purescript
newTrafficPolicy :: TrafficPolicyDocument -> TrafficPolicyId -> TrafficPolicyName -> RRType -> TrafficPolicyVersion -> TrafficPolicy
```

Constructs TrafficPolicy from required parameters

#### `newTrafficPolicy'`

``` purescript
newTrafficPolicy' :: TrafficPolicyDocument -> TrafficPolicyId -> TrafficPolicyName -> RRType -> TrafficPolicyVersion -> ({ "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion, "Name" :: TrafficPolicyName, "Type" :: RRType, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) } -> { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion, "Name" :: TrafficPolicyName, "Type" :: RRType, "Document" :: TrafficPolicyDocument, "Comment" :: Maybe (TrafficPolicyComment) }) -> TrafficPolicy
```

Constructs TrafficPolicy's fields from required parameters

#### `TrafficPolicyAlreadyExists`

``` purescript
newtype TrafficPolicyAlreadyExists
  = TrafficPolicyAlreadyExists { message :: Maybe (ErrorMessage) }
```

<p>A traffic policy that has the same value for <code>Name</code> already exists.</p>

##### Instances
``` purescript
Newtype TrafficPolicyAlreadyExists _
Generic TrafficPolicyAlreadyExists _
Show TrafficPolicyAlreadyExists
Decode TrafficPolicyAlreadyExists
Encode TrafficPolicyAlreadyExists
```

#### `newTrafficPolicyAlreadyExists`

``` purescript
newTrafficPolicyAlreadyExists :: TrafficPolicyAlreadyExists
```

Constructs TrafficPolicyAlreadyExists from required parameters

#### `newTrafficPolicyAlreadyExists'`

``` purescript
newTrafficPolicyAlreadyExists' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TrafficPolicyAlreadyExists
```

Constructs TrafficPolicyAlreadyExists's fields from required parameters

#### `TrafficPolicyComment`

``` purescript
newtype TrafficPolicyComment
  = TrafficPolicyComment String
```

##### Instances
``` purescript
Newtype TrafficPolicyComment _
Generic TrafficPolicyComment _
Show TrafficPolicyComment
Decode TrafficPolicyComment
Encode TrafficPolicyComment
```

#### `TrafficPolicyDocument`

``` purescript
newtype TrafficPolicyDocument
  = TrafficPolicyDocument String
```

##### Instances
``` purescript
Newtype TrafficPolicyDocument _
Generic TrafficPolicyDocument _
Show TrafficPolicyDocument
Decode TrafficPolicyDocument
Encode TrafficPolicyDocument
```

#### `TrafficPolicyId`

``` purescript
newtype TrafficPolicyId
  = TrafficPolicyId String
```

##### Instances
``` purescript
Newtype TrafficPolicyId _
Generic TrafficPolicyId _
Show TrafficPolicyId
Decode TrafficPolicyId
Encode TrafficPolicyId
```

#### `TrafficPolicyInUse`

``` purescript
newtype TrafficPolicyInUse
  = TrafficPolicyInUse { message :: Maybe (ErrorMessage) }
```

<p>One or more traffic policy instances were created by using the specified traffic policy.</p>

##### Instances
``` purescript
Newtype TrafficPolicyInUse _
Generic TrafficPolicyInUse _
Show TrafficPolicyInUse
Decode TrafficPolicyInUse
Encode TrafficPolicyInUse
```

#### `newTrafficPolicyInUse`

``` purescript
newTrafficPolicyInUse :: TrafficPolicyInUse
```

Constructs TrafficPolicyInUse from required parameters

#### `newTrafficPolicyInUse'`

``` purescript
newTrafficPolicyInUse' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TrafficPolicyInUse
```

Constructs TrafficPolicyInUse's fields from required parameters

#### `TrafficPolicyInstance`

``` purescript
newtype TrafficPolicyInstance
  = TrafficPolicyInstance { "Id" :: TrafficPolicyInstanceId, "HostedZoneId" :: ResourceId, "Name" :: DNSName, "TTL" :: TTL, "State" :: TrafficPolicyInstanceState, "Message" :: Message, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion, "TrafficPolicyType" :: RRType }
```

<p>A complex type that contains settings for the new traffic policy instance.</p>

##### Instances
``` purescript
Newtype TrafficPolicyInstance _
Generic TrafficPolicyInstance _
Show TrafficPolicyInstance
Decode TrafficPolicyInstance
Encode TrafficPolicyInstance
```

#### `newTrafficPolicyInstance`

``` purescript
newTrafficPolicyInstance :: ResourceId -> TrafficPolicyInstanceId -> Message -> DNSName -> TrafficPolicyInstanceState -> TTL -> TrafficPolicyId -> RRType -> TrafficPolicyVersion -> TrafficPolicyInstance
```

Constructs TrafficPolicyInstance from required parameters

#### `newTrafficPolicyInstance'`

``` purescript
newTrafficPolicyInstance' :: ResourceId -> TrafficPolicyInstanceId -> Message -> DNSName -> TrafficPolicyInstanceState -> TTL -> TrafficPolicyId -> RRType -> TrafficPolicyVersion -> ({ "Id" :: TrafficPolicyInstanceId, "HostedZoneId" :: ResourceId, "Name" :: DNSName, "TTL" :: TTL, "State" :: TrafficPolicyInstanceState, "Message" :: Message, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion, "TrafficPolicyType" :: RRType } -> { "Id" :: TrafficPolicyInstanceId, "HostedZoneId" :: ResourceId, "Name" :: DNSName, "TTL" :: TTL, "State" :: TrafficPolicyInstanceState, "Message" :: Message, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion, "TrafficPolicyType" :: RRType }) -> TrafficPolicyInstance
```

Constructs TrafficPolicyInstance's fields from required parameters

#### `TrafficPolicyInstanceAlreadyExists`

``` purescript
newtype TrafficPolicyInstanceAlreadyExists
  = TrafficPolicyInstanceAlreadyExists { message :: Maybe (ErrorMessage) }
```

<p>There is already a traffic policy instance with the specified ID.</p>

##### Instances
``` purescript
Newtype TrafficPolicyInstanceAlreadyExists _
Generic TrafficPolicyInstanceAlreadyExists _
Show TrafficPolicyInstanceAlreadyExists
Decode TrafficPolicyInstanceAlreadyExists
Encode TrafficPolicyInstanceAlreadyExists
```

#### `newTrafficPolicyInstanceAlreadyExists`

``` purescript
newTrafficPolicyInstanceAlreadyExists :: TrafficPolicyInstanceAlreadyExists
```

Constructs TrafficPolicyInstanceAlreadyExists from required parameters

#### `newTrafficPolicyInstanceAlreadyExists'`

``` purescript
newTrafficPolicyInstanceAlreadyExists' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TrafficPolicyInstanceAlreadyExists
```

Constructs TrafficPolicyInstanceAlreadyExists's fields from required parameters

#### `TrafficPolicyInstanceCount`

``` purescript
newtype TrafficPolicyInstanceCount
  = TrafficPolicyInstanceCount Int
```

##### Instances
``` purescript
Newtype TrafficPolicyInstanceCount _
Generic TrafficPolicyInstanceCount _
Show TrafficPolicyInstanceCount
Decode TrafficPolicyInstanceCount
Encode TrafficPolicyInstanceCount
```

#### `TrafficPolicyInstanceId`

``` purescript
newtype TrafficPolicyInstanceId
  = TrafficPolicyInstanceId String
```

##### Instances
``` purescript
Newtype TrafficPolicyInstanceId _
Generic TrafficPolicyInstanceId _
Show TrafficPolicyInstanceId
Decode TrafficPolicyInstanceId
Encode TrafficPolicyInstanceId
```

#### `TrafficPolicyInstanceState`

``` purescript
newtype TrafficPolicyInstanceState
  = TrafficPolicyInstanceState String
```

##### Instances
``` purescript
Newtype TrafficPolicyInstanceState _
Generic TrafficPolicyInstanceState _
Show TrafficPolicyInstanceState
Decode TrafficPolicyInstanceState
Encode TrafficPolicyInstanceState
```

#### `TrafficPolicyInstances`

``` purescript
newtype TrafficPolicyInstances
  = TrafficPolicyInstances (Array TrafficPolicyInstance)
```

##### Instances
``` purescript
Newtype TrafficPolicyInstances _
Generic TrafficPolicyInstances _
Show TrafficPolicyInstances
Decode TrafficPolicyInstances
Encode TrafficPolicyInstances
```

#### `TrafficPolicyName`

``` purescript
newtype TrafficPolicyName
  = TrafficPolicyName String
```

##### Instances
``` purescript
Newtype TrafficPolicyName _
Generic TrafficPolicyName _
Show TrafficPolicyName
Decode TrafficPolicyName
Encode TrafficPolicyName
```

#### `TrafficPolicySummaries`

``` purescript
newtype TrafficPolicySummaries
  = TrafficPolicySummaries (Array TrafficPolicySummary)
```

##### Instances
``` purescript
Newtype TrafficPolicySummaries _
Generic TrafficPolicySummaries _
Show TrafficPolicySummaries
Decode TrafficPolicySummaries
Encode TrafficPolicySummaries
```

#### `TrafficPolicySummary`

``` purescript
newtype TrafficPolicySummary
  = TrafficPolicySummary { "Id" :: TrafficPolicyId, "Name" :: TrafficPolicyName, "Type" :: RRType, "LatestVersion" :: TrafficPolicyVersion, "TrafficPolicyCount" :: TrafficPolicyVersion }
```

<p>A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.</p>

##### Instances
``` purescript
Newtype TrafficPolicySummary _
Generic TrafficPolicySummary _
Show TrafficPolicySummary
Decode TrafficPolicySummary
Encode TrafficPolicySummary
```

#### `newTrafficPolicySummary`

``` purescript
newTrafficPolicySummary :: TrafficPolicyId -> TrafficPolicyVersion -> TrafficPolicyName -> TrafficPolicyVersion -> RRType -> TrafficPolicySummary
```

Constructs TrafficPolicySummary from required parameters

#### `newTrafficPolicySummary'`

``` purescript
newTrafficPolicySummary' :: TrafficPolicyId -> TrafficPolicyVersion -> TrafficPolicyName -> TrafficPolicyVersion -> RRType -> ({ "Id" :: TrafficPolicyId, "Name" :: TrafficPolicyName, "Type" :: RRType, "LatestVersion" :: TrafficPolicyVersion, "TrafficPolicyCount" :: TrafficPolicyVersion } -> { "Id" :: TrafficPolicyId, "Name" :: TrafficPolicyName, "Type" :: RRType, "LatestVersion" :: TrafficPolicyVersion, "TrafficPolicyCount" :: TrafficPolicyVersion }) -> TrafficPolicySummary
```

Constructs TrafficPolicySummary's fields from required parameters

#### `TrafficPolicyVersion`

``` purescript
newtype TrafficPolicyVersion
  = TrafficPolicyVersion Int
```

##### Instances
``` purescript
Newtype TrafficPolicyVersion _
Generic TrafficPolicyVersion _
Show TrafficPolicyVersion
Decode TrafficPolicyVersion
Encode TrafficPolicyVersion
```

#### `TrafficPolicyVersionMarker`

``` purescript
newtype TrafficPolicyVersionMarker
  = TrafficPolicyVersionMarker String
```

##### Instances
``` purescript
Newtype TrafficPolicyVersionMarker _
Generic TrafficPolicyVersionMarker _
Show TrafficPolicyVersionMarker
Decode TrafficPolicyVersionMarker
Encode TrafficPolicyVersionMarker
```

#### `TransportProtocol`

``` purescript
newtype TransportProtocol
  = TransportProtocol String
```

##### Instances
``` purescript
Newtype TransportProtocol _
Generic TransportProtocol _
Show TransportProtocol
Decode TransportProtocol
Encode TransportProtocol
```

#### `UpdateHealthCheckRequest`

``` purescript
newtype UpdateHealthCheckRequest
  = UpdateHealthCheckRequest { "HealthCheckId" :: HealthCheckId, "HealthCheckVersion" :: Maybe (HealthCheckVersion), "IPAddress" :: Maybe (IPAddress), "Port" :: Maybe (Port), "ResourcePath" :: Maybe (ResourcePath), "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName), "SearchString" :: Maybe (SearchString), "FailureThreshold" :: Maybe (FailureThreshold), "Inverted" :: Maybe (Inverted), "HealthThreshold" :: Maybe (HealthThreshold), "ChildHealthChecks" :: Maybe (ChildHealthCheckList), "EnableSNI" :: Maybe (EnableSNI), "Regions" :: Maybe (HealthCheckRegionList), "AlarmIdentifier" :: Maybe (AlarmIdentifier), "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus), "ResetElements" :: Maybe (ResettableElementNameList) }
```

<p>A complex type that contains information about a request to update a health check.</p>

##### Instances
``` purescript
Newtype UpdateHealthCheckRequest _
Generic UpdateHealthCheckRequest _
Show UpdateHealthCheckRequest
Decode UpdateHealthCheckRequest
Encode UpdateHealthCheckRequest
```

#### `newUpdateHealthCheckRequest`

``` purescript
newUpdateHealthCheckRequest :: HealthCheckId -> UpdateHealthCheckRequest
```

Constructs UpdateHealthCheckRequest from required parameters

#### `newUpdateHealthCheckRequest'`

``` purescript
newUpdateHealthCheckRequest' :: HealthCheckId -> ({ "HealthCheckId" :: HealthCheckId, "HealthCheckVersion" :: Maybe (HealthCheckVersion), "IPAddress" :: Maybe (IPAddress), "Port" :: Maybe (Port), "ResourcePath" :: Maybe (ResourcePath), "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName), "SearchString" :: Maybe (SearchString), "FailureThreshold" :: Maybe (FailureThreshold), "Inverted" :: Maybe (Inverted), "HealthThreshold" :: Maybe (HealthThreshold), "ChildHealthChecks" :: Maybe (ChildHealthCheckList), "EnableSNI" :: Maybe (EnableSNI), "Regions" :: Maybe (HealthCheckRegionList), "AlarmIdentifier" :: Maybe (AlarmIdentifier), "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus), "ResetElements" :: Maybe (ResettableElementNameList) } -> { "HealthCheckId" :: HealthCheckId, "HealthCheckVersion" :: Maybe (HealthCheckVersion), "IPAddress" :: Maybe (IPAddress), "Port" :: Maybe (Port), "ResourcePath" :: Maybe (ResourcePath), "FullyQualifiedDomainName" :: Maybe (FullyQualifiedDomainName), "SearchString" :: Maybe (SearchString), "FailureThreshold" :: Maybe (FailureThreshold), "Inverted" :: Maybe (Inverted), "HealthThreshold" :: Maybe (HealthThreshold), "ChildHealthChecks" :: Maybe (ChildHealthCheckList), "EnableSNI" :: Maybe (EnableSNI), "Regions" :: Maybe (HealthCheckRegionList), "AlarmIdentifier" :: Maybe (AlarmIdentifier), "InsufficientDataHealthStatus" :: Maybe (InsufficientDataHealthStatus), "ResetElements" :: Maybe (ResettableElementNameList) }) -> UpdateHealthCheckRequest
```

Constructs UpdateHealthCheckRequest's fields from required parameters

#### `UpdateHealthCheckResponse`

``` purescript
newtype UpdateHealthCheckResponse
  = UpdateHealthCheckResponse { "HealthCheck" :: HealthCheck }
```

##### Instances
``` purescript
Newtype UpdateHealthCheckResponse _
Generic UpdateHealthCheckResponse _
Show UpdateHealthCheckResponse
Decode UpdateHealthCheckResponse
Encode UpdateHealthCheckResponse
```

#### `newUpdateHealthCheckResponse`

``` purescript
newUpdateHealthCheckResponse :: HealthCheck -> UpdateHealthCheckResponse
```

Constructs UpdateHealthCheckResponse from required parameters

#### `newUpdateHealthCheckResponse'`

``` purescript
newUpdateHealthCheckResponse' :: HealthCheck -> ({ "HealthCheck" :: HealthCheck } -> { "HealthCheck" :: HealthCheck }) -> UpdateHealthCheckResponse
```

Constructs UpdateHealthCheckResponse's fields from required parameters

#### `UpdateHostedZoneCommentRequest`

``` purescript
newtype UpdateHostedZoneCommentRequest
  = UpdateHostedZoneCommentRequest { "Id" :: ResourceId, "Comment" :: Maybe (ResourceDescription) }
```

<p>A request to update the comment for a hosted zone.</p>

##### Instances
``` purescript
Newtype UpdateHostedZoneCommentRequest _
Generic UpdateHostedZoneCommentRequest _
Show UpdateHostedZoneCommentRequest
Decode UpdateHostedZoneCommentRequest
Encode UpdateHostedZoneCommentRequest
```

#### `newUpdateHostedZoneCommentRequest`

``` purescript
newUpdateHostedZoneCommentRequest :: ResourceId -> UpdateHostedZoneCommentRequest
```

Constructs UpdateHostedZoneCommentRequest from required parameters

#### `newUpdateHostedZoneCommentRequest'`

``` purescript
newUpdateHostedZoneCommentRequest' :: ResourceId -> ({ "Id" :: ResourceId, "Comment" :: Maybe (ResourceDescription) } -> { "Id" :: ResourceId, "Comment" :: Maybe (ResourceDescription) }) -> UpdateHostedZoneCommentRequest
```

Constructs UpdateHostedZoneCommentRequest's fields from required parameters

#### `UpdateHostedZoneCommentResponse`

``` purescript
newtype UpdateHostedZoneCommentResponse
  = UpdateHostedZoneCommentResponse { "HostedZone" :: HostedZone }
```

<p>A complex type that contains the response to the <code>UpdateHostedZoneComment</code> request.</p>

##### Instances
``` purescript
Newtype UpdateHostedZoneCommentResponse _
Generic UpdateHostedZoneCommentResponse _
Show UpdateHostedZoneCommentResponse
Decode UpdateHostedZoneCommentResponse
Encode UpdateHostedZoneCommentResponse
```

#### `newUpdateHostedZoneCommentResponse`

``` purescript
newUpdateHostedZoneCommentResponse :: HostedZone -> UpdateHostedZoneCommentResponse
```

Constructs UpdateHostedZoneCommentResponse from required parameters

#### `newUpdateHostedZoneCommentResponse'`

``` purescript
newUpdateHostedZoneCommentResponse' :: HostedZone -> ({ "HostedZone" :: HostedZone } -> { "HostedZone" :: HostedZone }) -> UpdateHostedZoneCommentResponse
```

Constructs UpdateHostedZoneCommentResponse's fields from required parameters

#### `UpdateTrafficPolicyCommentRequest`

``` purescript
newtype UpdateTrafficPolicyCommentRequest
  = UpdateTrafficPolicyCommentRequest { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion, "Comment" :: TrafficPolicyComment }
```

<p>A complex type that contains information about the traffic policy that you want to update the comment for.</p>

##### Instances
``` purescript
Newtype UpdateTrafficPolicyCommentRequest _
Generic UpdateTrafficPolicyCommentRequest _
Show UpdateTrafficPolicyCommentRequest
Decode UpdateTrafficPolicyCommentRequest
Encode UpdateTrafficPolicyCommentRequest
```

#### `newUpdateTrafficPolicyCommentRequest`

``` purescript
newUpdateTrafficPolicyCommentRequest :: TrafficPolicyComment -> TrafficPolicyId -> TrafficPolicyVersion -> UpdateTrafficPolicyCommentRequest
```

Constructs UpdateTrafficPolicyCommentRequest from required parameters

#### `newUpdateTrafficPolicyCommentRequest'`

``` purescript
newUpdateTrafficPolicyCommentRequest' :: TrafficPolicyComment -> TrafficPolicyId -> TrafficPolicyVersion -> ({ "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion, "Comment" :: TrafficPolicyComment } -> { "Id" :: TrafficPolicyId, "Version" :: TrafficPolicyVersion, "Comment" :: TrafficPolicyComment }) -> UpdateTrafficPolicyCommentRequest
```

Constructs UpdateTrafficPolicyCommentRequest's fields from required parameters

#### `UpdateTrafficPolicyCommentResponse`

``` purescript
newtype UpdateTrafficPolicyCommentResponse
  = UpdateTrafficPolicyCommentResponse { "TrafficPolicy" :: TrafficPolicy }
```

<p>A complex type that contains the response information for the traffic policy.</p>

##### Instances
``` purescript
Newtype UpdateTrafficPolicyCommentResponse _
Generic UpdateTrafficPolicyCommentResponse _
Show UpdateTrafficPolicyCommentResponse
Decode UpdateTrafficPolicyCommentResponse
Encode UpdateTrafficPolicyCommentResponse
```

#### `newUpdateTrafficPolicyCommentResponse`

``` purescript
newUpdateTrafficPolicyCommentResponse :: TrafficPolicy -> UpdateTrafficPolicyCommentResponse
```

Constructs UpdateTrafficPolicyCommentResponse from required parameters

#### `newUpdateTrafficPolicyCommentResponse'`

``` purescript
newUpdateTrafficPolicyCommentResponse' :: TrafficPolicy -> ({ "TrafficPolicy" :: TrafficPolicy } -> { "TrafficPolicy" :: TrafficPolicy }) -> UpdateTrafficPolicyCommentResponse
```

Constructs UpdateTrafficPolicyCommentResponse's fields from required parameters

#### `UpdateTrafficPolicyInstanceRequest`

``` purescript
newtype UpdateTrafficPolicyInstanceRequest
  = UpdateTrafficPolicyInstanceRequest { "Id" :: TrafficPolicyInstanceId, "TTL" :: TTL, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion }
```

<p>A complex type that contains information about the resource record sets that you want to update based on a specified traffic policy instance.</p>

##### Instances
``` purescript
Newtype UpdateTrafficPolicyInstanceRequest _
Generic UpdateTrafficPolicyInstanceRequest _
Show UpdateTrafficPolicyInstanceRequest
Decode UpdateTrafficPolicyInstanceRequest
Encode UpdateTrafficPolicyInstanceRequest
```

#### `newUpdateTrafficPolicyInstanceRequest`

``` purescript
newUpdateTrafficPolicyInstanceRequest :: TrafficPolicyInstanceId -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> UpdateTrafficPolicyInstanceRequest
```

Constructs UpdateTrafficPolicyInstanceRequest from required parameters

#### `newUpdateTrafficPolicyInstanceRequest'`

``` purescript
newUpdateTrafficPolicyInstanceRequest' :: TrafficPolicyInstanceId -> TTL -> TrafficPolicyId -> TrafficPolicyVersion -> ({ "Id" :: TrafficPolicyInstanceId, "TTL" :: TTL, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion } -> { "Id" :: TrafficPolicyInstanceId, "TTL" :: TTL, "TrafficPolicyId" :: TrafficPolicyId, "TrafficPolicyVersion" :: TrafficPolicyVersion }) -> UpdateTrafficPolicyInstanceRequest
```

Constructs UpdateTrafficPolicyInstanceRequest's fields from required parameters

#### `UpdateTrafficPolicyInstanceResponse`

``` purescript
newtype UpdateTrafficPolicyInstanceResponse
  = UpdateTrafficPolicyInstanceResponse { "TrafficPolicyInstance" :: TrafficPolicyInstance }
```

<p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>

##### Instances
``` purescript
Newtype UpdateTrafficPolicyInstanceResponse _
Generic UpdateTrafficPolicyInstanceResponse _
Show UpdateTrafficPolicyInstanceResponse
Decode UpdateTrafficPolicyInstanceResponse
Encode UpdateTrafficPolicyInstanceResponse
```

#### `newUpdateTrafficPolicyInstanceResponse`

``` purescript
newUpdateTrafficPolicyInstanceResponse :: TrafficPolicyInstance -> UpdateTrafficPolicyInstanceResponse
```

Constructs UpdateTrafficPolicyInstanceResponse from required parameters

#### `newUpdateTrafficPolicyInstanceResponse'`

``` purescript
newUpdateTrafficPolicyInstanceResponse' :: TrafficPolicyInstance -> ({ "TrafficPolicyInstance" :: TrafficPolicyInstance } -> { "TrafficPolicyInstance" :: TrafficPolicyInstance }) -> UpdateTrafficPolicyInstanceResponse
```

Constructs UpdateTrafficPolicyInstanceResponse's fields from required parameters

#### `UsageCount`

``` purescript
newtype UsageCount
  = UsageCount Number
```

##### Instances
``` purescript
Newtype UsageCount _
Generic UsageCount _
Show UsageCount
Decode UsageCount
Encode UsageCount
```

#### `VPC`

``` purescript
newtype VPC
  = VPC { "VPCRegion" :: Maybe (VPCRegion), "VPCId" :: Maybe (VPCId) }
```

<p>(Private hosted zones only) A complex type that contains information about an Amazon VPC.</p>

##### Instances
``` purescript
Newtype VPC _
Generic VPC _
Show VPC
Decode VPC
Encode VPC
```

#### `newVPC`

``` purescript
newVPC :: VPC
```

Constructs VPC from required parameters

#### `newVPC'`

``` purescript
newVPC' :: ({ "VPCRegion" :: Maybe (VPCRegion), "VPCId" :: Maybe (VPCId) } -> { "VPCRegion" :: Maybe (VPCRegion), "VPCId" :: Maybe (VPCId) }) -> VPC
```

Constructs VPC's fields from required parameters

#### `VPCAssociationAuthorizationNotFound`

``` purescript
newtype VPCAssociationAuthorizationNotFound
  = VPCAssociationAuthorizationNotFound { message :: Maybe (ErrorMessage) }
```

<p>The VPC that you specified is not authorized to be associated with the hosted zone.</p>

##### Instances
``` purescript
Newtype VPCAssociationAuthorizationNotFound _
Generic VPCAssociationAuthorizationNotFound _
Show VPCAssociationAuthorizationNotFound
Decode VPCAssociationAuthorizationNotFound
Encode VPCAssociationAuthorizationNotFound
```

#### `newVPCAssociationAuthorizationNotFound`

``` purescript
newVPCAssociationAuthorizationNotFound :: VPCAssociationAuthorizationNotFound
```

Constructs VPCAssociationAuthorizationNotFound from required parameters

#### `newVPCAssociationAuthorizationNotFound'`

``` purescript
newVPCAssociationAuthorizationNotFound' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> VPCAssociationAuthorizationNotFound
```

Constructs VPCAssociationAuthorizationNotFound's fields from required parameters

#### `VPCAssociationNotFound`

``` purescript
newtype VPCAssociationNotFound
  = VPCAssociationNotFound { message :: Maybe (ErrorMessage) }
```

<p>The specified VPC and hosted zone are not currently associated.</p>

##### Instances
``` purescript
Newtype VPCAssociationNotFound _
Generic VPCAssociationNotFound _
Show VPCAssociationNotFound
Decode VPCAssociationNotFound
Encode VPCAssociationNotFound
```

#### `newVPCAssociationNotFound`

``` purescript
newVPCAssociationNotFound :: VPCAssociationNotFound
```

Constructs VPCAssociationNotFound from required parameters

#### `newVPCAssociationNotFound'`

``` purescript
newVPCAssociationNotFound' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> VPCAssociationNotFound
```

Constructs VPCAssociationNotFound's fields from required parameters

#### `VPCId`

``` purescript
newtype VPCId
  = VPCId String
```

<p>(Private hosted zones only) The ID of an Amazon VPC. </p>

##### Instances
``` purescript
Newtype VPCId _
Generic VPCId _
Show VPCId
Decode VPCId
Encode VPCId
```

#### `VPCRegion`

``` purescript
newtype VPCRegion
  = VPCRegion String
```

##### Instances
``` purescript
Newtype VPCRegion _
Generic VPCRegion _
Show VPCRegion
Decode VPCRegion
Encode VPCRegion
```

#### `VPCs`

``` purescript
newtype VPCs
  = VPCs (Array VPC)
```

<p>(Private hosted zones only) A list of <code>VPC</code> elements.</p>

##### Instances
``` purescript
Newtype VPCs _
Generic VPCs _
Show VPCs
Decode VPCs
Encode VPCs
```


