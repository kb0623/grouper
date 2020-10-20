# this matches the version you decided on from release notes
ARG GROUPER_VERSION=2.5.XX
 
#  --build-arg GROUPER_VERSION=${VARIABLE_NAME} i2incommon/grouper:${GROUPER_VERSION}
FROM __BASE_CONTAINER__
 
# this will overlay all the files from /opt/grouperContainer/slashRoot on to /
COPY slashRoot /
 
RUN chown -R tomcat:tomcat /opt/grouper \
 && chown -R tomcat:tomcat /opt/tomee