# workspace-tags-issue-replication

STEPS TO REPRODUCE
1. Clone the code
2. Attach repo to workspace
3. Add variable TFE_TOKEN
4. Apply run
5. Check workspace > tags-test-workspace > there you will see only project tags
6. Run apply again
7. Check workspace after refresh > now it will show all the tags.


Workaround 

1. remove the tags or add tags = null in the tf_workspace.
2. add the tags = var.tags in tfe_workspace_settings
3. run apply and you will see all the tags in workspace in simple apply - which is expected.
