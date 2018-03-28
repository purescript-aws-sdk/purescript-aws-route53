
module AWS.Route53.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Route53 as Route53
import AWS.Route53.Types as Route53Types


-- | <p>Associates an Amazon VPC with a private hosted zone. </p> <important> <p>To perform the association, the VPC and the private hosted zone must already exist. You can't convert a public hosted zone into a private hosted zone.</p> </important> <note> <p>If you want to associate a VPC that was created by using one AWS account with a private hosted zone that was created by using a different account, the AWS account that created the private hosted zone must first submit a <code>CreateVPCAssociationAuthorization</code> request. Then the account that created the VPC must submit an <code>AssociateVPCWithHostedZone</code> request.</p> </note>
associateVPCWithHostedZone :: forall eff. Route53.Service -> Route53Types.AssociateVPCWithHostedZoneRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.AssociateVPCWithHostedZoneResponse
associateVPCWithHostedZone (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateVPCWithHostedZone"


-- | <p>Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name. For example, you can use <code>ChangeResourceRecordSets</code> to create a resource record set that routes traffic for test.example.com to a web server that has an IP address of 192.0.2.44.</p> <p> <b>Change Batches and Transactional Changes</b> </p> <p>The request body must include a document with a <code>ChangeResourceRecordSetsRequest</code> element. The request body contains a list of change items, known as a change batch. Change batches are considered transactional changes. When using the Amazon Route 53 API to change resource record sets, Amazon Route 53 either makes all or none of the changes in a change batch request. This ensures that Amazon Route 53 never partially implements the intended changes to the resource record sets in a hosted zone. </p> <p>For example, a change batch request that deletes the <code>CNAME</code> record for www.example.com and creates an alias resource record set for www.example.com. Amazon Route 53 deletes the first resource record set and creates the second resource record set in a single operation. If either the <code>DELETE</code> or the <code>CREATE</code> action fails, then both changes (plus any other changes in the batch) fail, and the original <code>CNAME</code> record continues to exist.</p> <important> <p>Due to the nature of transactional changes, you can't delete the same resource record set more than once in a single change batch. If you attempt to delete the same change batch more than once, Amazon Route 53 returns an <code>InvalidChangeBatch</code> error.</p> </important> <p> <b>Traffic Flow</b> </p> <p>To create resource record sets for complex routing configurations, use either the traffic flow visual editor in the Amazon Route 53 console or the API actions for traffic policies and traffic policy instances. Save the configuration as a traffic policy, then associate the traffic policy with one or more domain names (such as example.com) or subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted zones. You can roll back the updates if the new configuration isn't performing as expected. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html">Using Traffic Flow to Route DNS Traffic</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p> <b>Create, Delete, and Upsert</b> </p> <p>Use <code>ChangeResourceRecordsSetsRequest</code> to perform the following actions:</p> <ul> <li> <p> <code>CREATE</code>: Creates a resource record set that has the specified values.</p> </li> <li> <p> <code>DELETE</code>: Deletes an existing resource record set that has the specified values.</p> </li> <li> <p> <code>UPSERT</code>: If a resource record set does not already exist, AWS creates it. If a resource set does exist, Amazon Route 53 updates it with the values in the request. </p> </li> </ul> <p> <b>Syntaxes for Creating, Updating, and Deleting Resource Record Sets</b> </p> <p>The syntax for a request depends on the type of resource record set that you want to create, delete, or update, such as weighted, alias, or failover. The XML elements in your request must appear in the order listed in the syntax. </p> <p>For an example for each type of resource record set, see "Examples."</p> <p>Don't refer to the syntax in the "Parameter Syntax" section, which includes all of the elements for every kind of resource record set that you can create, delete, or update by using <code>ChangeResourceRecordSets</code>. </p> <p> <b>Change Propagation to Amazon Route 53 DNS Servers</b> </p> <p>When you submit a <code>ChangeResourceRecordSets</code> request, Amazon Route 53 propagates your changes to all of the Amazon Route 53 authoritative DNS servers. While your changes are propagating, <code>GetChange</code> returns a status of <code>PENDING</code>. When propagation is complete, <code>GetChange</code> returns a status of <code>INSYNC</code>. Changes generally propagate to all Amazon Route 53 name servers within 60 seconds. For more information, see <a>GetChange</a>.</p> <p> <b>Limits on ChangeResourceRecordSets Requests</b> </p> <p>For information about the limits on a <code>ChangeResourceRecordSets</code> request, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
changeResourceRecordSets :: forall eff. Route53.Service -> Route53Types.ChangeResourceRecordSetsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ChangeResourceRecordSetsResponse
changeResourceRecordSets (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "changeResourceRecordSets"


-- | <p>Adds, edits, or deletes tags for a health check or a hosted zone.</p> <p>For information about using tags for cost allocation, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
changeTagsForResource :: forall eff. Route53.Service -> Route53Types.ChangeTagsForResourceRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ChangeTagsForResourceResponse
changeTagsForResource (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "changeTagsForResource"


-- | <p>Creates a new health check.</p> <p>For information about adding health checks to resource record sets, see <a>ResourceRecordSet$HealthCheckId</a> in <a>ChangeResourceRecordSets</a>. </p> <p> <b>ELB Load Balancers</b> </p> <p>If you're registering EC2 instances with an Elastic Load Balancing (ELB) load balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you register an EC2 instance with a load balancer, you configure settings for an ELB health check, which performs a similar function to an Amazon Route 53 health check.</p> <p> <b>Private Hosted Zones</b> </p> <p>You can associate health checks with failover resource record sets in a private hosted zone. Note the following:</p> <ul> <li> <p>Amazon Route 53 health checkers are outside the VPC. To check the health of an endpoint within a VPC by IP address, you must assign a public IP address to the instance in the VPC.</p> </li> <li> <p>You can configure a health checker to check the health of an external resource that the instance relies on, such as a database server.</p> </li> <li> <p>You can create a CloudWatch metric, associate an alarm with the metric, and then create a health check that is based on the state of the alarm. For example, you might create a CloudWatch metric that checks the status of the Amazon EC2 <code>StatusCheckFailed</code> metric, add an alarm to the metric, and then create a health check that is based on the state of the alarm. For information about creating CloudWatch metrics and alarms by using the CloudWatch console, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html">Amazon CloudWatch User Guide</a>.</p> </li> </ul>
createHealthCheck :: forall eff. Route53.Service -> Route53Types.CreateHealthCheckRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateHealthCheckResponse
createHealthCheck (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createHealthCheck"


-- | <p>Creates a new public hosted zone, which you use to specify how the Domain Name System (DNS) routes traffic on the Internet for a domain, such as example.com, and its subdomains. </p> <important> <p>You can't convert a public hosted zones to a private hosted zone or vice versa. Instead, you must create a new hosted zone with the same name and create new resource record sets.</p> </important> <p>For more information about charges for hosted zones, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p> <p>Note the following:</p> <ul> <li> <p>You can't create a hosted zone for a top-level domain (TLD).</p> </li> <li> <p>Amazon Route 53 automatically creates a default SOA record and four NS records for the zone. For more information about SOA and NS records, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html">NS and SOA Records that Amazon Route 53 Creates for a Hosted Zone</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you want to use the same name servers for multiple hosted zones, you can optionally associate a reusable delegation set with the hosted zone. See the <code>DelegationSetId</code> element.</p> </li> <li> <p>If your domain is registered with a registrar other than Amazon Route 53, you must update the name servers with your registrar to make Amazon Route 53 your DNS service. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/creating-migrating.html">Configuring Amazon Route 53 as your DNS Service</a> in the <i>Amazon Route 53 Developer Guide</i>. </p> </li> </ul> <p>When you submit a <code>CreateHostedZone</code> request, the initial status of the hosted zone is <code>PENDING</code>. This means that the NS and SOA records are not yet available on all Amazon Route 53 DNS servers. When the NS and SOA records are available, the status of the zone changes to <code>INSYNC</code>.</p>
createHostedZone :: forall eff. Route53.Service -> Route53Types.CreateHostedZoneRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateHostedZoneResponse
createHostedZone (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createHostedZone"


-- | <p>Creates a configuration for DNS query logging. After you create a query logging configuration, Amazon Route 53 begins to publish log data to an Amazon CloudWatch Logs log group.</p> <p>DNS query logs contain information about the queries that Amazon Route 53 receives for a specified public hosted zone, such as the following:</p> <ul> <li> <p>Amazon Route 53 edge location that responded to the DNS query</p> </li> <li> <p>Domain or subdomain that was requested</p> </li> <li> <p>DNS record type, such as A or AAAA</p> </li> <li> <p>DNS response code, such as <code>NoError</code> or <code>ServFail</code> </p> </li> </ul> <dl> <dt>Log Group and Resource Policy</dt> <dd> <p>Before you create a query logging configuration, perform the following operations.</p> <note> <p>If you create a query logging configuration using the Amazon Route 53 console, Amazon Route 53 performs these operations automatically.</p> </note> <ol> <li> <p>Create a CloudWatch Logs log group, and make note of the ARN, which you specify when you create a query logging configuration. Note the following:</p> <ul> <li> <p>You must create the log group in the us-east-1 region.</p> </li> <li> <p>You must use the same AWS account to create the log group and the hosted zone that you want to configure query logging for.</p> </li> <li> <p>When you create log groups for query logging, we recommend that you use a consistent prefix, for example:</p> <p> <code>/aws/route53/<i>hosted zone name</i> </code> </p> <p>In the next step, you'll create a resource policy, which controls access to one or more log groups and the associated AWS resources, such as Amazon Route 53 hosted zones. There's a limit on the number of resource policies that you can create, so we recommend that you use a consistent prefix so you can use the same resource policy for all the log groups that you create for query logging.</p> </li> </ul> </li> <li> <p>Create a CloudWatch Logs resource policy, and give it the permissions that Amazon Route 53 needs to create log streams and to send query logs to log streams. For the value of <code>Resource</code>, specify the ARN for the log group that you created in the previous step. To use the same resource policy for all the CloudWatch Logs log groups that you created for query logging configurations, replace the hosted zone name with <code>*</code>, for example:</p> <p> <code>arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*</code> </p> <note> <p>You can't use the CloudWatch console to create or edit a resource policy. You must use the CloudWatch API, one of the AWS SDKs, or the AWS CLI.</p> </note> </li> </ol> </dd> <dt>Log Streams and Edge Locations</dt> <dd> <p>When Amazon Route 53 finishes creating the configuration for DNS query logging, it does the following:</p> <ul> <li> <p>Creates a log stream for an edge location the first time that the edge location responds to DNS queries for the specified hosted zone. That log stream is used to log all queries that Amazon Route 53 responds to for that edge location.</p> </li> <li> <p>Begins to send query logs to the applicable log stream.</p> </li> </ul> <p>The name of each log stream is in the following format:</p> <p> <code> <i>hosted zone ID</i>/<i>edge location code</i> </code> </p> <p>The edge location code is a three-letter code and an arbitrarily assigned number, for example, DFW3. The three-letter code typically corresponds with the International Air Transport Association airport code for an airport near the edge location. (These abbreviations might change in the future.) For a list of edge locations, see "The Amazon Route 53 Global Network" on the <a href="http://aws.amazon.com/route53/details/">Amazon Route 53 Product Details</a> page.</p> </dd> <dt>Queries That Are Logged</dt> <dd> <p>Query logs contain only the queries that DNS resolvers forward to Amazon Route 53. If a DNS resolver has already cached the response to a query (such as the IP address for a load balancer for example.com), the resolver will continue to return the cached response. It doesn't forward another query to Amazon Route 53 until the TTL for the corresponding resource record set expires. Depending on how many DNS queries are submitted for a resource record set, and depending on the TTL for that resource record set, query logs might contain information about only one query out of every several thousand queries that are submitted to DNS. For more information about how DNS works, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html">Routing Internet Traffic to Your Website or Web Application</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </dd> <dt>Log File Format</dt> <dd> <p>For a list of the values in each query log and the format of each value, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS Queries</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </dd> <dt>Pricing</dt> <dd> <p>For information about charges for query logs, see <a href="http://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p> </dd> <dt>How to Stop Logging</dt> <dd> <p>If you want Amazon Route 53 to stop sending query logs to CloudWatch Logs, delete the query logging configuration. For more information, see <a>DeleteQueryLoggingConfig</a>.</p> </dd> </dl>
createQueryLoggingConfig :: forall eff. Route53.Service -> Route53Types.CreateQueryLoggingConfigRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateQueryLoggingConfigResponse
createQueryLoggingConfig (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createQueryLoggingConfig"


-- | <p>Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones. If a hosted zoned ID is specified, <code>CreateReusableDelegationSet</code> marks the delegation set associated with that zone as reusable.</p> <note> <p>You can't associate a reusable delegation set with a private hosted zone.</p> </note> <p>For information about using a reusable delegation set to configure white label name servers, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html">Configuring White Label Name Servers</a>.</p> <p>The process for migrating existing hosted zones to use a reusable delegation set is comparable to the process for configuring white label name servers. You need to perform the following steps:</p> <ol> <li> <p>Create a reusable delegation set.</p> </li> <li> <p>Recreate hosted zones, and reduce the TTL to 60 seconds or less.</p> </li> <li> <p>Recreate resource record sets in the new hosted zones.</p> </li> <li> <p>Change the registrar's name servers to use the name servers for the new hosted zones.</p> </li> <li> <p>Monitor traffic for the website or application.</p> </li> <li> <p>Change TTLs back to their original values.</p> </li> </ol> <p>If you want to migrate existing hosted zones to use a reusable delegation set, the existing hosted zones can't use any of the name servers that are assigned to the reusable delegation set. If one or more hosted zones do use one or more name servers that are assigned to the reusable delegation set, you can do one of the following:</p> <ul> <li> <p>For small numbers of hosted zones—up to a few hundred—it's relatively easy to create reusable delegation sets until you get one that has four name servers that don't overlap with any of the name servers in your hosted zones.</p> </li> <li> <p>For larger numbers of hosted zones, the easiest solution is to use more than one reusable delegation set.</p> </li> <li> <p>For larger numbers of hosted zones, you can also migrate hosted zones that have overlapping name servers to hosted zones that don't have overlapping name servers, then migrate the hosted zones again to use the reusable delegation set.</p> </li> </ul>
createReusableDelegationSet :: forall eff. Route53.Service -> Route53Types.CreateReusableDelegationSetRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateReusableDelegationSetResponse
createReusableDelegationSet (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createReusableDelegationSet"


-- | <p>Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com).</p>
createTrafficPolicy :: forall eff. Route53.Service -> Route53Types.CreateTrafficPolicyRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateTrafficPolicyResponse
createTrafficPolicy (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTrafficPolicy"


-- | <p>Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version. In addition, <code>CreateTrafficPolicyInstance</code> associates the resource record sets with a specified domain name (such as example.com) or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for the domain or subdomain name by using the resource record sets that <code>CreateTrafficPolicyInstance</code> created.</p>
createTrafficPolicyInstance :: forall eff. Route53.Service -> Route53Types.CreateTrafficPolicyInstanceRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateTrafficPolicyInstanceResponse
createTrafficPolicyInstance (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTrafficPolicyInstance"


-- | <p>Creates a new version of an existing traffic policy. When you create a new version of a traffic policy, you specify the ID of the traffic policy that you want to update and a JSON-formatted document that describes the new version. You use traffic policies to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com). You can create a maximum of 1000 versions of a traffic policy. If you reach the limit and need to create another version, you'll need to start a new traffic policy.</p>
createTrafficPolicyVersion :: forall eff. Route53.Service -> Route53Types.CreateTrafficPolicyVersionRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateTrafficPolicyVersionResponse
createTrafficPolicyVersion (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTrafficPolicyVersion"


-- | <p>Authorizes the AWS account that created a specified VPC to submit an <code>AssociateVPCWithHostedZone</code> request to associate the VPC with a specified hosted zone that was created by a different account. To submit a <code>CreateVPCAssociationAuthorization</code> request, you must use the account that created the hosted zone. After you authorize the association, use the account that created the VPC to submit an <code>AssociateVPCWithHostedZone</code> request.</p> <note> <p>If you want to associate multiple VPCs that you created by using one account with a hosted zone that you created by using a different account, you must submit one authorization request for each VPC.</p> </note>
createVPCAssociationAuthorization :: forall eff. Route53.Service -> Route53Types.CreateVPCAssociationAuthorizationRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.CreateVPCAssociationAuthorizationResponse
createVPCAssociationAuthorization (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVPCAssociationAuthorization"


-- | <p>Deletes a health check.</p> <important> <p>Amazon Route 53 does not prevent you from deleting a health check even if the health check is associated with one or more resource record sets. If you delete a health check and you don't update the associated resource record sets, the future status of the health check can't be predicted and may change. This will affect the routing of DNS queries for your DNS failover configuration. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html">Replacing and Deleting Health Checks</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </important>
deleteHealthCheck :: forall eff. Route53.Service -> Route53Types.DeleteHealthCheckRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteHealthCheckResponse
deleteHealthCheck (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteHealthCheck"


-- | <p>Deletes a hosted zone.</p> <important> <p>If the name servers for the hosted zone are associated with a domain and if you want to make the domain unavailable on the Internet, we recommend that you delete the name servers from the domain to prevent future DNS queries from possibly being misrouted. If the domain is registered with Amazon Route 53, see <code>UpdateDomainNameservers</code>. If the domain is registered with another registrar, use the method provided by the registrar to delete name servers for the domain.</p> <p>Some domain registries don't allow you to remove all of the name servers for a domain. If the registry for your domain requires one or more name servers, we recommend that you delete the hosted zone only if you transfer DNS service to another service provider, and you replace the name servers for the domain with name servers from the new provider.</p> </important> <p>You can delete a hosted zone only if it contains only the default SOA record and NS resource record sets. If the hosted zone contains other resource record sets, you must delete them before you can delete the hosted zone. If you try to delete a hosted zone that contains other resource record sets, the request fails, and Amazon Route 53 returns a <code>HostedZoneNotEmpty</code> error. For information about deleting records from your hosted zone, see <a>ChangeResourceRecordSets</a>.</p> <p>To verify that the hosted zone has been deleted, do one of the following:</p> <ul> <li> <p>Use the <code>GetHostedZone</code> action to request information about the hosted zone.</p> </li> <li> <p>Use the <code>ListHostedZones</code> action to get a list of the hosted zones associated with the current AWS account.</p> </li> </ul>
deleteHostedZone :: forall eff. Route53.Service -> Route53Types.DeleteHostedZoneRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteHostedZoneResponse
deleteHostedZone (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteHostedZone"


-- | <p>Deletes a configuration for DNS query logging. If you delete a configuration, Amazon Route 53 stops sending query logs to CloudWatch Logs. Amazon Route 53 doesn't delete any logs that are already in CloudWatch Logs.</p> <p>For more information about DNS query logs, see <a>CreateQueryLoggingConfig</a>.</p>
deleteQueryLoggingConfig :: forall eff. Route53.Service -> Route53Types.DeleteQueryLoggingConfigRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteQueryLoggingConfigResponse
deleteQueryLoggingConfig (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteQueryLoggingConfig"


-- | <p>Deletes a reusable delegation set.</p> <important> <p>You can delete a reusable delegation set only if it isn't associated with any hosted zones.</p> </important> <p>To verify that the reusable delegation set is not associated with any hosted zones, submit a <a>GetReusableDelegationSet</a> request and specify the ID of the reusable delegation set that you want to delete.</p>
deleteReusableDelegationSet :: forall eff. Route53.Service -> Route53Types.DeleteReusableDelegationSetRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteReusableDelegationSetResponse
deleteReusableDelegationSet (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteReusableDelegationSet"


-- | <p>Deletes a traffic policy.</p>
deleteTrafficPolicy :: forall eff. Route53.Service -> Route53Types.DeleteTrafficPolicyRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteTrafficPolicyResponse
deleteTrafficPolicy (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTrafficPolicy"


-- | <p>Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance.</p> <note> <p>In the Amazon Route 53 console, traffic policy instances are known as policy records.</p> </note>
deleteTrafficPolicyInstance :: forall eff. Route53.Service -> Route53Types.DeleteTrafficPolicyInstanceRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteTrafficPolicyInstanceResponse
deleteTrafficPolicyInstance (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTrafficPolicyInstance"


-- | <p>Removes authorization to submit an <code>AssociateVPCWithHostedZone</code> request to associate a specified VPC with a hosted zone that was created by a different account. You must use the account that created the hosted zone to submit a <code>DeleteVPCAssociationAuthorization</code> request.</p> <important> <p>Sending this request only prevents the AWS account that created the VPC from associating the VPC with the Amazon Route 53 hosted zone in the future. If the VPC is already associated with the hosted zone, <code>DeleteVPCAssociationAuthorization</code> won't disassociate the VPC from the hosted zone. If you want to delete an existing association, use <code>DisassociateVPCFromHostedZone</code>.</p> </important>
deleteVPCAssociationAuthorization :: forall eff. Route53.Service -> Route53Types.DeleteVPCAssociationAuthorizationRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DeleteVPCAssociationAuthorizationResponse
deleteVPCAssociationAuthorization (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVPCAssociationAuthorization"


-- | <p>Disassociates a VPC from a Amazon Route 53 private hosted zone. </p> <note> <p>You can't disassociate the last VPC from a private hosted zone.</p> </note> <important> <p>You can't disassociate a VPC from a private hosted zone when only one VPC is associated with the hosted zone. You also can't convert a private hosted zone into a public hosted zone.</p> </important>
disassociateVPCFromHostedZone :: forall eff. Route53.Service -> Route53Types.DisassociateVPCFromHostedZoneRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.DisassociateVPCFromHostedZoneResponse
disassociateVPCFromHostedZone (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateVPCFromHostedZone"


-- | <p>Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account.</p> <p>For the default limit, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>. To request a higher limit, <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53">open a case</a>.</p>
getAccountLimit :: forall eff. Route53.Service -> Route53Types.GetAccountLimitRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetAccountLimitResponse
getAccountLimit (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getAccountLimit"


-- | <p>Returns the current status of a change batch request. The status is one of the following values:</p> <ul> <li> <p> <code>PENDING</code> indicates that the changes in this request have not propagated to all Amazon Route 53 DNS servers. This is the initial status of all change batch requests.</p> </li> <li> <p> <code>INSYNC</code> indicates that the changes have propagated to all Amazon Route 53 DNS servers. </p> </li> </ul>
getChange :: forall eff. Route53.Service -> Route53Types.GetChangeRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetChangeResponse
getChange (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getChange"


-- | <p> <code>GetCheckerIpRanges</code> still works, but we recommend that you download ip-ranges.json, which includes IP address ranges for all AWS services. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html">IP Address Ranges of Amazon Route 53 Servers</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
getCheckerIpRanges :: forall eff. Route53.Service -> Route53Types.GetCheckerIpRangesRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetCheckerIpRangesResponse
getCheckerIpRanges (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCheckerIpRanges"


-- | <p>Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.</p> <p>Use the following syntax to determine whether a continent is supported for geolocation:</p> <p> <code>GET /2013-04-01/geolocation?ContinentCode=<i>two-letter abbreviation for a continent</i> </code> </p> <p>Use the following syntax to determine whether a country is supported for geolocation:</p> <p> <code>GET /2013-04-01/geolocation?CountryCode=<i>two-character country code</i> </code> </p> <p>Use the following syntax to determine whether a subdivision of a country is supported for geolocation:</p> <p> <code>GET /2013-04-01/geolocation?CountryCode=<i>two-character country code</i>&amp;SubdivisionCode=<i>subdivision code</i> </code> </p>
getGeoLocation :: forall eff. Route53.Service -> Route53Types.GetGeoLocationRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetGeoLocationResponse
getGeoLocation (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getGeoLocation"


-- | <p>Gets information about a specified health check.</p>
getHealthCheck :: forall eff. Route53.Service -> Route53Types.GetHealthCheckRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHealthCheckResponse
getHealthCheck (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHealthCheck"


-- | <p>Retrieves the number of health checks that are associated with the current AWS account.</p>
getHealthCheckCount :: forall eff. Route53.Service -> Route53Types.GetHealthCheckCountRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHealthCheckCountResponse
getHealthCheckCount (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHealthCheckCount"


-- | <p>Gets the reason that a specified health check failed most recently.</p>
getHealthCheckLastFailureReason :: forall eff. Route53.Service -> Route53Types.GetHealthCheckLastFailureReasonRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHealthCheckLastFailureReasonResponse
getHealthCheckLastFailureReason (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHealthCheckLastFailureReason"


-- | <p>Gets status of a specified health check. </p>
getHealthCheckStatus :: forall eff. Route53.Service -> Route53Types.GetHealthCheckStatusRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHealthCheckStatusResponse
getHealthCheckStatus (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHealthCheckStatus"


-- | <p>Gets information about a specified hosted zone including the four name servers assigned to the hosted zone.</p>
getHostedZone :: forall eff. Route53.Service -> Route53Types.GetHostedZoneRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHostedZoneResponse
getHostedZone (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHostedZone"


-- | <p>Retrieves the number of hosted zones that are associated with the current AWS account.</p>
getHostedZoneCount :: forall eff. Route53.Service -> Route53Types.GetHostedZoneCountRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHostedZoneCountResponse
getHostedZoneCount (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHostedZoneCount"


-- | <p>Gets the specified limit for a specified hosted zone, for example, the maximum number of records that you can create in the hosted zone. </p> <p>For the default limit, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>. To request a higher limit, <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53">open a case</a>.</p>
getHostedZoneLimit :: forall eff. Route53.Service -> Route53Types.GetHostedZoneLimitRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetHostedZoneLimitResponse
getHostedZoneLimit (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHostedZoneLimit"


-- | <p>Gets information about a specified configuration for DNS query logging.</p> <p>For more information about DNS query logs, see <a>CreateQueryLoggingConfig</a> and <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS Queries</a>.</p>
getQueryLoggingConfig :: forall eff. Route53.Service -> Route53Types.GetQueryLoggingConfigRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetQueryLoggingConfigResponse
getQueryLoggingConfig (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getQueryLoggingConfig"


-- | <p>Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set.</p>
getReusableDelegationSet :: forall eff. Route53.Service -> Route53Types.GetReusableDelegationSetRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetReusableDelegationSetResponse
getReusableDelegationSet (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReusableDelegationSet"


-- | <p>Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set.</p> <p>For the default limit, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>. To request a higher limit, <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53">open a case</a>.</p>
getReusableDelegationSetLimit :: forall eff. Route53.Service -> Route53Types.GetReusableDelegationSetLimitRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetReusableDelegationSetLimitResponse
getReusableDelegationSetLimit (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReusableDelegationSetLimit"


-- | <p>Gets information about a specific traffic policy version.</p>
getTrafficPolicy :: forall eff. Route53.Service -> Route53Types.GetTrafficPolicyRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetTrafficPolicyResponse
getTrafficPolicy (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTrafficPolicy"


-- | <p>Gets information about a specified traffic policy instance.</p> <note> <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <note> <p>In the Amazon Route 53 console, traffic policy instances are known as policy records.</p> </note>
getTrafficPolicyInstance :: forall eff. Route53.Service -> Route53Types.GetTrafficPolicyInstanceRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetTrafficPolicyInstanceResponse
getTrafficPolicyInstance (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTrafficPolicyInstance"


-- | <p>Gets the number of traffic policy instances that are associated with the current AWS account.</p>
getTrafficPolicyInstanceCount :: forall eff. Route53.Service -> Route53Types.GetTrafficPolicyInstanceCountRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.GetTrafficPolicyInstanceCountResponse
getTrafficPolicyInstanceCount (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTrafficPolicyInstanceCount"


-- | <p>Retrieves a list of supported geo locations.</p> <p>Countries are listed first, and continents are listed last. If Amazon Route 53 supports subdivisions for a country (for example, states or provinces), the subdivisions for that country are listed in alphabetical order immediately after the corresponding country.</p>
listGeoLocations :: forall eff. Route53.Service -> Route53Types.ListGeoLocationsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListGeoLocationsResponse
listGeoLocations (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGeoLocations"


-- | <p>Retrieve a list of the health checks that are associated with the current AWS account. </p>
listHealthChecks :: forall eff. Route53.Service -> Route53Types.ListHealthChecksRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListHealthChecksResponse
listHealthChecks (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listHealthChecks"


-- | <p>Retrieves a list of the public and private hosted zones that are associated with the current AWS account. The response includes a <code>HostedZones</code> child element for each hosted zone.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the <code>maxitems</code> parameter to list them in groups of up to 100.</p>
listHostedZones :: forall eff. Route53.Service -> Route53Types.ListHostedZonesRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListHostedZonesResponse
listHostedZones (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listHostedZones"


-- | <p>Retrieves a list of your hosted zones in lexicographic order. The response includes a <code>HostedZones</code> child element for each hosted zone created by the current AWS account. </p> <p> <code>ListHostedZonesByName</code> sorts hosted zones by name with the labels reversed. For example:</p> <p> <code>com.example.www.</code> </p> <p>Note the trailing dot, which can change the sort order in some circumstances.</p> <p>If the domain name includes escape characters or Punycode, <code>ListHostedZonesByName</code> alphabetizes the domain name using the escaped or Punycoded value, which is the format that Amazon Route 53 saves in its database. For example, to create a hosted zone for exämple.com, you specify ex\344mple.com for the domain name. <code>ListHostedZonesByName</code> alphabetizes it as:</p> <p> <code>com.ex\344mple.</code> </p> <p>The labels are reversed and alphabetized using the escaped value. For more information about valid domain name formats, including internationalized domain names, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Amazon Route 53 returns up to 100 items in each response. If you have a lot of hosted zones, use the <code>MaxItems</code> parameter to list them in groups of up to 100. The response includes values that help navigate from one group of <code>MaxItems</code> hosted zones to the next:</p> <ul> <li> <p>The <code>DNSName</code> and <code>HostedZoneId</code> elements in the response contain the values, if any, specified for the <code>dnsname</code> and <code>hostedzoneid</code> parameters in the request that produced the current response.</p> </li> <li> <p>The <code>MaxItems</code> element in the response contains the value, if any, that you specified for the <code>maxitems</code> parameter in the request that produced the current response.</p> </li> <li> <p>If the value of <code>IsTruncated</code> in the response is true, there are more hosted zones associated with the current AWS account. </p> <p>If <code>IsTruncated</code> is false, this response includes the last hosted zone that is associated with the current account. The <code>NextDNSName</code> element and <code>NextHostedZoneId</code> elements are omitted from the response.</p> </li> <li> <p>The <code>NextDNSName</code> and <code>NextHostedZoneId</code> elements in the response contain the domain name and the hosted zone ID of the next hosted zone that is associated with the current AWS account. If you want to list more hosted zones, make another call to <code>ListHostedZonesByName</code>, and specify the value of <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the <code>dnsname</code> and <code>hostedzoneid</code> parameters, respectively.</p> </li> </ul>
listHostedZonesByName :: forall eff. Route53.Service -> Route53Types.ListHostedZonesByNameRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListHostedZonesByNameResponse
listHostedZonesByName (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listHostedZonesByName"


-- | <p>Lists the configurations for DNS query logging that are associated with the current AWS account or the configuration that is associated with a specified hosted zone.</p> <p>For more information about DNS query logs, see <a>CreateQueryLoggingConfig</a>. Additional information, including the format of DNS query logs, appears in <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS Queries</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
listQueryLoggingConfigs :: forall eff. Route53.Service -> Route53Types.ListQueryLoggingConfigsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListQueryLoggingConfigsResponse
listQueryLoggingConfigs (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listQueryLoggingConfigs"


-- | <p>Lists the resource record sets in a specified hosted zone.</p> <p> <code>ListResourceRecordSets</code> returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the <code>name</code> and <code>type</code> elements. The action sorts results first by DNS name with the labels reversed, for example:</p> <p> <code>com.example.www.</code> </p> <p>Note the trailing dot, which can change the sort order in some circumstances.</p> <p>When multiple records have the same DNS name, the action sorts results by the record type.</p> <p>You can use the name and type elements to adjust the beginning position of the list of resource record sets returned:</p> <dl> <dt>If you do not specify Name or Type</dt> <dd> <p>The results begin with the first resource record set that the hosted zone contains.</p> </dd> <dt>If you specify Name but not Type</dt> <dd> <p>The results begin with the first resource record set in the list whose name is greater than or equal to <code>Name</code>.</p> </dd> <dt>If you specify Type but not Name</dt> <dd> <p>Amazon Route 53 returns the <code>InvalidInput</code> error.</p> </dd> <dt>If you specify both Name and Type</dt> <dd> <p>The results begin with the first resource record set in the list whose name is greater than or equal to <code>Name</code>, and whose type is greater than or equal to <code>Type</code>.</p> </dd> </dl> <p>This action returns the most current version of the records. This includes records that are <code>PENDING</code>, and that are not yet available on all Amazon Route 53 DNS servers.</p> <p>To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a <code>ChangeResourceRecordSets</code> request while you're paging through the results of a <code>ListResourceRecordSets</code> request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.</p>
listResourceRecordSets :: forall eff. Route53.Service -> Route53Types.ListResourceRecordSetsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListResourceRecordSetsResponse
listResourceRecordSets (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listResourceRecordSets"


-- | <p>Retrieves a list of the reusable delegation sets that are associated with the current AWS account.</p>
listReusableDelegationSets :: forall eff. Route53.Service -> Route53Types.ListReusableDelegationSetsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListReusableDelegationSetsResponse
listReusableDelegationSets (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listReusableDelegationSets"


-- | <p>Lists tags for one health check or hosted zone. </p> <p>For information about using tags for cost allocation, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
listTagsForResource :: forall eff. Route53.Service -> Route53Types.ListTagsForResourceRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTagsForResourceResponse
listTagsForResource (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTagsForResource"


-- | <p>Lists tags for up to 10 health checks or hosted zones.</p> <p>For information about using tags for cost allocation, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
listTagsForResources :: forall eff. Route53.Service -> Route53Types.ListTagsForResourcesRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTagsForResourcesResponse
listTagsForResources (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTagsForResources"


-- | <p>Gets information about the latest version for every traffic policy that is associated with the current AWS account. Policies are listed in the order in which they were created. </p>
listTrafficPolicies :: forall eff. Route53.Service -> Route53Types.ListTrafficPoliciesRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTrafficPoliciesResponse
listTrafficPolicies (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTrafficPolicies"


-- | <p>Gets information about the traffic policy instances that you created by using the current AWS account.</p> <note> <p>After you submit an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the <code>MaxItems</code> parameter to list them in groups of up to 100.</p>
listTrafficPolicyInstances :: forall eff. Route53.Service -> Route53Types.ListTrafficPolicyInstancesRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTrafficPolicyInstancesResponse
listTrafficPolicyInstances (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTrafficPolicyInstances"


-- | <p>Gets information about the traffic policy instances that you created in a specified hosted zone.</p> <note> <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the <code>MaxItems</code> parameter to list them in groups of up to 100.</p>
listTrafficPolicyInstancesByHostedZone :: forall eff. Route53.Service -> Route53Types.ListTrafficPolicyInstancesByHostedZoneRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTrafficPolicyInstancesByHostedZoneResponse
listTrafficPolicyInstancesByHostedZone (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTrafficPolicyInstancesByHostedZone"


-- | <p>Gets information about the traffic policy instances that you created by using a specify traffic policy version.</p> <note> <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the <code>MaxItems</code> parameter to list them in groups of up to 100.</p>
listTrafficPolicyInstancesByPolicy :: forall eff. Route53.Service -> Route53Types.ListTrafficPolicyInstancesByPolicyRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTrafficPolicyInstancesByPolicyResponse
listTrafficPolicyInstancesByPolicy (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTrafficPolicyInstancesByPolicy"


-- | <p>Gets information about all of the versions for a specified traffic policy.</p> <p>Traffic policy versions are listed in numerical order by <code>VersionNumber</code>.</p>
listTrafficPolicyVersions :: forall eff. Route53.Service -> Route53Types.ListTrafficPolicyVersionsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListTrafficPolicyVersionsResponse
listTrafficPolicyVersions (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTrafficPolicyVersions"


-- | <p>Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more <code>CreateVPCAssociationAuthorization</code> requests. </p> <p>The response includes a <code>VPCs</code> element with a <code>VPC</code> child element for each VPC that can be associated with the hosted zone.</p>
listVPCAssociationAuthorizations :: forall eff. Route53.Service -> Route53Types.ListVPCAssociationAuthorizationsRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.ListVPCAssociationAuthorizationsResponse
listVPCAssociationAuthorizations (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listVPCAssociationAuthorizations"


-- | <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>
testDNSAnswer :: forall eff. Route53.Service -> Route53Types.TestDNSAnswerRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.TestDNSAnswerResponse
testDNSAnswer (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "testDNSAnswer"


-- | <p>Updates an existing health check. Note that some values can't be updated. </p> <p>For more information about updating health checks, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html">Creating, Updating, and Deleting Health Checks</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
updateHealthCheck :: forall eff. Route53.Service -> Route53Types.UpdateHealthCheckRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.UpdateHealthCheckResponse
updateHealthCheck (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateHealthCheck"


-- | <p>Updates the comment for a specified hosted zone.</p>
updateHostedZoneComment :: forall eff. Route53.Service -> Route53Types.UpdateHostedZoneCommentRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.UpdateHostedZoneCommentResponse
updateHostedZoneComment (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateHostedZoneComment"


-- | <p>Updates the comment for a specified traffic policy version.</p>
updateTrafficPolicyComment :: forall eff. Route53.Service -> Route53Types.UpdateTrafficPolicyCommentRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.UpdateTrafficPolicyCommentResponse
updateTrafficPolicyComment (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateTrafficPolicyComment"


-- | <p>Updates the resource record sets in a specified hosted zone that were created based on the settings in a specified traffic policy version.</p> <p>When you update a traffic policy instance, Amazon Route 53 continues to respond to DNS queries for the root resource record set name (such as example.com) while it replaces one group of resource record sets with another. Amazon Route 53 performs the following operations:</p> <ol> <li> <p>Amazon Route 53 creates a new group of resource record sets based on the specified traffic policy. This is true regardless of how significant the differences are between the existing resource record sets and the new resource record sets. </p> </li> <li> <p>When all of the new resource record sets have been created, Amazon Route 53 starts to respond to DNS queries for the root resource record set name (such as example.com) by using the new resource record sets.</p> </li> <li> <p>Amazon Route 53 deletes the old group of resource record sets that are associated with the root resource record set name.</p> </li> </ol>
updateTrafficPolicyInstance :: forall eff. Route53.Service -> Route53Types.UpdateTrafficPolicyInstanceRequest -> Aff (exception :: EXCEPTION | eff) Route53Types.UpdateTrafficPolicyInstanceResponse
updateTrafficPolicyInstance (Route53.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateTrafficPolicyInstance"
