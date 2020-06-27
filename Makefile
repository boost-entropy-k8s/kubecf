########################################################################
# Development

tools-install:
	@./scripts/tools-install.sh

tools-versions:
	@./scripts/tools-versions.sh

version:
	@./scripts/version.sh

update-subcharts:
	@./scripts/update-subcharts.sh

lint: shellcheck yamllint helmlint

helmlint:
	@./scripts/helmlint.sh

shellcheck:
	@./scripts/shellcheck.sh

yamllint:
	@./scripts/yamllint.sh

########################################################################
# Build

kubecf-build:
	@./scripts/kubecf-build.sh

kubecf-bundle:
	@./scripts/kubecf-bundle.sh

########################################################################
# Kube dev environments

kind-start:
	@./scripts/kind-start.sh

kind-delete:
	@./scripts/kind-delete.sh

minikube-start:
	@./scripts/minikube-start.sh

minikube-delete:
	@./scripts/minikube-delete.sh

########################################################################
# Run

cf-login:
	@./scripts/cf-login.sh

cf-operator-apply:
	@./scripts/cf-operator-apply.sh

kubecf-apply:
	@./scripts/kubecf-build.sh
	@./scripts/kubecf-apply.sh

kubecf-delete:
	@./scripts/kubecf-delete.sh

########################################################################
# Test

tests: smoke brain sits cats

acceptance-tests cats:
	@TEST=acceptance ./scripts/test.sh

brain-tests brain:
	@TEST=brain ./scripts/test.sh

smoke-tests smoke:
	@TEST=smoke ./scripts/test.sh

sync-integration-tests sits:
	@TEST=sync-integration ./scripts/test.sh
