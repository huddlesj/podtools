FROM registry.access.redhat.com/ubi8-dev-preview/ubi-minimal

LABEL AUTHOR="William Caban" \
      APP="podtools" \
      DESCRIPTION="Build with UBI8-minimal Dev Preview"

WORKDIR /podtools
ADD utils ./utils/

# install utilities
RUN microdnf -y --nodocs install python2 iputils iproute bind-utils tar &&  microdnf clean all

# Forcing to run as non-root user
USER 1000

CMD ["/bin/sh", "-c","trap : TERM INT; sleep infinity & wait"]

#
# END OF FILE
#
