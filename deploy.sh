oc create -f eo-namespace.yaml
oc create -f eo-og.yaml
oc create -f eo-sub.yaml
oc project openshift-operators-redhat
oc create -f eo-rbac.yaml
oc create -f clo-namespace.yaml
oc create -f clo-og.yaml
oc create -f clo-sub.yaml
oc get csv --all-namespaces | grep openshift-logging
oc create -f clo-instance.yaml
oc process -f eventrouter.yaml | oc apply -f -
