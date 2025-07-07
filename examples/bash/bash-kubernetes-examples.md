# Bash Kubernetes Examples

## Pipe Returned Pattern Into The Next Command

k get all | grep <pattern> | awk '{print $1}' | xargs -I{} kubectl get {}
