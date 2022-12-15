# SRE automation

## Stage 1 ::: Observability
- Single Pane of Glass, Logging Revampled
- 5 Dashboards (Performance, Reliability, Devops, Compliance, User Experience)


## Stage 2 ::: Telemetry
- Measure and Model Golden Signals (Error, Traffic, Latency and Saturation)
- Measure and Model Metrics like MTTR, MTBF
  - Mean Time to Repair (`MTTR`) is a reliability metric that helps calculate how long it takes to restore an asset to its operational capabilities.
- Mean Time to Repair measures the average time needed to restore an asset to its fully operational capabilities.
- The formula for MTTR is `Total Repair Time (in hours) / Total Number of Failures`
- The only way to accurately measure MTTR is by using a CMMS or EAEM with proper workflow and timestamps that collects data from multiple sources.
- MTTR can provide valuable insights that drive your organization’s maintenance and reliability strategy.


### Ways to reduce MTTR
-  build an internal process that avoids unnecessary delays
-  Improve the speed of diagnosing and reporting a failure
-  Devlope maintenance plans for critical assets



## Workflow for building new Automation

1. Understand the requirements
2. Build Automation
3. Build test cases
4. Test automation in test environment
5. Deploy to intended environment
6. monitor the first couple of runs in production
   

## Incident Response Automation
