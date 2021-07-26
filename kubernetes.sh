# Manually run a cronjob
oc create job --from=cronjobs/template cronjob-name

# Remove all pods with status "error"
for pod in $(oc get pods | grep Error | awk '{print $1}'); do oc delete pod --grace-period=1 ${pod}; done

# Switch context on kubectl (replace ctx-name)
cat ~/.kube/config | grep cluster:
kubectl config use-context ctx-name