FROM loveisall/expensetracker:1.2
MAINTAINER narenn1995@gmail.com
WORKDIR /root/.jenkins/workspace/expensetracker\ pipeline/target/
RUN        mvn compile  && \
           mvn test && \
           mvn clean install
CMD ["java",  "-jar", "ExpenseTracker-Spring-1.0-SNAPSHOT.jar"]
