
KUBECTL_APPLY_F = kubectl apply -f conf/$(@).yaml

TARGETS = application service

all: $(TARGETS)

application:
	$(KUBECTL_APPLY_F)

service:
	$(KUBECTL_APPLY_F)


