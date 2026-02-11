#!/bin/bash
# Entrypoint: fija permisos y arranca WildFly como jboss
chown -R jboss:jboss /opt/jboss/wildfly/standalone/log \
                     /opt/jboss/wildfly/standalone/data \
                     /opt/jboss/wildfly/standalone/deployments

exec su -s /bin/bash jboss -c "/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0"
