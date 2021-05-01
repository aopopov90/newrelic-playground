FROM newrelic/infrastructure:latest
ADD newrelic-infra.yml /etc/newrelic-infra.yml
RUN mkdir /var/db/newrelic-infra/custom-integrations
ADD scripts/* /var/db/newrelic-infra/custom-integrations/
ADD scripts/* /var/db/newrelic-infra/newrelic-integrations/
ADD execute-config.yml /etc/newrelic-infra/integrations.d/
ADD execute-definition.yml /var/db/newrelic-infra/newrelic-integrations