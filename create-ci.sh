az pipelines create \
    --name az-test-ci \
    --branch Adil \
    --yml-path .pipeline/az-test-ci.xyz \
    --skip-run

az pipelines create \
    --name tf-plan-ci \
    --branch Adil \
    --yml-path .pipeline/plan-ci.yml \
    --skip-run