FROM image-registry.openshift-image-registry.svc:5000/openshift/java:latest


COPY target/shsingh-4-1.0.jar /deployments/app.jar

# Expose the ports we're interested in
EXPOSE 8080

CMD ["sh", "/opt/jboss/container/java/run/run-java.sh"]
